import 'package:freezed_annotation/freezed_annotation.dart';

part 'beneficiary_signup_dto.freezed.dart';
part 'beneficiary_signup_dto.g.dart';

@freezed
abstract class BeneficiarySignupDto with _$BeneficiarySignupDto {
  const factory BeneficiarySignupDto({
    required String message,
  }) = _BeneficiarySignupDto;

  factory BeneficiarySignupDto.fromJson(Map<String, dynamic> json) =>
      _$BeneficiarySignupDtoFromJson(json);
}
