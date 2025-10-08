part of 'register_contact_info_bloc.dart';

@freezed
class RegisterContactInfoEvent with _$RegisterContactInfoEvent {
  const factory RegisterContactInfoEvent.addressChanged(String value) =
      _AddressChanged;

  const factory RegisterContactInfoEvent.phoneChanged(String value) =
      _PhoneChanged;

  const factory RegisterContactInfoEvent.cityChanged(String value) =
      _CityChanged;

  const factory RegisterContactInfoEvent.stateChanged(String value) =
      _StateChanged;

  const factory RegisterContactInfoEvent.zipChanged(String value) = _ZipChanged;

  const factory RegisterContactInfoEvent.submitted() = _Submitted;
}
