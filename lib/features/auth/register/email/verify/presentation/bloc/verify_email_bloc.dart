import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/usecases/resend_signup_otp_usecase.dart';
import '../../domain/usecases/verify_signup_otp_usecase.dart';

part 'verify_email_bloc.freezed.dart';
part 'verify_email_event.dart';
part 'verify_email_state.dart';

@Injectable()
class VerifyEmailBloc extends Bloc<VerifyEmailEvent, VerifyEmailState> {
  VerifyEmailBloc(
    this._verifySignupOtpUseCase,
    this._resendSignupOtpUseCase,
  ) : super(VerifyEmailState.initial()) {
    on<_CodeChanged>((e, emit) => emit(state.copyWith(code: e.value)));
    on<_EmailChanged>((e, emit) => emit(state.copyWith(email: e.value)));
    on<_Submitted>(_onSubmit);
    on<_ResendPressed>(_onResend);
  }

  final VerifySignupOtpUseCase _verifySignupOtpUseCase;
  final ResendSignupOtpUseCase _resendSignupOtpUseCase;

  Future<void> _onSubmit(
    _Submitted e,
    Emitter<VerifyEmailState> emit,
  ) async {
    emit(state.copyWith(showErrors: true));
    if (state.code.length != 4) return;

    emit(state.copyWith(isSubmitting: true, success: null));

    try {
      final result = await _verifySignupOtpUseCase(
        email: state.email,
        otp: state.code,
      );

      result.fold(
        (failure) => emit(
          state.copyWith(
            isSubmitting: false,
            success: false,
          ),
        ),
        (data) => emit(
          state.copyWith(
            isSubmitting: false,
            success: true,
          ),
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          isSubmitting: false,
          success: false,
        ),
      );
    }
  }

  Future<void> _onResend(
    _ResendPressed e,
    Emitter<VerifyEmailState> emit,
  ) async {
    emit(state.copyWith(isResending: true));

    try {
      final result = await _resendSignupOtpUseCase(email: state.email);

      result.fold(
        (failure) => emit(
          state.copyWith(
            isResending: false,
          ),
        ),
        (data) => emit(
          state.copyWith(
            isResending: false,
          ),
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          isResending: false,
        ),
      );
    }
  }
}
