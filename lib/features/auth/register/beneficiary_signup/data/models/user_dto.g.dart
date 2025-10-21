// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserDto _$UserDtoFromJson(Map<String, dynamic> json) => _UserDto(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      email: json['email'] as String,
      phoneNumber: json['phone_number'] as String,
      role: json['role'] as String,
    );

Map<String, dynamic> _$UserDtoToJson(_UserDto instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'phone_number': instance.phoneNumber,
      'role': instance.role,
    };
