// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_beneficiary_otp_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VerifyBeneficiaryOtpEntity _$VerifyBeneficiaryOtpEntityFromJson(
        Map<String, dynamic> json) =>
    _VerifyBeneficiaryOtpEntity(
      message: json['message'] as String,
      user: UserEntity.fromJson(json['user'] as Map<String, dynamic>),
      beneficiary: BeneficiaryEntity.fromJson(
          json['beneficiary'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VerifyBeneficiaryOtpEntityToJson(
        _VerifyBeneficiaryOtpEntity instance) =>
    <String, dynamic>{
      'message': instance.message,
      'user': instance.user,
      'beneficiary': instance.beneficiary,
    };
