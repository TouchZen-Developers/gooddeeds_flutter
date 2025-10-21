// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beneficiary_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BeneficiaryEntity _$BeneficiaryEntityFromJson(Map<String, dynamic> json) =>
    _BeneficiaryEntity(
      id: (json['id'] as num).toInt(),
      familySize: json['familySize'] as String,
      address: json['address'] as String,
      city: json['city'] as String,
      state: json['state'] as String,
      zipCode: json['zipCode'] as String,
      affectedEvent: json['affectedEvent'] as String,
      statement: json['statement'] as String,
      familyPhotoUrl: json['familyPhotoUrl'] as String?,
    );

Map<String, dynamic> _$BeneficiaryEntityToJson(_BeneficiaryEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'familySize': instance.familySize,
      'address': instance.address,
      'city': instance.city,
      'state': instance.state,
      'zipCode': instance.zipCode,
      'affectedEvent': instance.affectedEvent,
      'statement': instance.statement,
      'familyPhotoUrl': instance.familyPhotoUrl,
    };
