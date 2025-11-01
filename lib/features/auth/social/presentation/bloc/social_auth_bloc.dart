import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gooddeeds/features/auth/profile/domain/usecases/get_profile_usecase.dart';
import 'package:gooddeeds/features/auth/social/domain/entities/complete_profile_entity.dart';
import 'package:gooddeeds/features/auth/social/domain/entities/social_auth_callback_entity.dart';
import 'package:gooddeeds/features/auth/social/domain/usecases/complete_profile_usecase.dart';
import 'package:gooddeeds/shared/data/user_role.dart';
import 'package:gooddeeds/shared/services/secure_storage_service.dart';
import 'package:gooddeeds/src/config/di/injector.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

part 'social_auth_bloc.freezed.dart';
part 'social_auth_event.dart';
part 'social_auth_state.dart';

@injectable
class SocialAuthBloc extends Bloc<SocialAuthEvent, SocialAuthState> {
  SocialAuthBloc(
    this._completeProfileUseCase,
    this._secureStorageService,
    this._getProfileUseCase,
  ) : super(const SocialAuthState.initial()) {
    on<_InitiateGoogleAuth>(_onInitiateGoogleAuth);
    on<_HandleCallback>(_onHandleCallback);
    on<_CompleteProfile>(_onCompleteProfile);
    on<_ResetState>(_onResetState);
  }

  final CompleteProfileUseCase _completeProfileUseCase;
  final SecureStorageService _secureStorageService;
  final GetProfileUseCase _getProfileUseCase;

  // Public helper to reset state when flows are aborted (e.g., deep-link error)
  void resetState() {
    add(const SocialAuthEvent.resetState());
  }

  Future<void> _onResetState(
    _ResetState event,
    Emitter<SocialAuthState> emit,
  ) async {
    emit(const SocialAuthState.initial());
  }

  Future<void> _onInitiateGoogleAuth(
    _InitiateGoogleAuth event,
    Emitter<SocialAuthState> emit,
  ) async {
    try {
      // Open external browser with backend OAuth URL
      const url = 'https://api.gooddeeds.co/api/auth/social/google/redirect';
      final uri = Uri.parse(url);

      emit(const SocialAuthState.awaitingCallback());
      
      // Try launching the URL with different modes as fallback
      bool launched = false;
      
      if (await canLaunchUrl(uri)) {
        launched = await launchUrl(uri, mode: LaunchMode.externalApplication);
      }
      
      if (!launched) {
        // Fallback to platform default if external application failed
        launched = await launchUrl(uri);
      }
      
      if (!launched) {
        emit(const SocialAuthState.failure('Could not launch OAuth URL. Please check your browser settings.'));
      }
    } catch (e) {
      emit(SocialAuthState.failure('Error launching OAuth: ${e.toString()}'));
    }
  }

  Future<void> _onHandleCallback(
    _HandleCallback event,
    Emitter<SocialAuthState> emit,
  ) async {
    try {
      emit(const SocialAuthState.loading());

      // Save token from callback
      await _secureStorageService.saveToken(event.token);

      // Parse next_step and navigate
      final nextStep = SocialAuthNextStep.fromString(event.nextStep);

      if (nextStep == SocialAuthNextStep.completeProfile) {
        // Fetch profile to get user role
        final profileResult = await _getProfileUseCase();
        
        await profileResult.fold(
          (failure) async {
            emit(SocialAuthState.failure('Failed to fetch profile: ${failure.message}'));
          },
          (profile) async {
            // Normalize role and cache it
            final normalizedRole = profile.role == 'beneficiary' ? 'beneficiary' : 'Donorr';
            final prefs = getIt<SharedPreferences>();
            await prefs.setString(kPrefUserRole, normalizedRole);
            
            // Clear pending next step flag since we're handling it now
            await prefs.remove(kPrefPendingNextStep);
            
            // Emit state with role for navigation
            emit(SocialAuthState.needsRoleBasedNavigation(role: normalizedRole));
          },
        );
      } else if (nextStep == SocialAuthNextStep.dashboard) {
        // Clear pending next step flag since we're handling it now
        final prefs = getIt<SharedPreferences>();
        await prefs.remove(kPrefPendingNextStep);
        
        emit(const SocialAuthState.success());
      }
    } catch (e) {
      emit(SocialAuthState.failure('Error handling callback: ${e.toString()}'));
    }
  }

  Future<void> _onCompleteProfile(
    _CompleteProfile event,
    Emitter<SocialAuthState> emit,
  ) async {
    try {
      emit(const SocialAuthState.loading());

      final result = await _completeProfileUseCase(event.profileData);

      result.fold(
        (failure) => emit(SocialAuthState.failure(failure.message)),
        (response) async {
          // Clear pending next step flag since we're handling it now
          final prefs = getIt<SharedPreferences>();
          await prefs.remove(kPrefPendingNextStep);
          
          if (response.nextStep == 'dashboard') {
            // Save success message to SharedPreferences for display in listener
            await prefs.setString('pending_success_message', response.message);
            
            emit(const SocialAuthState.success());
          } else {
            emit(SocialAuthState.failure(
              'Unexpected next step: ${response.nextStep}',
            ),);
          }
        },
      );
    } catch (e) {
      emit(SocialAuthState.failure(
        'Error completing profile: ${e.toString()}',
      ),);
    }
  }
}

