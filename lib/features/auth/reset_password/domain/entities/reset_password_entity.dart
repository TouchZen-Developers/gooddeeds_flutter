import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password_entity.freezed.dart';
part 'reset_password_entity.g.dart';

@freezed
abstract class ResetPasswordEntity with _$ResetPasswordEntity {
  const factory ResetPasswordEntity({
    required bool success,
    required String message,
  }) = _ResetPasswordEntity;

  factory ResetPasswordEntity.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordEntityFromJson(json);
}
