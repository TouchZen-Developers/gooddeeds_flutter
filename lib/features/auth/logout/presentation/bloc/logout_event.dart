part of 'logout_bloc.dart';

@freezed
abstract class LogoutEvent with _$LogoutEvent {
  const factory LogoutEvent.logoutRequested() = _LogoutRequested;
}
