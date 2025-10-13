import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gooddeeds/shared/services/google_signin_service.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

part 'google_signin_bloc.freezed.dart';
part 'google_signin_event.dart';
part 'google_signin_state.dart';

@injectable
class GoogleSignInBloc extends Bloc<GoogleSignInEvent, GoogleSignInState> {
  GoogleSignInBloc(this._googleSignInService)
      : super(GoogleSignInState.initial()) {
    on<_SignInWithGoogle>(_onSignInWithGoogle);
    on<_SignOut>(_onSignOut);
    on<_CheckSignInStatus>(_onCheckSignInStatus);
  }

  final GoogleSignInService _googleSignInService;

  Future<void> _onSignInWithGoogle(
    _SignInWithGoogle event,
    Emitter<GoogleSignInState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoading: true,
        error: null,
      ),
    );

    try {
      final GoogleSignInAccount? account = await _googleSignInService.signIn();

      if (account != null) {
        emit(
          state.copyWith(
            isLoading: false,
            isSignedIn: true,
            user: account,
            error: null,
          ),
        );
      } else {
        emit(
          state.copyWith(
            isLoading: false,
            isSignedIn: false,
            user: null,
            error: 'Sign in cancelled by user',
          ),
        );
      }
    } catch (error) {
      emit(
        state.copyWith(
          isLoading: false,
          isSignedIn: false,
          user: null,
          error: error.toString(),
        ),
      );
    }
  }

  Future<void> _onSignOut(
    _SignOut event,
    Emitter<GoogleSignInState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoading: true,
        error: null,
      ),
    );

    try {
      await _googleSignInService.signOut();
      emit(
        state.copyWith(
          isLoading: false,
          isSignedIn: false,
          user: null,
          error: null,
        ),
      );
    } catch (error) {
      emit(
        state.copyWith(
          isLoading: false,
          error: error.toString(),
        ),
      );
    }
  }

  Future<void> _onCheckSignInStatus(
    _CheckSignInStatus event,
    Emitter<GoogleSignInState> emit,
  ) async {
    try {
      final isSignedIn = await _googleSignInService.isSignedIn();
      final currentUser = await _googleSignInService.getCurrentUser();

      emit(
        state.copyWith(
          isSignedIn: isSignedIn,
          user: currentUser,
          error: null,
        ),
      );
    } catch (error) {
      emit(
        state.copyWith(
          isSignedIn: false,
          user: null,
          error: error.toString(),
        ),
      );
    }
  }
}
