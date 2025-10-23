import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_dto.dart';

part 'login_response_dto.freezed.dart';
part 'login_response_dto.g.dart';

@freezed
abstract class LoginResponseDto with _$LoginResponseDto {
  const factory LoginResponseDto({
    required UserDto user,
    required String token,
  }) = _LoginResponseDto;

  factory LoginResponseDto.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseDtoFromJson(json);
}
