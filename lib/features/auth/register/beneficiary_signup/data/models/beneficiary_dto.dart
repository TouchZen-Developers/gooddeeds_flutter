// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'beneficiary_dto.freezed.dart';
part 'beneficiary_dto.g.dart';

@freezed
abstract class BeneficiaryDto with _$BeneficiaryDto {
  const factory BeneficiaryDto({
    required int id,
    @JsonKey(name: 'family_size') required String familySize,
    required String address,
    required String city,
    required String state,
    @JsonKey(name: 'zip_code') required String zipCode,
    @JsonKey(name: 'affected_event') required String affectedEvent,
    required String statement,
    @JsonKey(name: 'family_photo_url') String? familyPhotoUrl,
  }) = _BeneficiaryDto;

  factory BeneficiaryDto.fromJson(Map<String, dynamic> json) =>
      _$BeneficiaryDtoFromJson(json);
}
