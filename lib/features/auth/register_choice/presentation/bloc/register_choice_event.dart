import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_choice_event.freezed.dart';

@freezed
sealed class RegisterChoiceEvent with _$RegisterChoiceEvent {
  const factory RegisterChoiceEvent.needDonationsPressed() =
      _NeedDonationsPressed;
  const factory RegisterChoiceEvent.helpFamiliesPressed() =
      _HelpFamiliesPressed;
  const factory RegisterChoiceEvent.loginPressed() = _LoginPressed;
}
