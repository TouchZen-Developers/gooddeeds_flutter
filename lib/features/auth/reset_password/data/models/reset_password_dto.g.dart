// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResetPasswordDto _$ResetPasswordDtoFromJson(Map<String, dynamic> json) =>
    _ResetPasswordDto(
      success: json['success'] as bool,
      message: json['message'] as String,
    );

Map<String, dynamic> _$ResetPasswordDtoToJson(_ResetPasswordDto instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
    };
