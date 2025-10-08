part of 'reset_password_bloc.dart';

@freezed
abstract class ResetPasswordState with _$ResetPasswordState {
  const factory ResetPasswordState({
    required String newPassword,
    required String confirmPassword,
    required bool isSubmitting,
    required bool showErrors,
    bool? success,
  }) = _ResetPasswordState;

  factory ResetPasswordState.initial() => const ResetPasswordState(
        newPassword: '',
        confirmPassword: '',
        isSubmitting: false,
        showErrors: false,
      );
}
