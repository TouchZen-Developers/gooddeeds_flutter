// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginResponseEntity _$LoginResponseEntityFromJson(Map<String, dynamic> json) =>
    _LoginResponseEntity(
      user: UserEntity.fromJson(json['user'] as Map<String, dynamic>),
      token: json['token'] as String,
    );

Map<String, dynamic> _$LoginResponseEntityToJson(
        _LoginResponseEntity instance) =>
    <String, dynamic>{
      'user': instance.user,
      'token': instance.token,
    };
