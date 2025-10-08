part of 'forgot_password_bloc.dart';

@freezed
abstract class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState({
    required String email,
    required bool isSubmitting,
    required bool showErrors,
    String? emailError,
    bool? success,
  }) = _ForgotPasswordState;

  factory ForgotPasswordState.initial() => const ForgotPasswordState(
        email: '',
        isSubmitting: false,
        showErrors: false,
      );
}
