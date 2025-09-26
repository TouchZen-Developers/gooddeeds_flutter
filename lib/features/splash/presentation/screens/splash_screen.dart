import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../bloc/splash_bloc.dart';
import '../bloc/splash_event.dart';
import '../bloc/splash_state.dart';
import '../widgets/splash_background.dart';
import '../widgets/splash_brand.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SplashBloc>(
      create: (_) => SplashBloc()..add(const SplashEvent.started()),
      child: BlocListener<SplashBloc, SplashState>(
        listener: (context, state) {
          state.maybeWhen(
            done: () => context.go('/info'),
            orElse: () {},
          );
        },
        child: const _SplashView(),
      ),
    );
  }
}

class _SplashView extends StatelessWidget {
  const _SplashView();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SplashBackground(),
          Center(child: SplashBrand()),
        ],
      ),
    );
  }
}
