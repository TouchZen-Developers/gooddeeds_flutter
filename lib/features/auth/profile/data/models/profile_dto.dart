import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_dto.freezed.dart';
part 'profile_dto.g.dart';

@freezed
abstract class ProfileDataDto with _$ProfileDataDto {
  const factory ProfileDataDto({
    required ProfileUserDto user,
  }) = _ProfileDataDto;

  factory ProfileDataDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileDataDtoFromJson(json);
}

@freezed
abstract class ProfileUserDto with _$ProfileUserDto {
  const factory ProfileUserDto({
    required int id,
    required String name,
    required String email,
    required String role,
  }) = _ProfileUserDto;

  factory ProfileUserDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileUserDtoFromJson(json);
}
