import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_entity.dart';

part 'login_response_entity.freezed.dart';
part 'login_response_entity.g.dart';

@freezed
abstract class LoginResponseEntity with _$LoginResponseEntity {
  const factory LoginResponseEntity({
    required UserEntity user,
    required String token,
  }) = _LoginResponseEntity;

  factory LoginResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseEntityFromJson(json);
}
