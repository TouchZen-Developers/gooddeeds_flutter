part of 'verify_email_bloc.dart';

@freezed
class VerifyEmailEvent with _$VerifyEmailEvent {
  const factory VerifyEmailEvent.codeChanged(String value) = _CodeChanged;

  const factory VerifyEmailEvent.emailChanged(String value) = _EmailChanged;

  const factory VerifyEmailEvent.submitted() = _Submitted;

  const factory VerifyEmailEvent.resendPressed() = _ResendPressed;
}
