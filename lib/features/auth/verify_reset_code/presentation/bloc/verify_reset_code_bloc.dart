import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'verify_reset_code_bloc.freezed.dart';
part 'verify_reset_code_event.dart';
part 'verify_reset_code_state.dart';

@Injectable()
class VerifyResetCodeBloc
    extends Bloc<VerifyResetCodeEvent, VerifyResetCodeState> {
  VerifyResetCodeBloc() : super(VerifyResetCodeState.initial()) {
    on<_CodeChanged>((e, emit) => emit(state.copyWith(code: e.value)));
    on<_ResendPressed>(_onResend);
    on<_Submitted>(_onSubmit);
  }

  Future<void> _onResend(
    _ResendPressed e,
    Emitter<VerifyResetCodeState> emit,
  ) async {
    emit(state.copyWith(isResending: true));
    try {
      // API resend code
    } finally {
      emit(state.copyWith(isResending: false));
    }
  }

  Future<void> _onSubmit(
    _Submitted e,
    Emitter<VerifyResetCodeState> emit,
  ) async {
    emit(state.copyWith(showErrors: true));
    if (state.code.length != 4) return;

    emit(state.copyWith(isSubmitting: true, success: null));
    try {
      // API verify code

      emit(state.copyWith(isSubmitting: false, success: true));
    } catch (_) {
      emit(state.copyWith(isSubmitting: false, success: false));
    }
  }
}
