import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_otp_entity.freezed.dart';
part 'send_otp_entity.g.dart';

@freezed
abstract class SendOtpEntity with _$SendOtpEntity {
  const factory SendOtpEntity({
    required String message,
  }) = _SendOtpEntity;

  factory SendOtpEntity.fromJson(Map<String, dynamic> json) =>
      _$SendOtpEntityFromJson(json);
}
