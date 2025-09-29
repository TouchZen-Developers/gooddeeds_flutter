part of 'register_email_bloc.dart';

@freezed
class RegisterEmailState with _$RegisterEmailState {
  const factory RegisterEmailState({
    required String email,
    required String password,
    required String confirmPassword,
    required bool isSubmitting,
    required bool showErrorMessages,
  }) = _RegisterEmailState;

  factory RegisterEmailState.initial() => const RegisterEmailState(
    email: '',
    password: '',
    confirmPassword: '',
    isSubmitting: false,
    showErrorMessages: false,
  );
}
