import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gooddeeds/shared/design_system/utils/validators.dart';
import 'package:injectable/injectable.dart';

import '../../domain/usecases/send_otp_usecase.dart';

part 'forgot_password_bloc.freezed.dart';
part 'forgot_password_event.dart';
part 'forgot_password_state.dart';

@Injectable()
class ForgotPasswordBloc
    extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  ForgotPasswordBloc(this._sendOtpUseCase)
      : super(ForgotPasswordState.initial()) {
    on<_EmailChanged>((e, emit) => emit(state.copyWith(email: e.value)));
    on<_Submitted>(_onSubmitted);
    on<_MarkShowErrors>((e, emit) => emit(state.copyWith(showErrors: true)));
  }

  final SendOtpUseCase _sendOtpUseCase;

  Future<void> _onSubmitted(
    _Submitted e,
    Emitter<ForgotPasswordState> emit,
  ) async {
    emit(state.copyWith(showErrors: true));
    if (!state.isEmailValid) return;

    emit(state.copyWith(isSubmitting: true, success: null, apiError: null));

    try {
      final result = await _sendOtpUseCase(email: state.email);

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

extension ForgotPasswordStateX on ForgotPasswordState {
  bool get isEmailValid => email.isValidEmail;
}
