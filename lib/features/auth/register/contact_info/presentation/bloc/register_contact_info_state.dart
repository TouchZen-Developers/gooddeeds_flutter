part of 'register_contact_info_bloc.dart';

@freezed
abstract class RegisterContactInfoState with _$RegisterContactInfoState {
  const factory RegisterContactInfoState({
    @Default('') String address,
    @Default('+1') String phoneCountryCode,
    @Default('') String phone,
    @Default('') String city,
    @Default('') String stateName,
    @Default('') String zip,
    @Default(false) bool isSubmitting,
    @Default(false) bool showErrors,
    @Default(false) bool completed,
  }) = _RegisterContactInfoState;

  factory RegisterContactInfoState.initial() =>
      const RegisterContactInfoState();
}
