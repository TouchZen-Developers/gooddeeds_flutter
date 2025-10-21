// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_beneficiary_otp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VerifyBeneficiaryOtpDto _$VerifyBeneficiaryOtpDtoFromJson(
        Map<String, dynamic> json) =>
    _VerifyBeneficiaryOtpDto(
      message: json['message'] as String,
      user: UserDto.fromJson(json['user'] as Map<String, dynamic>),
      beneficiary:
          BeneficiaryDto.fromJson(json['beneficiary'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VerifyBeneficiaryOtpDtoToJson(
        _VerifyBeneficiaryOtpDto instance) =>
    <String, dynamic>{
      'message': instance.message,
      'user': instance.user,
      'beneficiary': instance.beneficiary,
    };
