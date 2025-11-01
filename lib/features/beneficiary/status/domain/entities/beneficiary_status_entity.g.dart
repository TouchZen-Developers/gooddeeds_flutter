// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beneficiary_status_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BeneficiaryStatusEntity _$BeneficiaryStatusEntityFromJson(
        Map<String, dynamic> json) =>
    _BeneficiaryStatusEntity(
      success: json['success'] as bool,
      data: BeneficiaryStatusDataEntity.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BeneficiaryStatusEntityToJson(
        _BeneficiaryStatusEntity instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };

_BeneficiaryStatusDataEntity _$BeneficiaryStatusDataEntityFromJson(
        Map<String, dynamic> json) =>
    _BeneficiaryStatusDataEntity(
      user: UserEntity.fromJson(json['user'] as Map<String, dynamic>),
      beneficiary: BeneficiaryEntity.fromJson(
          json['beneficiary'] as Map<String, dynamic>),
      message: json['message'] as String,
    );

Map<String, dynamic> _$BeneficiaryStatusDataEntityToJson(
        _BeneficiaryStatusDataEntity instance) =>
    <String, dynamic>{
      'user': instance.user,
      'beneficiary': instance.beneficiary,
      'message': instance.message,
    };

_UserEntity _$UserEntityFromJson(Map<String, dynamic> json) => _UserEntity(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      phoneNumber: json['phoneNumber'] as String,
      role: json['role'] as String,
    );

Map<String, dynamic> _$UserEntityToJson(_UserEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'role': instance.role,
    };

_BeneficiaryEntity _$BeneficiaryEntityFromJson(Map<String, dynamic> json) =>
    _BeneficiaryEntity(
      id: (json['id'] as num).toInt(),
      status: $enumDecode(_$BeneficiaryStatusEnumMap, json['status']),
      familySize: (json['familySize'] as num).toInt(),
      address: json['address'] as String,
      city: json['city'] as String,
      state: json['state'] as String,
      zipCode: json['zipCode'] as String,
      affectedEvent: json['affectedEvent'] as String,
      statement: json['statement'] as String,
      familyPhotoUrl: json['familyPhotoUrl'] as String?,
      submittedAt: json['submittedAt'] as String,
      processedAt: json['processedAt'] as String?,
    );

Map<String, dynamic> _$BeneficiaryEntityToJson(_BeneficiaryEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': _$BeneficiaryStatusEnumMap[instance.status]!,
      'familySize': instance.familySize,
      'address': instance.address,
      'city': instance.city,
      'state': instance.state,
      'zipCode': instance.zipCode,
      'affectedEvent': instance.affectedEvent,
      'statement': instance.statement,
      'familyPhotoUrl': instance.familyPhotoUrl,
      'submittedAt': instance.submittedAt,
      'processedAt': instance.processedAt,
    };

const _$BeneficiaryStatusEnumMap = {
  BeneficiaryStatus.pending: 'pending',
  BeneficiaryStatus.approved: 'approved',
  BeneficiaryStatus.rejected: 'rejected',
};
