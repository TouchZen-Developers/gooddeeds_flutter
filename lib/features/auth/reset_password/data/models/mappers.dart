import '../../domain/entities/reset_password_entity.dart';
import 'reset_password_dto.dart';

extension ResetPasswordDtoMapper on ResetPasswordDto {
  ResetPasswordEntity toEntity() {
    return ResetPasswordEntity(
      success: success,
      message: message,
    );
  }
}
