import 'package:freezed_annotation/freezed_annotation.dart';

part 'logout_response_entity.freezed.dart';
part 'logout_response_entity.g.dart';

@freezed
abstract class LogoutResponseEntity with _$LogoutResponseEntity {
  const factory LogoutResponseEntity({
    required bool success,
    required String message,
  }) = _LogoutResponseEntity;

  factory LogoutResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$LogoutResponseEntityFromJson(json);
}
