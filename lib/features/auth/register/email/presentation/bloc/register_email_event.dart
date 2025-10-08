part of 'register_email_bloc.dart';

@freezed
class RegisterEmailEvent with _$RegisterEmailEvent {
  const factory RegisterEmailEvent.emailChanged(String email) = _EmailChanged;

  const factory RegisterEmailEvent.passwordChanged(String password) =
      _PasswordChanged;

  const factory RegisterEmailEvent.confirmPasswordChanged(
    String confirmPassword,
  ) = _ConfirmPasswordChanged;

  const factory RegisterEmailEvent.submitted() = _Submitted;
}
