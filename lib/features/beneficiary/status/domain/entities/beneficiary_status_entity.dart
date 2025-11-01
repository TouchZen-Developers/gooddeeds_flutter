import 'package:freezed_annotation/freezed_annotation.dart';

part 'beneficiary_status_entity.freezed.dart';
part 'beneficiary_status_entity.g.dart';

enum BeneficiaryStatus { pending, approved, rejected }

@freezed
abstract class BeneficiaryStatusEntity with _$BeneficiaryStatusEntity {
  const factory BeneficiaryStatusEntity({
    required bool success,
    required BeneficiaryStatusDataEntity data,
  }) = _BeneficiaryStatusEntity;

  factory BeneficiaryStatusEntity.fromJson(Map<String, dynamic> json) =>
      _$BeneficiaryStatusEntityFromJson(json);
}

@freezed
abstract class BeneficiaryStatusDataEntity with _$BeneficiaryStatusDataEntity {
  const factory BeneficiaryStatusDataEntity({
    required UserEntity user,
    required BeneficiaryEntity beneficiary,
    required String message,
  }) = _BeneficiaryStatusDataEntity;

  factory BeneficiaryStatusDataEntity.fromJson(Map<String, dynamic> json) =>
      _$BeneficiaryStatusDataEntityFromJson(json);
}

@freezed
abstract class UserEntity with _$UserEntity {
  const factory UserEntity({
    required int id,
    required String name,
    required String firstName,
    required String lastName,
    required String email,
    required String phoneNumber,
    required String role,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);
}

@freezed
abstract class BeneficiaryEntity with _$BeneficiaryEntity {
  const factory BeneficiaryEntity({
    required int id,
    required BeneficiaryStatus status,
    required int familySize,
    required String address,
    required String city,
    required String state,
    required String zipCode,
    required String affectedEvent,
    required String statement,
    String? familyPhotoUrl,
    required String submittedAt,
    String? processedAt,
  }) = _BeneficiaryEntity;

  factory BeneficiaryEntity.fromJson(Map<String, dynamic> json) =>
      _$BeneficiaryEntityFromJson(json);
}
