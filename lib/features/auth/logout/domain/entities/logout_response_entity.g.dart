// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logout_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LogoutResponseEntity _$LogoutResponseEntityFromJson(
        Map<String, dynamic> json) =>
    _LogoutResponseEntity(
      success: json['success'] as bool,
      message: json['message'] as String,
    );

Map<String, dynamic> _$LogoutResponseEntityToJson(
        _LogoutResponseEntity instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
    };
