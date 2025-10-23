part of 'verify_reset_code_bloc.dart';

@freezed
abstract class VerifyResetCodeState with _$VerifyResetCodeState {
  const factory VerifyResetCodeState({
    required String code,
    required String email,
    required bool isSubmitting,
    required bool isResending,
    required bool showErrors,
    String? apiError,
    String? verificationToken,
    bool? success,
  }) = _VerifyResetCodeState;

  factory VerifyResetCodeState.initial() => const VerifyResetCodeState(
        code: '',
        email: '',
        isSubmitting: false,
        isResending: false,
        showErrors: false,
      );
}
