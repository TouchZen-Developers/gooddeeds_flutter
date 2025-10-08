part of 'register_email_bloc.dart';

@freezed
abstract class RegisterEmailState with _$RegisterEmailState {
  const factory RegisterEmailState({
    @Default('') String email,
    @Default('') String password,
    @Default('') String confirmPassword,
    @Default(false) bool isSubmitting,
    @Default(false) bool showErrorMessages,
  }) = _RegisterEmailState;

  factory RegisterEmailState.initial() => const RegisterEmailState();
}
