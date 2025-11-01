// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complete_profile_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CompleteProfileRequestDto _$CompleteProfileRequestDtoFromJson(
        Map<String, dynamic> json) =>
    _CompleteProfileRequestDto(
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      phoneNumber: json['phone_number'] as String,
      familySize: json['family_size'] as String?,
      address: json['address'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      zipCode: json['zip_code'] as String?,
      affectedEvent: json['affected_event'] as String?,
      statement: json['statement'] as String?,
    );

Map<String, dynamic> _$CompleteProfileRequestDtoToJson(
        _CompleteProfileRequestDto instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'phone_number': instance.phoneNumber,
      'family_size': instance.familySize,
      'address': instance.address,
      'city': instance.city,
      'state': instance.state,
      'zip_code': instance.zipCode,
      'affected_event': instance.affectedEvent,
      'statement': instance.statement,
    };

_CompleteProfileResponseDto _$CompleteProfileResponseDtoFromJson(
        Map<String, dynamic> json) =>
    _CompleteProfileResponseDto(
      success: json['success'] as bool,
      message: json['message'] as String,
      nextStep: json['next_step'] as String,
      user: json['user'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$CompleteProfileResponseDtoToJson(
        _CompleteProfileResponseDto instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'next_step': instance.nextStep,
      'user': instance.user,
    };
