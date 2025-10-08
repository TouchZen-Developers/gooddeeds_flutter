import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gooddeeds/shared/design_system/utils/validators.dart';
import 'package:injectable/injectable.dart';

part 'register_contact_info_bloc.freezed.dart';
part 'register_contact_info_event.dart';
part 'register_contact_info_state.dart';

@Injectable()
class RegisterContactInfoBloc
    extends Bloc<RegisterContactInfoEvent, RegisterContactInfoState> {
  RegisterContactInfoBloc() : super(RegisterContactInfoState.initial()) {
    on<_AddressChanged>((e, emit) => emit(state.copyWith(address: e.value)));
    on<_PhoneChanged>((e, emit) => emit(state.copyWith(phone: e.value)));
    on<_CityChanged>((e, emit) => emit(state.copyWith(city: e.value)));
    on<_StateChanged>((e, emit) => emit(state.copyWith(stateName: e.value)));
    on<_ZipChanged>((e, emit) => emit(state.copyWith(zip: e.value)));

    on<_Submitted>((e, emit) async {
      if (!state.isFormValid) {
        emit(state.copyWith(showErrors: true));
        return;
      }
      emit(state.copyWith(isSubmitting: true));
      // ... API
      emit(state.copyWith(isSubmitting: false, completed: true));
    });
  }
}

extension RegisterContactInfoStateX on RegisterContactInfoState {
  bool get isAddressValid => address.trim().isNotEmpty;

  bool get isCityValid => city.trim().isNotEmpty;

  bool get isStateValid => stateName.trim().isNotEmpty;

  bool get isPhoneValid => phone.trim().isValidUSPhone;

  bool get isZipValid => zip.trim().isValidUSZip;

  bool get isFormValid =>
      isAddressValid &&
      isCityValid &&
      isStateValid &&
      isPhoneValid &&
      isZipValid;
}
