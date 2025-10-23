import '../../domain/entities/send_otp_entity.dart';
import 'send_otp_dto.dart';

extension SendOtpDtoMapper on SendOtpDto {
  SendOtpEntity toEntity() {
    return SendOtpEntity(
      message: message,
    );
  }
}
