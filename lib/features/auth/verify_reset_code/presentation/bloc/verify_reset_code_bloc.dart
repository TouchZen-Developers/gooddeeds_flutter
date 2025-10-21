import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/usecases/verify_otp_usecase.dart';

part 'verify_reset_code_bloc.freezed.dart';
part 'verify_reset_code_event.dart';
part 'verify_reset_code_state.dart';

@Injectable()
class VerifyResetCodeBloc
    extends Bloc<VerifyResetCodeEvent, VerifyResetCodeState> {
  VerifyResetCodeBloc(this._verifyOtpUseCase)
      : super(VerifyResetCodeState.initial()) {
    on<_CodeChanged>((e, emit) => emit(state.copyWith(code: e.value)));
    on<_EmailChanged>((e, emit) => emit(state.copyWith(email: e.value)));
    on<_ResendPressed>(_onResend);
    on<_Submitted>(_onSubmit);
  }

  final VerifyOtpUseCase _verifyOtpUseCase;

  Future<void> _onResend(
    _ResendPressed e,
    Emitter<VerifyResetCodeState> emit,
  ) async {
    emit(state.copyWith(isResending: true));
    try {
      // TODO: Implement resend OTP
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

    emit(state.copyWith(isSubmitting: true, success: null, apiError: null));

    try {
      final result = await _verifyOtpUseCase(
        email: state.email,
        otp: state.code,
      );

      result.fold(
        (failure) => emit(
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
            verificationToken: data.verificationToken,
          ),
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          isSubmitting: false,
          success: false,
          apiError: 'An unexpected error occurred',
        ),
      );
    }
  }
}
