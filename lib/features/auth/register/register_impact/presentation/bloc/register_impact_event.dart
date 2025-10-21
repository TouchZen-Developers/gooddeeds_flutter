part of 'register_impact_bloc.dart';

@freezed
abstract class RegisterImpactEvent with _$RegisterImpactEvent {
  const factory RegisterImpactEvent.loadEvents() = _LoadEvents;
  const factory RegisterImpactEvent.eventChanged(String? value) = _EventChanged;

  const factory RegisterImpactEvent.statementChanged(String value) =
      _StatementChanged;

  const factory RegisterImpactEvent.showErrors() = _ShowErrors;

  const factory RegisterImpactEvent.submitted({
    required String email,
    required String password,
    required String passwordConfirmation,
    required String firstName,
    required String lastName,
    required String familySize,
    required String phoneNumber,
    required String address,
    required String city,
    required String state,
    required String zipCode,
    String? familyPhotoPath,
  }) = _Submitted;
}
