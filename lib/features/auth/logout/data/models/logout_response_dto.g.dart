// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logout_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LogoutResponseDto _$LogoutResponseDtoFromJson(Map<String, dynamic> json) =>
    _LogoutResponseDto(
      success: json['success'] as bool,
      message: json['message'] as String,
    );

Map<String, dynamic> _$LogoutResponseDtoToJson(_LogoutResponseDto instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
    };
