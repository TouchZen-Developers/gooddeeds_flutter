part of 'register_impact_bloc.dart';

@freezed
class RegisterImpactEvent with _$RegisterImpactEvent {
  const factory RegisterImpactEvent.eventChanged(String? value) = _EventChanged;
  const factory RegisterImpactEvent.statementChanged(String value) =
      _StatementChanged;
  const factory RegisterImpactEvent.submitted() = _Submitted;
}
