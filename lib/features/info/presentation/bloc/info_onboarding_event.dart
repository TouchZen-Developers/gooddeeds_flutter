part of 'info_onboarding_bloc.dart';

@freezed
class InfoOnboardingEvent with _$InfoOnboardingEvent {
  const factory InfoOnboardingEvent.started() = _Started;
  const factory InfoOnboardingEvent.pageChanged(int index) = _PageChanged;
  const factory InfoOnboardingEvent.nextPressed() = _NextPressed;
  const factory InfoOnboardingEvent.skipPressed() = _SkipPressed;
  const factory InfoOnboardingEvent.loginPressed() = _LoginPressed;
  const factory InfoOnboardingEvent.registerPressed() = _RegisterPressed;
  const factory InfoOnboardingEvent.finished() = _Finished;
}
