// register_personal_info_state.dart
part of 'register_personal_info_bloc.dart';

@freezed
abstract class RegisterPersonalInfoState with _$RegisterPersonalInfoState {
  const factory RegisterPersonalInfoState({
    @Default('') String firstName,
    @Default('') String lastName,
    String? familyCount,
    @Default('') String phone,
    @Default(false) bool isDonorFlow,
    @Default(false) bool isSubmitting,
    @Default(false) bool showErrors,
    @Default(false) bool completed,
  }) = _RegisterPersonalInfoState;

  factory RegisterPersonalInfoState.initial() =>
      const RegisterPersonalInfoState();
}
