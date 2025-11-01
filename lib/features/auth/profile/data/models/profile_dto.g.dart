// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfileDataDto _$ProfileDataDtoFromJson(Map<String, dynamic> json) =>
    _ProfileDataDto(
      user: ProfileUserDto.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProfileDataDtoToJson(_ProfileDataDto instance) =>
    <String, dynamic>{
      'user': instance.user,
    };

_ProfileUserDto _$ProfileUserDtoFromJson(Map<String, dynamic> json) =>
    _ProfileUserDto(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      email: json['email'] as String,
      role: json['role'] as String,
    );

Map<String, dynamic> _$ProfileUserDtoToJson(_ProfileUserDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'role': instance.role,
    };
