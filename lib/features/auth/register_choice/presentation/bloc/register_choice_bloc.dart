import 'package:flutter_bloc/flutter_bloc.dart';
import 'register_choice_event.dart';
import 'register_choice_state.dart';
import 'package:gooddeeds/src/config/routes/route_paths.dart';

class RegisterChoiceBloc extends Bloc<RegisterChoiceEvent, RegisterChoiceState> {
  RegisterChoiceBloc() : super(const RegisterChoiceState.idle()) {
    on<RegisterChoiceEvent>((event, emit) {
      event.map(
        needDonationsPressed: (_) => emit(const RegisterChoiceState.navigate(RouteNames.registerMenu)),
        helpFamiliesPressed: (_) => emit(const RegisterChoiceState.navigate(RouteNames.registerMenu)),
        loginPressed: (_) => emit(const RegisterChoiceState.navigate('/login')),
      );
      emit(const RegisterChoiceState.idle());
    });
  }
}
