part of 'reset_password_bloc.dart';

@freezed
abstract class ResetPasswordState with _$ResetPasswordState {
  const factory ResetPasswordState({
    required String newPassword,
    required String confirmPassword,
    required String verificationToken,
    required bool isSubmitting,
    required bool showErrors,
    String? apiError,
    bool? success,
  }) = _ResetPasswordState;

  factory ResetPasswordState.initial() => const ResetPasswordState(
        newPassword: '',
        confirmPassword: '',
        verificationToken: '',
        isSubmitting: false,
        showErrors: false,
      );
}
