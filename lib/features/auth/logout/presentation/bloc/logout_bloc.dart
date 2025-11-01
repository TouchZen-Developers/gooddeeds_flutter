import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gooddeeds/shared/domain/failure.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/logout_response_entity.dart';
import '../../domain/usecases/logout_usecase.dart';

part 'logout_bloc.freezed.dart';
part 'logout_event.dart';
part 'logout_state.dart';

@Injectable()
class LogoutBloc extends Bloc<LogoutEvent, LogoutState> {
  LogoutBloc(this._logoutUseCase) : super(const LogoutState.initial()) {
    on<_LogoutRequested>(_onLogoutRequested);
  }

  final LogoutUseCase _logoutUseCase;

  Future<void> _onLogoutRequested(
    _LogoutRequested event,
    Emitter<LogoutState> emit,
  ) async {
    emit(const LogoutState.loading());

    final result = await _logoutUseCase();

    result.fold(
      (Failure failure) => emit(LogoutState.failure(failure.message)),
      (LogoutResponseEntity response) => emit(LogoutState.success(response)),
    );
  }
}
