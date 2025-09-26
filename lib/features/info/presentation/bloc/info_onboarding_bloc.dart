import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:gooddeeds/src/config/routes/route_paths.dart';

part 'info_onboarding_event.dart';
part 'info_onboarding_state.dart';
part 'info_onboarding_bloc.freezed.dart';

const kTotalPages = 3;

@injectable
class InfoOnboardingBloc
    extends Bloc<InfoOnboardingEvent, InfoOnboardingBlocState> {
  InfoOnboardingBloc() : super(InfoOnboardingBlocState.initial()) {
    on<_Started>(_onStarted);
    on<_PageChanged>(_onPageChanged);
    on<_NextPressed>(_onNextPressed);
    on<_SkipPressed>(_onSkipPressed);
    on<_LoginPressed>(_onLoginPressed);
    on<_RegisterPressed>(_onRegisterPressed);
    on<_Finished>(_onFinished);
  }

  void _onStarted(_Started event, Emitter<InfoOnboardingBlocState> emit) {}

  void _onPageChanged(_PageChanged event, Emitter<InfoOnboardingBlocState> emit) {
    emit(state.copyWith(pageIndex: event.index.clamp(0, kTotalPages - 1)));
  }

  void _onNextPressed(_NextPressed event, Emitter<InfoOnboardingBlocState> emit) {
    if (!state.isLast) {
      emit(state.copyWith(pageIndex: state.pageIndex + 1));
    } else {
      emit(state.copyWith(navigateTo: RouteNames.registerChoice));
      emit(state.copyWith(navigateTo: null)); // reset one-shot
    }
  }

  void _onSkipPressed(_SkipPressed event, Emitter<InfoOnboardingBlocState> emit) {
    emit(state.copyWith(pageIndex: kTotalPages - 1));
  }

  void _onLoginPressed(_LoginPressed e, Emitter<InfoOnboardingBlocState> emit) {
    // emit(state.copyWith(navigateTo: RouteNames.login));
    // emit(state.copyWith(navigateTo: null));
  }

  void _onRegisterPressed(_RegisterPressed e, Emitter<InfoOnboardingBlocState> emit) {
    emit(state.copyWith(navigateTo: RouteNames.registerChoice));
    emit(state.copyWith(navigateTo: null));
  }

  void _onFinished(_Finished e, Emitter<InfoOnboardingBlocState> emit) {
    emit(state.copyWith(navigateTo: RouteNames.registerChoice));
    emit(state.copyWith(navigateTo: null));
  }
}
