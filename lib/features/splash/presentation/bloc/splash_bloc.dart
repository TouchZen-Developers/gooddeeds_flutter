import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'splash_event.dart';
import 'splash_state.dart';

@Injectable()
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(const SplashState.initial()) {
    on<SplashEvent>((event, emit) async {
      await event.when(
        started: () async {
          emit(const SplashState.loading());
          await Future.delayed(const Duration(seconds: 2));
          emit(const SplashState.done());
        },
      );
    });
  }
}
