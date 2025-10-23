part of 'verify_email_bloc.dart';

@freezed
abstract class VerifyEmailState with _$VerifyEmailState {
  const factory VerifyEmailState({
    required String code,
    required String email,
    required bool isSubmitting,
    required bool isResending,
    required bool showErrors,
    bool? success,
  }) = _VerifyEmailState;

  factory VerifyEmailState.initial() => const VerifyEmailState(
        code: '',
        email: '',
        isSubmitting: false,
        isResending: false,
        showErrors: false,
      );
}
