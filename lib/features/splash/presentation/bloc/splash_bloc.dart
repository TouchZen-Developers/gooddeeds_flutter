import 'dart:developer' as developer;

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gooddeeds/shared/data/user_role.dart';
import 'package:gooddeeds/shared/services/secure_storage_service.dart';
import 'package:gooddeeds/src/config/di/injector.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../auth/profile/domain/usecases/get_profile_usecase.dart';

part 'splash_bloc.freezed.dart';
part 'splash_event.dart';
part 'splash_state.dart';

@Injectable()
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc(
    this._secureStorageService,
    this._getProfileUseCase,
  ) : super(const SplashState.initial()) {
    on<_Started>(_onStarted);
  }

  final SecureStorageService _secureStorageService;
  final GetProfileUseCase _getProfileUseCase;

  Future<void> _onStarted(
    _Started e,
    Emitter<SplashState> emit,
  ) async {
    developer.log('Splash: _onStarted called');
    developer.log('Splash: Current state: $state');

    emit(const SplashState.loading());

    // Check if we're handling a deep link callback
    // If so, don't fetch profile here - let SocialAuthBloc handle it
    final prefs = getIt<SharedPreferences>();
    final pendingNextStep = prefs.getString(kPrefPendingNextStep);
    final isHandlingDeepLink =
        pendingNextStep != null && pendingNextStep.isNotEmpty;

    developer.log(
        'Splash: Handling deep link callback: $isHandlingDeepLink (next_step: $pendingNextStep)');

    // Check if user has token
    developer.log('Splash: Checking if user is logged in');
    final hasToken = await _secureStorageService.isLoggedIn();
    developer.log('Splash: User has token: $hasToken');

    // If logged in and NOT handling deep link callback, fetch profile to cache role
    // If handling deep link, skip profile fetch to avoid duplicate calls
    if (hasToken && !isHandlingDeepLink) {
      try {
        developer.log('Splash: Fetching profile to cache user role');
        final prefs = getIt<SharedPreferences>();
        final res = await _getProfileUseCase();

        developer.log('Splash: Profile fetch completed');
        res.fold(
          (failure) {
            developer.log('Splash: Profile fetch failed: ${failure.message}');
          },
          (user) async {
            developer
                .log('Splash: Profile fetch succeeded for user: ${user.email}');
            final normalized =
                user.role == 'beneficiary' ? 'beneficiary' : 'Donorr';
            developer.log('Splash: Caching user role: $normalized');
            await prefs.setString(kPrefUserRole, normalized);
          },
        );
      } catch (e) {
        developer.log('Splash: Exception occurred while fetching profile: $e');
      }
    }

    // Only emit authenticated if we're NOT handling deep link callback
    // SocialAuthBloc will handle navigation in that case
    if (hasToken && !isHandlingDeepLink) {
      developer
          .log('Splash: User is authenticated, emitting authenticated state');
      emit(const SplashState.authenticated());
    } else if (!hasToken) {
      developer.log(
          'Splash: User is not authenticated, emitting unauthenticated state');
      emit(const SplashState.unauthenticated());
    } else {
      developer.log(
          'Splash: Handling deep link callback, waiting for SocialAuthBloc');
      // Don't emit any state - let SocialAuthBloc handle navigation
    }
  }
}
