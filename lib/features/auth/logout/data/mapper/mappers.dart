import '../models/logout_response_dto.dart';
import '../../domain/entities/logout_response_entity.dart';

extension LogoutResponseDtoX on LogoutResponseDto {
  LogoutResponseEntity toEntity() {
    return LogoutResponseEntity(
      success: success,
      message: message,
    );
  }
}
