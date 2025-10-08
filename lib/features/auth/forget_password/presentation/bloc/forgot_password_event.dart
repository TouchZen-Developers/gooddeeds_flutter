part of 'forgot_password_bloc.dart';

@freezed
class ForgotPasswordEvent with _$ForgotPasswordEvent {
  const factory ForgotPasswordEvent.emailChanged(String value) = _EmailChanged;

  const factory ForgotPasswordEvent.submitted() = _Submitted;

  const factory ForgotPasswordEvent.markShowErrors() = _MarkShowErrors;
}
