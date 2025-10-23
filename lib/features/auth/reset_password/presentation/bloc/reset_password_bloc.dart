import 'dart:developer' as developer;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/usecases/reset_password_usecase.dart';

part 'reset_password_bloc.freezed.dart';
part 'reset_password_event.dart';
part 'reset_password_state.dart';

@Injectable()
class ResetPasswordBloc extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  ResetPasswordBloc(this._resetPasswordUseCase)
      : super(ResetPasswordState.initial()) {
    on<_NewPasswordChanged>(
      (e, emit) => emit(state.copyWith(newPassword: e.value)),
    );
    on<_ConfirmChanged>(
      (e, emit) => emit(state.copyWith(confirmPassword: e.value)),
    );
    on<_VerificationTokenChanged>(
      (e, emit) => emit(state.copyWith(verificationToken: e.value)),
    );
    on<_MarkShowErrors>((e, emit) => emit(state.copyWith(showErrors: true)));
    on<_Submitted>(_onSubmitted);
  }

  final ResetPasswordUseCase _resetPasswordUseCase;

  Future<void> _onSubmitted(
    _Submitted e,
    Emitter<ResetPasswordState> emit,
  ) async {
    developer.log('ResetPassword: _onSubmitted called');
    developer.log('ResetPassword: Current state: $state');

    final ok = state.newPassword.length >= 6 &&
        state.confirmPassword.isNotEmpty &&
        state.newPassword == state.confirmPassword &&
        state.verificationToken.isNotEmpty;

    developer.log('ResetPassword: Validation check - ok: $ok');
    developer
        .log('ResetPassword: Password length: ${state.newPassword.length}');
    developer.log(
      'ResetPassword: Confirm password empty: ${state.confirmPassword.isEmpty}',
    );
    developer.log(
      'ResetPassword: Passwords match: ${state.newPassword == state.confirmPassword}',
    );
    developer
        .log('ResetPassword: Token empty: ${state.verificationToken.isEmpty}');

    if (!ok) {
      developer.log('ResetPassword: Validation failed, showing errors');
      emit(state.copyWith(showErrors: true));
      return;
    }

    developer.log('ResetPassword: Validation passed, starting API call');
    emit(state.copyWith(isSubmitting: true, success: null, apiError: null));

    try {
      developer.log(
        'ResetPassword: Calling API with token: ${state.verificationToken}',
      );
      final result = await _resetPasswordUseCase(
        verificationToken: state.verificationToken,
        password: state.newPassword,
        passwordConfirmation: state.confirmPassword,
      );

      developer.log('ResetPassword: API call completed');
      result.fold(
        (failure) {
          developer.log('ResetPassword: API call failed: ${failure.message}');
          emit(
            state.copyWith(
              isSubmitting: false,
              success: false,
              apiError: failure.message,
            ),
          );
        },
        (data) {
          developer.log('ResetPassword: API call succeeded: ${data.message}');
          emit(
            state.copyWith(
              isSubmitting: false,
              success: true,
            ),
          );
        },
      );
    } catch (e) {
      developer.log('ResetPassword: Exception occurred: $e');
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
