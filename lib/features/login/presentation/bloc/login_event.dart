part of 'login_bloc.dart';

@freezed
sealed class LoginEvent with _$LoginEvent {
  const factory LoginEvent.emailChanged(String value) = _EmailChanged;

  const factory LoginEvent.passwordChanged(String value) = _PasswordChanged;

  const factory LoginEvent.togglePassword() = _TogglePassword;

  const factory LoginEvent.clearErrors() = _ClearErrors;

  const factory LoginEvent.submitted() = _Submitted;
}
