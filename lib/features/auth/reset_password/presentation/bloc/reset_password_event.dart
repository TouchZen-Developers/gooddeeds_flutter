part of 'reset_password_bloc.dart';

@freezed
class ResetPasswordEvent with _$ResetPasswordEvent {
  const factory ResetPasswordEvent.newPasswordChanged(String value) =
      _NewPasswordChanged;

  const factory ResetPasswordEvent.confirmChanged(String value) =
      _ConfirmChanged;

  const factory ResetPasswordEvent.verificationTokenChanged(String value) =
      _VerificationTokenChanged;

  const factory ResetPasswordEvent.markShowErrors() = _MarkShowErrors;

  const factory ResetPasswordEvent.submitted() = _Submitted;
}
