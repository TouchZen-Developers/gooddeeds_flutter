import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gooddeeds/features/auth/social/presentation/bloc/social_auth_bloc.dart';
import 'package:gooddeeds/shared/data/user_role.dart';
import 'package:gooddeeds/src/config/di/injector.dart';
import 'package:gooddeeds/src/config/routes/route_paths.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../bloc/splash_bloc.dart';
import '../widgets/splash_background.dart';
import '../widgets/splash_brand.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SplashBloc>(
      create: (_) => getIt<SplashBloc>()..add(const SplashEvent.started()),
      child: BlocListener<SplashBloc, SplashState>(
        listener: (context, state) async {
          // First, consume any pending deep link error (cold start case)
          final prefs = getIt<SharedPreferences>();
          final pendingError = prefs.getString(kPrefPendingDeepLinkError);
          if (pendingError != null && pendingError.isNotEmpty) {
            await prefs.remove(kPrefPendingDeepLinkError);
            await prefs.remove(kPrefPendingNextStep);
            if (!context.mounted) return;
            final overlay = Overlay.of(context, rootOverlay: true);
            showTopSnackBar(
              overlay,
              CustomSnackBar.error(message: pendingError),
            );
            // Reset social auth state for fresh retry
            getIt<SocialAuthBloc>().resetState();
            if (!context.mounted) return;
            context.go(RoutePaths.login);
            return;
          }

          state.maybeWhen(
            authenticated: () {
              if (!context.mounted) return;
              context.go(RoutePaths.donaitingHome);
            },
            unauthenticated: () {
              if (!context.mounted) return;
              context.go(RoutePaths.info);
            },
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
