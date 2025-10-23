import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gooddeeds/shared/design_system/utils/validators.dart';
import 'package:gooddeeds/shared/domain/failure.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/login_response_entity.dart';
import '../../domain/usecases/login_usecase.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

@Injectable()
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(this._loginUseCase) : super(LoginState.initial()) {
    on<_EmailChanged>((e, emit) {
      emit(state.copyWith(email: e.value, emailError: null));
    });
    on<_PasswordChanged>((e, emit) {
      emit(state.copyWith(password: e.value, passwordError: null));
    });
    on<_Submitted>(_onSubmitted);
  }

  final LoginUseCase _loginUseCase;

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
        apiError: null,
      ),
    );

    final result = await _loginUseCase(
      email: state.email,
      password: state.password,
    );

    result.fold(
      (Failure failure) => emit(
        state.copyWith(
          isSubmitting: false,
          success: false,
          apiError: failure.message,
        ),
      ),
      (data) => emit(
        state.copyWith(
          isSubmitting: false,
          success: true,
          loginResponse: data,
        ),
      ),
    );
  }
}

extension LoginStateX on LoginState {
  bool get isEmailValid => email.isValidEmail;

  bool get isPasswordValid => password.trim().isNotEmpty;
}
