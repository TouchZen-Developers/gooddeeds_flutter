// register_personal_info_bloc.dart
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_personal_info_bloc.freezed.dart';
part 'register_personal_info_event.dart';
part 'register_personal_info_state.dart';

class RegisterPersonalInfoBloc
    extends Bloc<RegisterPersonalInfoEvent, RegisterPersonalInfoState> {
  RegisterPersonalInfoBloc() : super(RegisterPersonalInfoState.initial()) {
    on<_FirstNameChanged>((e, emit) {
      emit(state.copyWith(firstName: e.value));
    });
    on<_LastNameChanged>((e, emit) {
      emit(state.copyWith(lastName: e.value));
    });
    on<_FamilyCountChanged>((e, emit) {
      final v = e.value;
      final digitsOnly = v.replaceAll(RegExp(r'[^0-9]'), '');
      emit(state.copyWith(familyCount: digitsOnly));
    });
    on<_Submitted>((e, emit) async {
      final valid = _isValid(state);
      if (!valid) {
        emit(state.copyWith(showErrors: true));
        return;
      }
      emit(state.copyWith(isSubmitting: true));
      await Future<void>.delayed(const Duration(milliseconds: 400)); // mock
      emit(state.copyWith(isSubmitting: false, completed: true));
    });
  }

  bool _isValid(RegisterPersonalInfoState s) {
    final fam = int.tryParse(s.familyCount ?? '') ?? 0;
    return s.firstName.trim().isNotEmpty &&
        s.lastName.trim().isNotEmpty &&
        fam > 0;
  }
}
