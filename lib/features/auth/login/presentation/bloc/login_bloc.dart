import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gooddeeds/shared/design_system/utils/validators.dart';
import 'package:injectable/injectable.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

@Injectable()
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState.initial()) {
    on<_EmailChanged>((e, emit) {
      emit(state.copyWith(email: e.value, emailError: null));
    });
    on<_PasswordChanged>((e, emit) {
      emit(state.copyWith(password: e.value, passwordError: null));
    });
    on<_Submitted>(_onSubmitted);
  }

  Future<void> _onSubmitted(_Submitted e, Emitter<LoginState> emit) async {
    final emailOk = state.isEmailValid;
    final passOk = state.isPasswordValid;

    if (!emailOk || !passOk) {
      emit(state.copyWith(showErrors: true));
      return;
    }

    emit(
      state.copyWith(
        isSubmitting: true,
        emailError: null,
        passwordError: null,
      ),
    );

    emit(state.copyWith(isSubmitting: false, success: true));
  }
}

extension LoginStateX on LoginState {
  bool get isEmailValid => email.isValidEmail;

  bool get isPasswordValid => password.trim().isNotEmpty;
}
