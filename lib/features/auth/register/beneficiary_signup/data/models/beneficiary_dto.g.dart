// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beneficiary_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BeneficiaryDto _$BeneficiaryDtoFromJson(Map<String, dynamic> json) =>
    _BeneficiaryDto(
      id: (json['id'] as num).toInt(),
      familySize: json['family_size'] as String,
      address: json['address'] as String,
      city: json['city'] as String,
      state: json['state'] as String,
      zipCode: json['zip_code'] as String,
      affectedEvent: json['affected_event'] as String,
      statement: json['statement'] as String,
      familyPhotoUrl: json['family_photo_url'] as String?,
    );

Map<String, dynamic> _$BeneficiaryDtoToJson(_BeneficiaryDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'family_size': instance.familySize,
      'address': instance.address,
      'city': instance.city,
      'state': instance.state,
      'zip_code': instance.zipCode,
      'affected_event': instance.affectedEvent,
      'statement': instance.statement,
      'family_photo_url': instance.familyPhotoUrl,
    };
