// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VerifyOtpEntity _$VerifyOtpEntityFromJson(Map<String, dynamic> json) =>
    _VerifyOtpEntity(
      success: json['success'] as bool,
      message: json['message'] as String,
      verificationToken: json['verificationToken'] as String,
    );

Map<String, dynamic> _$VerifyOtpEntityToJson(_VerifyOtpEntity instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'verificationToken': instance.verificationToken,
    };
