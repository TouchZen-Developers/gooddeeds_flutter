// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_otp_dto.freezed.dart';
part 'verify_otp_dto.g.dart';

@freezed
abstract class VerifyOtpDto with _$VerifyOtpDto {
  const factory VerifyOtpDto({
    required bool success,
    required String message,
    @JsonKey(name: 'verification_token') required String verificationToken,
  }) = _VerifyOtpDto;

  factory VerifyOtpDto.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpDtoFromJson(json);
}
