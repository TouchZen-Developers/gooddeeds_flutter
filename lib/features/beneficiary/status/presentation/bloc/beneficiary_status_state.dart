part of 'beneficiary_status_bloc.dart';

@freezed
abstract class BeneficiaryStatusState with _$BeneficiaryStatusState {
  const factory BeneficiaryStatusState.initial() = _Initial;

  const factory BeneficiaryStatusState.loading() = _Loading;

  const factory BeneficiaryStatusState.success(
    BeneficiaryStatusEntity response,
  ) = _Success;

  const factory BeneficiaryStatusState.failure(String message) = _Failure;
}
