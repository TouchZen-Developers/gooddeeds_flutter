import 'package:freezed_annotation/freezed_annotation.dart';

part 'logout_response_dto.freezed.dart';
part 'logout_response_dto.g.dart';

@freezed
abstract class LogoutResponseDto with _$LogoutResponseDto {
  const factory LogoutResponseDto({
    required bool success,
    required String message,
  }) = _LogoutResponseDto;

  factory LogoutResponseDto.fromJson(Map<String, dynamic> json) =>
      _$LogoutResponseDtoFromJson(json);
}
