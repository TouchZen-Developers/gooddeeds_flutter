import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_contact_info_bloc.freezed.dart';
part 'register_contact_info_event.dart';
part 'register_contact_info_state.dart';

class RegisterContactInfoBloc
    extends Bloc<RegisterContactInfoEvent, RegisterContactInfoState> {
  RegisterContactInfoBloc() : super(RegisterContactInfoState.initial()) {
    on<_AddressChanged>((e, emit) => emit(state.copyWith(address: e.value)));
    on<_PhoneChanged>((e, emit) => emit(state.copyWith(phone: e.value)));
    on<_CityChanged>((e, emit) => emit(state.copyWith(city: e.value)));
    on<_StateChanged>((e, emit) => emit(state.copyWith(stateName: e.value)));
    on<_ZipChanged>((e, emit) => emit(state.copyWith(zip: e.value)));

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

  bool _isValid(RegisterContactInfoState s) {
    final phoneDigits = s.phone.replaceAll(RegExp(r'[^0-9]'), '');
    final zipDigits = s.zip.replaceAll(RegExp(r'[^0-9]'), '');
    return s.address.trim().isNotEmpty &&
        s.city.trim().isNotEmpty &&
        s.stateName.trim().isNotEmpty &&
        phoneDigits.length >= 10 &&
        zipDigits.length >= 4;
  }
}
