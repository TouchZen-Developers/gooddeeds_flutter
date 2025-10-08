import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gooddeeds/shared/design_system/utils/validators.dart';
import 'package:injectable/injectable.dart';

part 'register_email_bloc.freezed.dart';
part 'register_email_event.dart';
part 'register_email_state.dart';

@injectable
class RegisterEmailBloc extends Bloc<RegisterEmailEvent, RegisterEmailState> {
  RegisterEmailBloc() : super(RegisterEmailState.initial()) {
    on<_EmailChanged>((e, emit) {
      emit(state.copyWith(email: e.email, showErrorMessages: false));
    });

    on<_PasswordChanged>((e, emit) {
      emit(state.copyWith(password: e.password, showErrorMessages: false));
    });

    on<_ConfirmPasswordChanged>((e, emit) {
      emit(
        state.copyWith(
          confirmPassword: e.confirmPassword,
          showErrorMessages: false,
        ),
      );
    });

    on<_Submitted>((e, emit) async {
      final email = state.email.trim();
      final password = state.password;
      final confirm = state.confirmPassword;

      final emailValid = email.isValidEmail;
      final passwordValid = password.trim().length >= 6;
      final confirmValid = confirm == password && confirm.isNotEmpty;

      if (!emailValid || !passwordValid || !confirmValid) {
        emit(state.copyWith(showErrorMessages: true));
        return;
      }

      emit(state.copyWith(isSubmitting: true));
      try {
        // call API here with (email, password)
        // await authRepo.register(email: email, password: password);

        // emit(state.copyWith(isSubmitting: false, success: true));
      } catch (err) {
        // emit(state.copyWith(isSubmitting: false, apiError: err.toString()));
      } finally {
        emit(state.copyWith(isSubmitting: false));
      }
    });
  }
}
