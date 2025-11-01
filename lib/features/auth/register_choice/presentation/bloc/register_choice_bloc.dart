import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gooddeeds/shared/data/user_role.dart';
import 'package:gooddeeds/src/config/routes/app_router.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'register_choice_event.dart';
import 'register_choice_state.dart';

@Injectable()
class RegisterChoiceBloc
    extends Bloc<RegisterChoiceEvent, RegisterChoiceState> {
  RegisterChoiceBloc(this._prefs) : super(const RegisterChoiceState.idle()) {
    on<RegisterChoiceEvent>(_onEvent);
  }

  final SharedPreferences _prefs;

  Future<void> _onEvent(
    RegisterChoiceEvent event,
    Emitter<RegisterChoiceState> emit,
  ) async {
    await event.map(
      needDonationsPressed: (_) async {
        await _prefs.setString(kPrefUserRole, UserRole.beneficiary.asString);
        emit(RegisterChoiceState.navigate(RegisterMenuRoute().location));
        emit(const RegisterChoiceState.idle());
      },
      helpFamiliesPressed: (_) async {
        await _prefs.setString(kPrefUserRole, UserRole.donor.asString);
        emit(RegisterChoiceState.navigate(RegisterMenuRoute().location));
        emit(const RegisterChoiceState.idle());
      },
      loginPressed: (_) async {
        await _prefs.remove(kPrefUserRole);
        emit(const RegisterChoiceState.navigate('/login'));
        emit(const RegisterChoiceState.idle());
      },
    );
  }
}
