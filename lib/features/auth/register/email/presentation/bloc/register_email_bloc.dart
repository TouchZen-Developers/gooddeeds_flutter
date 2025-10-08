import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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

    on<_Submitted>((e, emit) {
      final emailValid = state.email.isNotEmpty &&
          RegExp(r'^[\w\.-]+@([\w-]+\.)+[\w-]{2,}$').hasMatch(state.email);
      final passwordValid = state.password.isNotEmpty;
      final confirmValid = state.password == state.confirmPassword;

      if (emailValid && passwordValid && confirmValid) {
        emit(state.copyWith(isSubmitting: true));
        // TODO: call API then emit(isSubmitting: false) + success/failure state if needed
      } else {
        emit(state.copyWith(showErrorMessages: true));
      }
    });
  }
}
