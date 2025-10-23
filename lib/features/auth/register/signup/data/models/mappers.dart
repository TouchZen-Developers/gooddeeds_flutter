import '../../domain/entities/signup_response_entity.dart';
import 'signup_dto.dart';

extension SignupDtoMapper on SignupDto {
  SignupResponseEntity toEntity() {
    return SignupResponseEntity(
      message: message,
    );
  }
}
