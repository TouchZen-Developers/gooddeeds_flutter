part of 'login_bloc.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    required String email,
    required String password,
    required bool showPassword,
    required bool isSubmitting,
    required bool showErrors,
    String? emailError,
    String? passwordError,
    bool? success,
  }) = _LoginState;

  factory LoginState.initial() => const LoginState(
        email: '',
        password: '',
        showPassword: false,
        isSubmitting: false,
        showErrors: false,
      );
}
