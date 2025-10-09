part of 'register_personal_info_bloc.dart';

@freezed
abstract class RegisterPersonalInfoEvent with _$RegisterPersonalInfoEvent {
  const factory RegisterPersonalInfoEvent.firstNameChanged(String value) =
      _FirstNameChanged;

  const factory RegisterPersonalInfoEvent.lastNameChanged(String value) =
      _LastNameChanged;

  const factory RegisterPersonalInfoEvent.familyCountChanged(String value) =
      _FamilyCountChanged;

  const factory RegisterPersonalInfoEvent.phoneChanged(String value) =
      _PhoneChanged;

  const factory RegisterPersonalInfoEvent.modeChanged(bool isDonor) =
      _ModeChanged;

  const factory RegisterPersonalInfoEvent.submitted() = _Submitted;
}
