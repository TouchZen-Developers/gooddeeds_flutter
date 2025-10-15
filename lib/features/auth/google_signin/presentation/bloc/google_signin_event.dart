part of 'google_signin_bloc.dart';

@freezed
sealed class GoogleSignInEvent with _$GoogleSignInEvent {
  const factory GoogleSignInEvent.signInWithGoogle() = _SignInWithGoogle;

  const factory GoogleSignInEvent.signOut() = _SignOut;

  const factory GoogleSignInEvent.checkSignInStatus() = _CheckSignInStatus;
}
