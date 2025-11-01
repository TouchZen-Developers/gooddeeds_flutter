// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'complete_profile_dto.freezed.dart';
part 'complete_profile_dto.g.dart';

// Request DTO
@freezed
abstract class CompleteProfileRequestDto with _$CompleteProfileRequestDto {
  const factory CompleteProfileRequestDto({
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    @JsonKey(name: 'phone_number') required String phoneNumber,
    @JsonKey(name: 'family_size') String? familySize,
    String? address,
    String? city,
    String? state,
    @JsonKey(name: 'zip_code') String? zipCode,
    @JsonKey(name: 'affected_event') String? affectedEvent,
    String? statement,
  }) = _CompleteProfileRequestDto;

  factory CompleteProfileRequestDto.fromJson(Map<String, dynamic> json) =>
      _$CompleteProfileRequestDtoFromJson(json);
}

// Response DTO
@freezed
abstract class CompleteProfileResponseDto with _$CompleteProfileResponseDto {
  const factory CompleteProfileResponseDto({
    required bool success,
    required String message,
    @JsonKey(name: 'next_step') required String nextStep,
    Map<String, dynamic>? user,
  }) = _CompleteProfileResponseDto;

  factory CompleteProfileResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CompleteProfileResponseDtoFromJson(json);
}
