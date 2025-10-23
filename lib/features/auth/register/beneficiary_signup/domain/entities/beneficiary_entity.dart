import 'package:freezed_annotation/freezed_annotation.dart';

part 'beneficiary_entity.freezed.dart';
part 'beneficiary_entity.g.dart';

@freezed
abstract class BeneficiaryEntity with _$BeneficiaryEntity {
  const factory BeneficiaryEntity({
    required int id,
    required String familySize,
    required String address,
    required String city,
    required String state,
    required String zipCode,
    required String affectedEvent,
    required String statement,
    String? familyPhotoUrl,
  }) = _BeneficiaryEntity;

  factory BeneficiaryEntity.fromJson(Map<String, dynamic> json) =>
      _$BeneficiaryEntityFromJson(json);
}
