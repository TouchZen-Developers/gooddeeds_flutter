import 'package:freezed_annotation/freezed_annotation.dart';
import 'beneficiary_entity.dart';
import 'user_entity.dart';

part 'verify_beneficiary_otp_entity.freezed.dart';
part 'verify_beneficiary_otp_entity.g.dart';

@freezed
abstract class VerifyBeneficiaryOtpEntity with _$VerifyBeneficiaryOtpEntity {
  const factory VerifyBeneficiaryOtpEntity({
    required String message,
    required UserEntity user,
    required BeneficiaryEntity beneficiary,
  }) = _VerifyBeneficiaryOtpEntity;

  factory VerifyBeneficiaryOtpEntity.fromJson(Map<String, dynamic> json) =>
      _$VerifyBeneficiaryOtpEntityFromJson(json);
}
