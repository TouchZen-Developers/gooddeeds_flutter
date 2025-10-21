import '../../domain/entities/verify_signup_otp_entity.dart';
import 'verify_signup_otp_dto.dart';

extension VerifySignupOtpDtoMapper on VerifySignupOtpDto {
  VerifySignupOtpEntity toEntity() {
    return VerifySignupOtpEntity(
      message: message,
    );
  }
}
