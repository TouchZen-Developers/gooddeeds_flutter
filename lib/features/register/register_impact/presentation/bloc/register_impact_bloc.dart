import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'register_impact_bloc.freezed.dart';
part 'register_impact_event.dart';
part 'register_impact_state.dart';

@Injectable()
class RegisterImpactBloc
    extends Bloc<RegisterImpactEvent, RegisterImpactState> {
  RegisterImpactBloc() : super(RegisterImpactState.initial()) {
    on<_EventChanged>(
      (e, emit) => emit(state.copyWith(affectedEvent: e.value)),
    );
    on<_StatementChanged>(
      (e, emit) => emit(state.copyWith(statement: e.value)),
    );
    on<_Submitted>((e, emit) async {
      if (!_isValid(state)) {
        emit(state.copyWith(showErrors: true));
        return;
      }
      emit(state.copyWith(isSubmitting: true));
      await Future<void>.delayed(const Duration(milliseconds: 300)); // mock
      emit(state.copyWith(isSubmitting: false, completed: true));
    });
  }

  bool _isValid(RegisterImpactState s) =>
      (s.affectedEvent?.isNotEmpty ?? false) && s.statement.trim().length >= 10;
}
