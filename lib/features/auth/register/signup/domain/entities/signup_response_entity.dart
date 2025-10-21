import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_response_entity.freezed.dart';
part 'signup_response_entity.g.dart';

@freezed
abstract class SignupResponseEntity with _$SignupResponseEntity {
  const factory SignupResponseEntity({
    required String message,
  }) = _SignupResponseEntity;

  factory SignupResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$SignupResponseEntityFromJson(json);
}
