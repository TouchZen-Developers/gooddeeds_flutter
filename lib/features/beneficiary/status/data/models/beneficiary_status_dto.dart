import 'package:freezed_annotation/freezed_annotation.dart';

part 'beneficiary_status_dto.freezed.dart';
part 'beneficiary_status_dto.g.dart';

@freezed
abstract class BeneficiaryStatusDto with _$BeneficiaryStatusDto {
  const factory BeneficiaryStatusDto({
    required bool success,
    required BeneficiaryStatusDataDto data,
  }) = _BeneficiaryStatusDto;

  factory BeneficiaryStatusDto.fromJson(Map<String, dynamic> json) =>
      _$BeneficiaryStatusDtoFromJson(json);
}

@freezed
abstract class BeneficiaryStatusDataDto with _$BeneficiaryStatusDataDto {
  const factory BeneficiaryStatusDataDto({
    required UserDto user,
    required BeneficiaryDto beneficiary,
    required String message,
  }) = _BeneficiaryStatusDataDto;

  factory BeneficiaryStatusDataDto.fromJson(Map<String, dynamic> json) =>
      _$BeneficiaryStatusDataDtoFromJson(json);
}

@freezed
abstract class UserDto with _$UserDto {
  const factory UserDto({
    required int id,
    required String name,
    required String firstName,
    required String lastName,
    required String email,
    required String phoneNumber,
    required String role,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}

@freezed
abstract class BeneficiaryDto with _$BeneficiaryDto {
  const factory BeneficiaryDto({
    required int id,
    required String status,
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
  }) = _BeneficiaryDto;

  factory BeneficiaryDto.fromJson(Map<String, dynamic> json) =>
      _$BeneficiaryDtoFromJson(json);
}
