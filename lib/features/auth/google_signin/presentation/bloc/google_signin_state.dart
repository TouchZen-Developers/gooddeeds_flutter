part of 'google_signin_bloc.dart';

@freezed
abstract class GoogleSignInState with _$GoogleSignInState {
  const factory GoogleSignInState({
    required bool isLoading,
    required bool isSignedIn,
    GoogleSignInAccount? user,
    String? error,
  }) = _GoogleSignInState;

  factory GoogleSignInState.initial() => const GoogleSignInState(
        isLoading: false,
        isSignedIn: false,
      );
}
