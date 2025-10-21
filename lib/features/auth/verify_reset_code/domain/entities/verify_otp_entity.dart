import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_otp_entity.freezed.dart';
part 'verify_otp_entity.g.dart';

@freezed
abstract class VerifyOtpEntity with _$VerifyOtpEntity {
  const factory VerifyOtpEntity({
    required String message,
    required String verificationToken,
  }) = _VerifyOtpEntity;

  factory VerifyOtpEntity.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpEntityFromJson(json);
}
