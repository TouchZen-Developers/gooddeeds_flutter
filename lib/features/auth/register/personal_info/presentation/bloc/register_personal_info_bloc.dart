import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gooddeeds/shared/design_system/utils/validators.dart';
import 'package:injectable/injectable.dart';

part 'register_personal_info_bloc.freezed.dart';
part 'register_personal_info_event.dart';
part 'register_personal_info_state.dart';

@Injectable()
class RegisterPersonalInfoBloc
    extends Bloc<RegisterPersonalInfoEvent, RegisterPersonalInfoState> {
  RegisterPersonalInfoBloc() : super(RegisterPersonalInfoState.initial()) {
    on<_FirstNameChanged>((e, emit) {
      emit(state.copyWith(firstName: e.value));
    });
    on<_LastNameChanged>((e, emit) {
      emit(state.copyWith(lastName: e.value, completed: false));
    });
    on<_FamilyCountChanged>((e, emit) {
      final cleaned = e.value.digitsOnly;
      emit(state.copyWith(familyCount: cleaned, completed: false));
    });
    on<_ModeChanged>((e, emit) {
      emit(
        state.copyWith(
          isDonorFlow: e.isDonor,
          showErrors: false,
          completed: false,
        ),
      );
    });

    on<_PhoneChanged>(
      (e, emit) => emit(state.copyWith(phone: e.value, completed: false)),
    );
    on<_Submitted>((e, emit) async {
      final valid = _isValid(state);
      if (!valid) {
        emit(state.copyWith(isSubmitting: false));
        emit(state.copyWith(showErrors: true));
        return;
      }
      emit(state.copyWith(isSubmitting: true));
      emit(state.copyWith(isSubmitting: false, completed: true));
    });
  }

  bool _isValid(RegisterPersonalInfoState s) {
    final hasNames =
        s.firstName.trim().isNotEmpty && s.lastName.trim().isNotEmpty;

    if (s.isDonorFlow) {
      return hasNames && s.phone.trim().isValidUSPhone;
    } else {
      final fam = int.tryParse(s.familyCount ?? '') ?? 0;
      return hasNames && fam > 0;
    }
  }
}
