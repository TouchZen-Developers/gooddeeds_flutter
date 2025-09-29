import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gooddeeds/src/config/routes/app_router.dart';
import 'register_choice_event.dart';
import 'register_choice_state.dart';

class RegisterChoiceBloc
    extends Bloc<RegisterChoiceEvent, RegisterChoiceState> {
  RegisterChoiceBloc() : super(const RegisterChoiceState.idle()) {
    on<RegisterChoiceEvent>((event, emit) {
      event.map(
        needDonationsPressed: (_) =>
            emit(RegisterChoiceState.navigate(RegisterMenuRoute().location)),
        helpFamiliesPressed: (_) =>
            emit(RegisterChoiceState.navigate(RegisterMenuRoute().location)),
        loginPressed: (_) => emit(const RegisterChoiceState.navigate('/login')),
      );
      emit(const RegisterChoiceState.idle());
    });
  }
}
