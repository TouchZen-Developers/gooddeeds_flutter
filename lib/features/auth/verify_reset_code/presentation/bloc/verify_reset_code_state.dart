part of 'verify_reset_code_bloc.dart';

@freezed
abstract class VerifyResetCodeState with _$VerifyResetCodeState {
  const factory VerifyResetCodeState({
    required String code,
    required bool isSubmitting,
    required bool isResending,
    required bool showErrors,
    bool? success,
  }) = _VerifyResetCodeState;

  factory VerifyResetCodeState.initial() => const VerifyResetCodeState(
        code: '',
        isSubmitting: false,
        isResending: false,
        showErrors: false,
      );
}
