// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beneficiary_status_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BeneficiaryStatusDto _$BeneficiaryStatusDtoFromJson(
        Map<String, dynamic> json) =>
    _BeneficiaryStatusDto(
      success: json['success'] as bool,
      data: BeneficiaryStatusDataDto.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BeneficiaryStatusDtoToJson(
        _BeneficiaryStatusDto instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };

_BeneficiaryStatusDataDto _$BeneficiaryStatusDataDtoFromJson(
        Map<String, dynamic> json) =>
    _BeneficiaryStatusDataDto(
      user: UserDto.fromJson(json['user'] as Map<String, dynamic>),
      beneficiary:
          BeneficiaryDto.fromJson(json['beneficiary'] as Map<String, dynamic>),
      message: json['message'] as String,
    );

Map<String, dynamic> _$BeneficiaryStatusDataDtoToJson(
        _BeneficiaryStatusDataDto instance) =>
    <String, dynamic>{
      'user': instance.user,
      'beneficiary': instance.beneficiary,
      'message': instance.message,
    };

_UserDto _$UserDtoFromJson(Map<String, dynamic> json) => _UserDto(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      phoneNumber: json['phoneNumber'] as String,
      role: json['role'] as String,
    );

Map<String, dynamic> _$UserDtoToJson(_UserDto instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'role': instance.role,
    };

_BeneficiaryDto _$BeneficiaryDtoFromJson(Map<String, dynamic> json) =>
    _BeneficiaryDto(
      id: (json['id'] as num).toInt(),
      status: json['status'] as String,
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

Map<String, dynamic> _$BeneficiaryDtoToJson(_BeneficiaryDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
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
