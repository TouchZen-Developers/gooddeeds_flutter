import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gooddeeds/shared/design_system/utils/validators.dart';
import 'package:injectable/injectable.dart';

part 'forgot_password_bloc.freezed.dart';
part 'forgot_password_event.dart';
part 'forgot_password_state.dart';

@Injectable()
class ForgotPasswordBloc
    extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  ForgotPasswordBloc() : super(ForgotPasswordState.initial()) {
    on<_EmailChanged>((e, emit) => emit(state.copyWith(email: e.value)));
    on<_Submitted>(_onSubmitted);
    on<_MarkShowErrors>((e, emit) => emit(state.copyWith(showErrors: true)));
  }

  Future<void> _onSubmitted(
    _Submitted e,
    Emitter<ForgotPasswordState> emit,
  ) async {
    emit(state.copyWith(showErrors: true));
    if (!state.isEmailValid) return;

    emit(state.copyWith(isSubmitting: true, success: null));
    try {
      emit(state.copyWith(isSubmitting: false, success: true));
    } catch (_) {
      emit(state.copyWith(isSubmitting: false, success: false));
    }
  }
}

extension ForgotPasswordStateX on ForgotPasswordState {
  bool get isEmailValid => email.isValidEmail;
}
