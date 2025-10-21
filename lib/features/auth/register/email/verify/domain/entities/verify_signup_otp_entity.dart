import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_signup_otp_entity.freezed.dart';
part 'verify_signup_otp_entity.g.dart';

@freezed
abstract class VerifySignupOtpEntity with _$VerifySignupOtpEntity {
  const factory VerifySignupOtpEntity({
    required String message,
  }) = _VerifySignupOtpEntity;

  factory VerifySignupOtpEntity.fromJson(Map<String, dynamic> json) =>
      _$VerifySignupOtpEntityFromJson(json);
}
