import '../../domain/entities/profile_entity.dart';
import 'profile_dto.dart';

extension ProfileUserDtoX on ProfileUserDto {
  ProfileUserEntity toEntity() => ProfileUserEntity(
        id: id,
        name: name,
        email: email,
        role: role,
      );
}




