// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'social_auth_callback_dto.freezed.dart';
part 'social_auth_callback_dto.g.dart';

@freezed
abstract class SocialAuthCallbackDto with _$SocialAuthCallbackDto {
  const factory SocialAuthCallbackDto({
    required String token,
    @JsonKey(name: 'next_step') required String nextStep,
    Map<String, dynamic>? user,
  }) = _SocialAuthCallbackDto;

  factory SocialAuthCallbackDto.fromJson(Map<String, dynamic> json) =>
      _$SocialAuthCallbackDtoFromJson(json);
}
