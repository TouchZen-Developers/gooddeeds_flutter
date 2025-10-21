import 'package:freezed_annotation/freezed_annotation.dart';

part 'beneficiary_signup_response_entity.freezed.dart';
part 'beneficiary_signup_response_entity.g.dart';

@freezed
abstract class BeneficiarySignupResponseEntity
    with _$BeneficiarySignupResponseEntity {
  const factory BeneficiarySignupResponseEntity({
    required String message,
  }) = _BeneficiarySignupResponseEntity;

  factory BeneficiarySignupResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$BeneficiarySignupResponseEntityFromJson(json);
}
