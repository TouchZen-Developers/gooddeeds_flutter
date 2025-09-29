import 'package:go_router/go_router.dart';
import 'package:gooddeeds/features/info/presentation/screens/info_onboarding_screen.dart';
import '../../../features/auth/register_choice/presentation/screens/register_choice_screen.dart';
import '../../../features/auth/register_menu/presentation/screens/register_menu_screen.dart';
import '../../../features/info/presentation/bloc/info_onboarding_bloc.dart';
import '../../../features/register/email/presentation/bloc/register_email_bloc.dart';
import '../../../features/register/email/presentation/screens/register_email_screen.dart';
import '../../../features/splash/presentation/screens/splash_screen.dart';
import '../di/injector.dart';
import 'route_paths.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

GoRouter createRouter() => GoRouter(
      initialLocation: RoutePaths.registerEmail,
      routes: [
        GoRoute(
          path: RoutePaths.splash,
          name: RouteNames.splash,
          builder: (context, state) => const SplashScreen(),
        ),
        GoRoute(
          path: RoutePaths.info,
          name: RouteNames.info,
          builder: (context, state) => BlocProvider(
            create: (_) => getIt<InfoOnboardingBloc>(),
            child: const InfoOnboardingScreen(),
          ),
        ),
        GoRoute(
          path: RoutePaths.registerChoice,
          name: RouteNames.registerChoice,
          builder: (context, state) => const RegisterChoiceScreen(),
        ),
        GoRoute(
          path: RoutePaths.registerMenu,
          name: RouteNames.registerMenu,
          builder: (context, state) => const RegisterMenuScreen(),
        ),
        GoRoute(
          path: RoutePaths.registerEmail,
          name: RouteNames.registerEmail,
          builder: (context, state) => BlocProvider(
            create: (_) => getIt<RegisterEmailBloc>(),
            child: RegisterEmailScreen(),
          ),
        ),
      ],
    );
