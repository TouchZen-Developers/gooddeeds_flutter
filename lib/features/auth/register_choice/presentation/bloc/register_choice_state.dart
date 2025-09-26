import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_choice_state.freezed.dart';

@freezed
sealed class RegisterChoiceState with _$RegisterChoiceState {
  const factory RegisterChoiceState.idle() = _Idle;
  const factory RegisterChoiceState.navigate(String route) = _Navigate;
}
