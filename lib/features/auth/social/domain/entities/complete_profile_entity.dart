import 'package:freezed_annotation/freezed_annotation.dart';

part 'complete_profile_entity.freezed.dart';

// Request Entity
@freezed
abstract class CompleteProfileRequestEntity
    with _$CompleteProfileRequestEntity {
  const factory CompleteProfileRequestEntity({
    required String firstName,
    required String lastName,
    required String phoneNumber,
    String? familySize,
    String? address,
    String? city,
    String? state,
    String? zipCode,
    String? affectedEvent,
    String? statement,
  }) = _CompleteProfileRequestEntity;
}

// Response Entity
@freezed
abstract class CompleteProfileResponseEntity
    with _$CompleteProfileResponseEntity {
  const factory CompleteProfileResponseEntity({
    required bool success,
    required String message,
    required String nextStep,
    Map<String, dynamic>? user,
  }) = _CompleteProfileResponseEntity;
}
