import '../../domain/entities/login_response_entity.dart';
import '../../domain/entities/user_entity.dart';
import '../models/login_response_dto.dart';
import '../models/user_dto.dart';

extension UserDtoMapper on UserDto {
  UserEntity toEntity() {
    return UserEntity(
      id: id,
      name: name,
      email: email,
      role: role,
    );
  }
}

extension LoginResponseDtoMapper on LoginResponseDto {
  LoginResponseEntity toEntity() {
    return LoginResponseEntity(
      user: user.toEntity(),
      token: token,
    );
  }
}
