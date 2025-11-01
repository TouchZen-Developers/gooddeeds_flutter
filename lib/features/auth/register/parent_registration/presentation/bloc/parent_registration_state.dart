part of 'parent_registration_bloc.dart';

@freezed
abstract class ParentRegistrationState with _$ParentRegistrationState {
  const factory ParentRegistrationState({
    // Email data
    @Default('') String email,
    @Default('') String password,
    @Default('') String passwordConfirmation,

    // Personal info
    @Default('') String firstName,
    @Default('') String lastName,
    @Default('') String familySize,

    // Contact info
    @Default('') String phoneNumber,
    @Default('') String address,
    @Default('') String city,
    @Default('') String state,
    @Default('') String zipCode,

    // Family photo
    String? familyPhotoPath,

    // Impact info
    @Default('') String affectedEvent,
    @Default('') String statement,

    // Submission state
    @Default(false) bool isSubmitting,
    bool? success,
    String? apiError,
  }) = _ParentRegistrationState;

  factory ParentRegistrationState.initial() => const ParentRegistrationState();
}




