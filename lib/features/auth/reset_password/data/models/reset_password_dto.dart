// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password_dto.freezed.dart';
part 'reset_password_dto.g.dart';

@freezed
abstract class ResetPasswordDto with _$ResetPasswordDto {
  const factory ResetPasswordDto({
    required bool success,
    required String message,
  }) = _ResetPasswordDto;

  factory ResetPasswordDto.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordDtoFromJson(json);
}
