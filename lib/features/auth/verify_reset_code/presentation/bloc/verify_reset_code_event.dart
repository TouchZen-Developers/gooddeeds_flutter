part of 'verify_reset_code_bloc.dart';

@freezed
class VerifyResetCodeEvent with _$VerifyResetCodeEvent {
  const factory VerifyResetCodeEvent.codeChanged(String value) = _CodeChanged;

  const factory VerifyResetCodeEvent.emailChanged(String value) = _EmailChanged;

  const factory VerifyResetCodeEvent.resendPressed() = _ResendPressed;

  const factory VerifyResetCodeEvent.submitted() = _Submitted;
}
