import '../../domain/entities/verify_otp_entity.dart';
import 'verify_otp_dto.dart';

extension VerifyOtpDtoMapper on VerifyOtpDto {
  VerifyOtpEntity toEntity() {
    return VerifyOtpEntity(
      success: success,
      message: message,
      verificationToken: verificationToken,
    );
  }
}
