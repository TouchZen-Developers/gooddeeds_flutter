// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResetPasswordEntity _$ResetPasswordEntityFromJson(Map<String, dynamic> json) =>
    _ResetPasswordEntity(
      success: json['success'] as bool,
      message: json['message'] as String,
    );

Map<String, dynamic> _$ResetPasswordEntityToJson(
        _ResetPasswordEntity instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
    };
