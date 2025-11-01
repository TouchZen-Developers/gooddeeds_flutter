part of 'beneficiary_status_bloc.dart';

@freezed
sealed class BeneficiaryStatusEvent with _$BeneficiaryStatusEvent {
  const factory BeneficiaryStatusEvent.getBeneficiaryStatus() =
      _GetBeneficiaryStatus;
}
