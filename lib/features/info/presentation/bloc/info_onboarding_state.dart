part of 'info_onboarding_bloc.dart';

@freezed
abstract class InfoOnboardingBlocState with _$InfoOnboardingBlocState {
  const factory InfoOnboardingBlocState({
    @Default(0) int pageIndex,
    @Default(kTotalPages) int totalPages,
    String? navigateTo,
  }) = _InfoOnboardingBlocState;

  factory InfoOnboardingBlocState.initial() =>
      const InfoOnboardingBlocState(pageIndex: 0, totalPages: kTotalPages);
}

extension InfoOnboardingX on InfoOnboardingBlocState {
  bool get isLast => pageIndex >= totalPages - 1;
}
