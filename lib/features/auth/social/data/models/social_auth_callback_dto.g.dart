// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_auth_callback_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SocialAuthCallbackDto _$SocialAuthCallbackDtoFromJson(
        Map<String, dynamic> json) =>
    _SocialAuthCallbackDto(
      token: json['token'] as String,
      nextStep: json['next_step'] as String,
      user: json['user'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$SocialAuthCallbackDtoToJson(
        _SocialAuthCallbackDto instance) =>
    <String, dynamic>{
      'token': instance.token,
      'next_step': instance.nextStep,
      'user': instance.user,
    };
