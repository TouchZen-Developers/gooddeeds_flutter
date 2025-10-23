import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_signup_otp_dto.freezed.dart';
part 'verify_signup_otp_dto.g.dart';

@freezed
abstract class VerifySignupOtpDto with _$VerifySignupOtpDto {
  const factory VerifySignupOtpDto({
    required String message,
  }) = _VerifySignupOtpDto;

  factory VerifySignupOtpDto.fromJson(Map<String, dynamic> json) =>
      _$VerifySignupOtpDtoFromJson(json);
}
