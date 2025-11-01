import 'package:freezed_annotation/freezed_annotation.dart';

import 'beneficiary_dto.dart';
import 'user_dto.dart';

part 'verify_beneficiary_otp_dto.freezed.dart';
part 'verify_beneficiary_otp_dto.g.dart';

@freezed
abstract class VerifyBeneficiaryOtpDto with _$VerifyBeneficiaryOtpDto {
  const factory VerifyBeneficiaryOtpDto({
    required String message,
    required UserDto user,
    required BeneficiaryDto beneficiary,
  }) = _VerifyBeneficiaryOtpDto;

  factory VerifyBeneficiaryOtpDto.fromJson(Map<String, dynamic> json) =>
      _$VerifyBeneficiaryOtpDtoFromJson(json);
}




