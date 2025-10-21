import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_dto.freezed.dart';
part 'signup_dto.g.dart';

@freezed
abstract class SignupDto with _$SignupDto {
  const factory SignupDto({
    required String message,
  }) = _SignupDto;

  factory SignupDto.fromJson(Map<String, dynamic> json) =>
      _$SignupDtoFromJson(json);
}
