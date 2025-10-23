part of 'parent_registration_bloc.dart';

@freezed
abstract class ParentRegistrationEvent with _$ParentRegistrationEvent {
  const factory ParentRegistrationEvent.setEmailData({
    required String email,
    required String password,
    required String passwordConfirmation,
  }) = _SetEmailData;

  const factory ParentRegistrationEvent.setPersonalInfo({
    required String firstName,
    required String lastName,
    required String familySize,
  }) = _SetPersonalInfo;

  const factory ParentRegistrationEvent.setContactInfo({
    required String phoneNumber,
    required String address,
    required String city,
    required String state,
    required String zipCode,
  }) = _SetContactInfo;

  const factory ParentRegistrationEvent.setFamilyPhoto({
    required String photoPath,
  }) = _SetFamilyPhoto;

  const factory ParentRegistrationEvent.setImpactInfo({
    required String affectedEvent,
    required String statement,
  }) = _SetImpactInfo;

  const factory ParentRegistrationEvent.submitRegistration() =
      _SubmitRegistration;

  const factory ParentRegistrationEvent.clearData() = _ClearData;
}
