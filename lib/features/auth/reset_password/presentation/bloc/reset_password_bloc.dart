import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'reset_password_bloc.freezed.dart';
part 'reset_password_event.dart';
part 'reset_password_state.dart';

@Injectable()
class ResetPasswordBloc extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  ResetPasswordBloc() : super(ResetPasswordState.initial()) {
    on<_NewPasswordChanged>(
      (e, emit) => emit(state.copyWith(newPassword: e.value)),
    );
    on<_ConfirmChanged>(
      (e, emit) => emit(state.copyWith(confirmPassword: e.value)),
    );
    on<_MarkShowErrors>((e, emit) => emit(state.copyWith(showErrors: true)));
    on<_Submitted>(_onSubmitted);
  }

  Future<void> _onSubmitted(
    _Submitted e,
    Emitter<ResetPasswordState> emit,
  ) async {
    final ok = state.newPassword.length >= 6 &&
        state.confirmPassword.isNotEmpty &&
        state.newPassword == state.confirmPassword;

    if (!ok) {
      emit(state.copyWith(showErrors: true));
      return;
    }

    emit(state.copyWith(isSubmitting: true, success: null));
    try {
      //  reset password with newPassword
      emit(state.copyWith(isSubmitting: false, success: true));
    } catch (_) {
      emit(state.copyWith(isSubmitting: false, success: false));
    }
  }
}
