import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gooddeeds/features/donating/cart/presentation/screens/checkout_screen.dart';
import 'package:gooddeeds/features/donating/cart/presentation/screens/donaiting_my_cart_screen.dart';
import 'package:gooddeeds/features/donating/family/presentation/screens/family_details_screen.dart';
import 'package:gooddeeds/features/donating/home/presentation/screens/donaiting_home_screen.dart';
import 'package:gooddeeds/features/donating/home/presentation/screens/family_list_screen.dart';
import 'package:gooddeeds/features/info/presentation/screens/info_onboarding_screen.dart';
import 'package:gooddeeds/features/register/email/presentation/screens/register_email_screen.dart';
import 'package:gooddeeds/src/config/routes/donating_app_scaffold_with_nav.dart';

import '../../../features/auth/register_choice/presentation/screens/register_choice_screen.dart';
import '../../../features/auth/register_menu/presentation/screens/register_menu_screen.dart';
import '../../../features/info/presentation/bloc/info_onboarding_bloc.dart';
import '../../../features/login/presentation/bloc/login_bloc.dart';
import '../../../features/login/presentation/screens/login_screen.dart';
import '../../../features/register/contact_info/presentation/bloc/register_contact_info_bloc.dart';
import '../../../features/register/contact_info/presentation/screens/register_contact_info_screen.dart';
import '../../../features/register/email/presentation/bloc/register_email_bloc.dart';
import '../../../features/register/email/verify/presentation/screens/verify_email_screen.dart';
import '../../../features/register/personal_info/presentation/bloc/register_personal_info_bloc.dart';
import '../../../features/register/personal_info/presentation/screens/register_personal_info_screen.dart';
import '../../../features/register/register_impact/presentation/bloc/register_impact_bloc.dart';
import '../../../features/register/register_impact/presentation/screens/register_impact_screen.dart';
import '../../../features/splash/presentation/screens/splash_screen.dart';
import '../di/injector.dart';
import 'route_paths.dart';

part 'app_router.g.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellDonaitingNavigatorKey = GlobalKey<NavigatorState>();
final _shellDonaitingHomeNavigatorKey = GlobalKey<NavigatorState>();
final _shellMyCartNavigatorKey = GlobalKey<NavigatorState>();
final _shellOrdersNavigatorKey = GlobalKey<NavigatorState>();
final _shellDonaitingMyProfileNavigatorKey = GlobalKey<NavigatorState>();

@TypedGoRoute<SplashRoute>(path: RoutePaths.splash)
class SplashRoute extends GoRouteData with $SplashRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SplashScreen();
  }
}

@TypedGoRoute<InfoOnboardingRoute>(path: RoutePaths.info)
class InfoOnboardingRoute extends GoRouteData with $InfoOnboardingRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider(
      create: (_) => getIt<InfoOnboardingBloc>(),
      child: const InfoOnboardingScreen(),
    );
  }
}

@TypedGoRoute<RegisterChoiceRoute>(path: RoutePaths.registerChoice)
class RegisterChoiceRoute extends GoRouteData with $RegisterChoiceRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const RegisterChoiceScreen();
  }
}

@TypedGoRoute<RegisterMenuRoute>(path: RoutePaths.registerMenu)
class RegisterMenuRoute extends GoRouteData with $RegisterMenuRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const RegisterMenuScreen();
  }
}

@TypedGoRoute<CheckoutRoute>(path: RoutePaths.checkout)
class CheckoutRoute extends GoRouteData with $CheckoutRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const CheckoutScreen();
  }
}

@TypedGoRoute<RegisterEmailRoute>(
  path: RoutePaths.registerEmail,
  routes: [
    TypedGoRoute<VerifyEmailRoute>(path: 'verify'),
  ],
)
class RegisterEmailRoute extends GoRouteData with $RegisterEmailRoute {
  const RegisterEmailRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider(
      create: (_) => RegisterEmailBloc(),
      child: const RegisterEmailScreen(),
    );
  }
}

class VerifyEmailRoute extends GoRouteData with $VerifyEmailRoute {
  const VerifyEmailRoute({required this.email});

  final String email;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return VerifyEmailScreen(email: email);
  }
}

@TypedGoRoute<RegisterPersonalInfoRoute>(path: RoutePaths.registerPersonalInfo)
class RegisterPersonalInfoRoute extends GoRouteData
    with $RegisterPersonalInfoRoute {
  const RegisterPersonalInfoRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider(
      create: (_) => RegisterPersonalInfoBloc(),
      child: const RegisterPersonalInfoScreen(),
    );
  }
}

@TypedGoRoute<RegisterContactInfoRoute>(path: RoutePaths.registerContactInfo)
class RegisterContactInfoRoute extends GoRouteData
    with $RegisterContactInfoRoute {
  const RegisterContactInfoRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider(
      create: (_) => RegisterContactInfoBloc(),
      child: const RegisterContactInfoScreen(),
    );
  }
}

@TypedGoRoute<RegisterImpactRoute>(path: RoutePaths.registerImpact)
class RegisterImpactRoute extends GoRouteData with $RegisterImpactRoute {
  const RegisterImpactRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider(
      create: (_) => RegisterImpactBloc(),
      child: const RegisterImpactScreen(),
    );
  }
}

@TypedGoRoute<LoginRoute>(path: RoutePaths.login)
class LoginRoute extends GoRouteData with $LoginRoute {
  const LoginRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider(
      create: (_) => LoginBloc(),
      child: const LoginScreen(),
    );
  }
}

@TypedStatefulShellRoute<AppStatfulShellWithNavigationRouteData>(
  branches: <TypedStatefulShellBranch<StatefulShellBranchData>>[
    TypedStatefulShellBranch<DonatingHomeBranch>(
      routes: [
        TypedGoRoute<DonatingHomeRoute>(
          path: RoutePaths.donaitingHome,
          routes: <TypedRoute<RouteData>>[
            TypedGoRoute<FamilyListRoute>(path: RoutePaths.familyList),
            TypedGoRoute<FamilyDetailsRoute>(path: RoutePaths.familyDetails),
          ],
        ),
      ],
    ),
    TypedStatefulShellBranch<MyCartBranch>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<MyCartRoute>(
          path: RoutePaths.donaitingMyCart,
        ),
      ],
    ),
    TypedStatefulShellBranch<OrdersBranch>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<OrdersRoute>(
          path: RoutePaths.donaitingOrders,
        ),
      ],
    ),
    TypedStatefulShellBranch<DonaitingMyProfileBranch>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<DonaitingMyProfileRoute>(
          path: RoutePaths.donaitingProfile,
        ),
      ],
    ),
  ],
)
class AppStatfulShellWithNavigationRouteData extends StatefulShellRouteData {
  const AppStatfulShellWithNavigationRouteData();

  static final GlobalKey<NavigatorState> $navigatorKey =
      _shellDonaitingNavigatorKey;
  static const String $restorationScopeId = 'restorationScopeId';

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return DonatingAppScaffoldWithNavigationBar(
      body: navigationShell,
      currentIndex: navigationShell.currentIndex,
      onDestinationSelected: (index) => navigationShell.goBranch(
        index,
        initialLocation: index == navigationShell.currentIndex,
      ),
    );
  }
}

class DonatingHomeBranch extends StatefulShellBranchData {
  const DonatingHomeBranch();

  static final GlobalKey<NavigatorState> $navigatorKey =
      _shellDonaitingHomeNavigatorKey;
  static const String $restorationScopeId = 'restorationScopeId';
}

class MyCartBranch extends StatefulShellBranchData {
  const MyCartBranch();

  static final GlobalKey<NavigatorState> $navigatorKey =
      _shellMyCartNavigatorKey;
  static const String $restorationScopeId = 'restorationScopeId';
}

class OrdersBranch extends StatefulShellBranchData {
  const OrdersBranch();

  static final GlobalKey<NavigatorState> $navigatorKey =
      _shellOrdersNavigatorKey;
  static const String $restorationScopeId = 'restorationScopeId';
}

class DonaitingMyProfileBranch extends StatefulShellBranchData {
  const DonaitingMyProfileBranch();

  static final GlobalKey<NavigatorState> $navigatorKey =
      _shellDonaitingMyProfileNavigatorKey;
  static const String $restorationScopeId = 'restorationScopeId';
}

class DonatingHomeRoute extends GoRouteData with $DonatingHomeRoute {
  const DonatingHomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const DonaitingHomeScreen();
}

class FamilyListRoute extends GoRouteData with $FamilyListRoute {
  const FamilyListRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const FamilyListScreen();
}

class FamilyDetailsRoute extends GoRouteData with $FamilyDetailsRoute {
  const FamilyDetailsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const FamilyDetailsScreen();
}

class MyCartRoute extends GoRouteData with $MyCartRoute {
  const MyCartRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const DonaitingMyCartScreen();
}

class OrdersRoute extends GoRouteData with $OrdersRoute {
  const OrdersRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const Placeholder();
}

class DonaitingMyProfileRoute extends GoRouteData
    with $DonaitingMyProfileRoute {
  const DonaitingMyProfileRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const Placeholder();
}

GoRouter createRouter() => GoRouter(
      initialLocation: RoutePaths.splash,
      routes: $appRoutes,
      navigatorKey: _rootNavigatorKey,
    );
