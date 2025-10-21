// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VerifyOtpDto _$VerifyOtpDtoFromJson(Map<String, dynamic> json) =>
    _VerifyOtpDto(
      message: json['message'] as String,
      verificationToken: json['verification_token'] as String,
    );

Map<String, dynamic> _$VerifyOtpDtoToJson(_VerifyOtpDto instance) =>
    <String, dynamic>{
      'message': instance.message,
      'verification_token': instance.verificationToken,
    };
