part of 'register_impact_bloc.dart';

@freezed
abstract class RegisterImpactState with _$RegisterImpactState {
  const factory RegisterImpactState({
    String? affectedEvent,
    @Default('') String statement,
    @Default(false) bool showErrors,
    @Default(false) bool isSubmitting,
    @Default(false) bool completed,
  }) = _RegisterImpactState;

  factory RegisterImpactState.initial() => const RegisterImpactState();
}
