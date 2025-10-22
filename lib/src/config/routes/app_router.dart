import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gooddeeds/features/auth/change_email/presentation/screens/change_email_screen.dart';
import 'package:gooddeeds/features/auth/change_email/presentation/screens/confirm_email_screen.dart';
import 'package:gooddeeds/features/auth/change_password/presentation/screens/change_password_screen.dart';
import 'package:gooddeeds/features/auth/register/email/presentation/screens/register_email_screen.dart';
import 'package:gooddeeds/features/auth/register/pending/presentation/screens/application_pending_screen.dart';
import 'package:gooddeeds/features/donating/cart/presentation/screens/add_new_card_checkout_screen.dart';
import 'package:gooddeeds/features/donating/cart/presentation/screens/checkout_screen.dart';
import 'package:gooddeeds/features/donating/cart/presentation/screens/donaiting_my_cart_screen.dart';
import 'package:gooddeeds/features/donating/event/presentation/screens/event_details_screen.dart';
import 'package:gooddeeds/features/donating/family/presentation/screens/family_details_screen.dart';
import 'package:gooddeeds/features/donating/home/presentation/screens/donaiting_home_screen.dart';
import 'package:gooddeeds/features/donating/home/presentation/screens/family_list_screen.dart';
import 'package:gooddeeds/features/donating/home/presentation/screens/help_family_near_screen.dart';
import 'package:gooddeeds/features/donating/home/presentation/screens/recently_affected_screen.dart';
import 'package:gooddeeds/features/donating/notification/presentation/screens/donaiting_notification_settings_screen.dart';
import 'package:gooddeeds/features/donating/orders/presentation/screens/order_details_screen.dart';
import 'package:gooddeeds/features/donating/orders/presentation/screens/orders_screen.dart';
import 'package:gooddeeds/features/donating/payment/presentation/screens/add_new_card_screen.dart';
import 'package:gooddeeds/features/donating/profile/presentation/screens/donating_my_account_screen.dart';
import 'package:gooddeeds/features/donating/profile/presentation/screens/donating_my_profile_screen.dart';
import 'package:gooddeeds/features/donating/profile/presentation/screens/donating_payment_screen.dart';
import 'package:gooddeeds/features/info/presentation/screens/info_onboarding_screen.dart';
import 'package:gooddeeds/features/receiving/items/presentation/screens/item_details_screen.dart';
import 'package:gooddeeds/features/receiving/items/presentation/screens/receiving_items_screen.dart';
import 'package:gooddeeds/features/receiving/items/presentation/screens/request_items_screen.dart';
import 'package:gooddeeds/features/receiving/notifications/presentation/screens/receiving_notifications_screen.dart';
import 'package:gooddeeds/features/receiving/orders/presentation/screens/receiving_order_details_screen.dart';
import 'package:gooddeeds/features/receiving/orders/presentation/screens/receiving_orders_screen.dart';
import 'package:gooddeeds/features/receiving/profile/presentation/screens/family_information_screen.dart';
import 'package:gooddeeds/features/receiving/profile/presentation/screens/receiving_my_profile_screen.dart';
import 'package:gooddeeds/features/receiving/profile/presentation/screens/receiving_notification_settings_screen.dart';
import 'package:gooddeeds/features/settings/presentation/screens/location_permission_screen.dart';
import 'package:gooddeeds/features/settings/presentation/screens/push_notifications_permission_screen.dart';
import 'package:gooddeeds/features/splash/presentation/screens/splash_screen.dart';
import 'package:gooddeeds/src/config/routes/donating_app_scaffold_with_nav.dart';
import 'package:gooddeeds/src/config/routes/receiving_app_scaffold_with_nav.dart';

import '../../../features/auth/forget_password/presentation/bloc/forgot_password_bloc.dart';
import '../../../features/auth/forget_password/presentation/screens/forgot_password_screen.dart';
import '../../../features/auth/login/presentation/bloc/login_bloc.dart';
import '../../../features/auth/login/presentation/screens/login_screen.dart';
import '../../../features/auth/register/contact_info/presentation/bloc/register_contact_info_bloc.dart';
import '../../../features/auth/register/contact_info/presentation/screens/register_contact_info_screen.dart';
import '../../../features/auth/register/email/presentation/bloc/register_email_bloc.dart';
import '../../../features/auth/register/email/verify/presentation/screens/verify_email_screen.dart';
import '../../../features/auth/register/family_photo/presentation/bloc/register_family_photo_bloc.dart';
import '../../../features/auth/register/family_photo/presentation/screen/family_photo_screen.dart';
import '../../../features/auth/register/personal_info/presentation/bloc/register_personal_info_bloc.dart';
import '../../../features/auth/register/personal_info/presentation/screens/register_personal_info_screen.dart';
import '../../../features/auth/register/register_impact/presentation/bloc/register_impact_bloc.dart';
import '../../../features/auth/register/register_impact/presentation/screens/register_impact_screen.dart';
import '../../../features/auth/register_choice/presentation/screens/register_choice_screen.dart';
import '../../../features/auth/register_menu/presentation/screens/register_menu_screen.dart';
import '../../../features/auth/reset_password/presentation/bloc/reset_password_bloc.dart';
import '../../../features/auth/reset_password/presentation/screens/reset_password_screen.dart';
import '../../../features/auth/verify_reset_code/presentation/bloc/verify_reset_code_bloc.dart';
import '../../../features/auth/verify_reset_code/presentation/screen/verify_reset_code_screen.dart';
import '../../../features/info/presentation/bloc/info_onboarding_bloc.dart';
import '../di/injector.dart';
import 'route_paths.dart';

part 'app_router.g.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellDonaitingNavigatorKey = GlobalKey<NavigatorState>();
final _shellDonaitingHomeNavigatorKey = GlobalKey<NavigatorState>();
final _shellMyCartNavigatorKey = GlobalKey<NavigatorState>();
final _shellOrdersNavigatorKey = GlobalKey<NavigatorState>();
final _shellDonaitingMyProfileNavigatorKey = GlobalKey<NavigatorState>();

final _shellReceivingNavigatorKey = GlobalKey<NavigatorState>();
final _shellReceivingItemsNavigatorKey = GlobalKey<NavigatorState>();
final _shellReceivingOrdersNavigatorKey = GlobalKey<NavigatorState>();
final _shellReceivingNotificationsNavigatorKey = GlobalKey<NavigatorState>();
final _shellReceivingMyProfileNavigatorKey = GlobalKey<NavigatorState>();

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

@TypedGoRoute<AddNewCardCheckoutRoute>(path: RoutePaths.addNewCardCheckout)
class AddNewCardCheckoutRoute extends GoRouteData
    with $AddNewCardCheckoutRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AddNewCardCheckoutScreen();
  }
}

@TypedGoRoute<RegisterEmailRoute>(
  path: RoutePaths.registerEmail,
  routes: [TypedGoRoute<VerifyEmailRoute>(path: 'verify')],
)
class RegisterEmailRoute extends GoRouteData with $RegisterEmailRoute {
  const RegisterEmailRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider(
      create: (_) => getIt<RegisterEmailBloc>(),
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
      create: (_) => getIt<RegisterPersonalInfoBloc>(),
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
      create: (_) => getIt<RegisterContactInfoBloc>(),
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
      create: (_) => getIt<RegisterImpactBloc>(),
      child: const RegisterImpactScreen(),
    );
  }
}

@TypedGoRoute<RegisterFamilyPhotoRoute>(path: RoutePaths.registerFamilyPhoto)
class RegisterFamilyPhotoRoute extends GoRouteData
    with $RegisterFamilyPhotoRoute {
  const RegisterFamilyPhotoRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider(
      create: (_) => getIt<RegisterFamilyPhotoBloc>(),
      child: const RegisterFamilyPhotoScreen(),
    );
  }
}

@TypedGoRoute<ApplicationPendingRoute>(path: RoutePaths.registerPending)
class ApplicationPendingRoute extends GoRouteData
    with $ApplicationPendingRoute {
  const ApplicationPendingRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ApplicationPendingScreen();
  }
}

@TypedGoRoute<LoginRoute>(path: RoutePaths.login)
class LoginRoute extends GoRouteData with $LoginRoute {
  const LoginRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider(
      create: (_) => getIt<LoginBloc>(),
      child: const LoginScreen(),
    );
  }
}

@TypedGoRoute<ForgotPasswordRoute>(path: RoutePaths.forgotPassword)
class ForgotPasswordRoute extends GoRouteData with $ForgotPasswordRoute {
  const ForgotPasswordRoute();

  @override
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider(
      create: (_) => getIt<ForgotPasswordBloc>(),
      child: const ForgotPasswordScreen(),
    );
  }
}

@TypedGoRoute<ForgotVerifyCodeRoute>(path: RoutePaths.forgotVerify)
class ForgotVerifyCodeRoute extends GoRouteData with $ForgotVerifyCodeRoute {
  const ForgotVerifyCodeRoute({required this.email});

  final String email;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider(
      create: (_) => getIt<VerifyResetCodeBloc>(),
      child: VerifyResetCodeScreen(email: email),
    );
  }
}

@TypedGoRoute<ResetPasswordRoute>(path: RoutePaths.resetPassword)
class ResetPasswordRoute extends GoRouteData with $ResetPasswordRoute {
  const ResetPasswordRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider(
      create: (_) => getIt<ResetPasswordBloc>(),
      child: const ResetPasswordScreen(),
    );
  }
}

@TypedStatefulShellRoute<DonatingAppStatfulShellWithNavigationRouteData>(
  branches: <TypedStatefulShellBranch<StatefulShellBranchData>>[
    TypedStatefulShellBranch<DonatingHomeBranch>(
      routes: [
        TypedGoRoute<DonatingHomeRoute>(
          path: RoutePaths.donaitingHome,
          routes: <TypedRoute<RouteData>>[
            TypedGoRoute<FamilyListRoute>(path: RoutePaths.familyList),
            TypedGoRoute<FamilyListNearRoute>(path: RoutePaths.familyListNear),
            TypedGoRoute<RecentlyAffectedRoute>(
              path: RoutePaths.recentlyAffected,
            ),
          ],
        ),
      ],
    ),
    TypedStatefulShellBranch<MyCartBranch>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<MyCartRoute>(path: RoutePaths.donaitingMyCart),
      ],
    ),
    TypedStatefulShellBranch<DonatingOrdersBranch>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<OrdersRoute>(
          path: RoutePaths.donaitingOrders,
          routes: [
            TypedGoRoute<OrderDetailsRoute>(path: RoutePaths.orderDetails),
          ],
        ),
      ],
    ),
    TypedStatefulShellBranch<DonaitingMyProfileBranch>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<DonaitingMyProfileRoute>(
          path: RoutePaths.donaitingProfile,
          routes: [
            TypedGoRoute<DonatingPaymentRoute>(
              path: RoutePaths.donaitingPayment,
            ),
            TypedGoRoute<DonatingPaymentAddNewCardRoute>(
              path: RoutePaths.donaitingPaymentAddNewCard,
            ),
            TypedGoRoute<DonatingNotificationSettingsRoute>(
              path: RoutePaths.donaitingNotificationSettings,
            ),
          ],
        ),
      ],
    ),
  ],
)
class DonatingAppStatfulShellWithNavigationRouteData
    extends StatefulShellRouteData {
  const DonatingAppStatfulShellWithNavigationRouteData();

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

@TypedStatefulShellRoute<ReceivingAppStatfulShellWithNavigationRouteData>(
  branches: <TypedStatefulShellBranch<StatefulShellBranchData>>[
    TypedStatefulShellBranch<ReceivingItemsBranch>(
      routes: [
        TypedGoRoute<ReceivingItemsRoute>(
          path: RoutePaths.receivingItems,
        ),
      ],
    ),
    TypedStatefulShellBranch<ReceivingOrdersBranch>(
      routes: [
        TypedGoRoute<ReceivingOrdersRoute>(
          path: RoutePaths.receivingOrders,
        ),
      ],
    ),
    TypedStatefulShellBranch<ReceivingNotificationsBranch>(
      routes: [
        TypedGoRoute<ReceivingNotificationsRoute>(
          path: RoutePaths.receivingNotifications,
        ),
      ],
    ),
    TypedStatefulShellBranch<ReceivingMyProfileBranch>(
      routes: [
        TypedGoRoute<ReceivingMyProfileRoute>(
          path: RoutePaths.receivingMyProfile,
          routes: [
            TypedGoRoute<ReceivingNotificationSettingsRoute>(
              path: RoutePaths.receivingNotificationSettings,
            ),
            TypedGoRoute<FamilyInformationRoute>(
              path: RoutePaths.familyInformation,
            ),
          ],
        ),
      ],
    ),
  ],
)
class ReceivingAppStatfulShellWithNavigationRouteData
    extends StatefulShellRouteData {
  const ReceivingAppStatfulShellWithNavigationRouteData();

  static final GlobalKey<NavigatorState> $navigatorKey =
      _shellReceivingNavigatorKey;
  static const String $restorationScopeId = 'restorationScopeId';

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return ReceivingAppScaffoldWithNavigationBar(
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

class DonatingOrdersBranch extends StatefulShellBranchData {
  const DonatingOrdersBranch();

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

class ReceivingItemsBranch extends StatefulShellBranchData {
  const ReceivingItemsBranch();

  static final GlobalKey<NavigatorState> $navigatorKey =
      _shellReceivingItemsNavigatorKey;
  static const String $restorationScopeId = 'restorationScopeId';
}

class ReceivingOrdersBranch extends StatefulShellBranchData {
  const ReceivingOrdersBranch();

  static final GlobalKey<NavigatorState> $navigatorKey =
      _shellReceivingOrdersNavigatorKey;
  static const String $restorationScopeId = 'restorationScopeId';
}

class ReceivingNotificationsBranch extends StatefulShellBranchData {
  const ReceivingNotificationsBranch();

  static final GlobalKey<NavigatorState> $navigatorKey =
      _shellReceivingNotificationsNavigatorKey;
  static const String $restorationScopeId = 'restorationScopeId';
}

class ReceivingMyProfileBranch extends StatefulShellBranchData {
  const ReceivingMyProfileBranch();

  static final GlobalKey<NavigatorState> $navigatorKey =
      _shellReceivingMyProfileNavigatorKey;
  static const String $restorationScopeId = 'restorationScopeId';
}

class ReceivingItemsRoute extends GoRouteData with $ReceivingItemsRoute {
  const ReceivingItemsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ReceivingItemsScreen();
}

@TypedGoRoute<RequestItemsRoute>(path: RoutePaths.requestItems)
class RequestItemsRoute extends GoRouteData with $RequestItemsRoute {
  const RequestItemsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const RequestItemsScreen();
  }
}

class ReceivingOrdersRoute extends GoRouteData with $ReceivingOrdersRoute {
  const ReceivingOrdersRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ReceivingOrdersScreen();
}

class ReceivingNotificationsRoute extends GoRouteData
    with $ReceivingNotificationsRoute {
  const ReceivingNotificationsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ReceivingNotificationsScreen();
}

class ReceivingMyProfileRoute extends GoRouteData
    with $ReceivingMyProfileRoute {
  const ReceivingMyProfileRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ReceivingMyProfileScreen();
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

class FamilyListNearRoute extends GoRouteData with $FamilyListNearRoute {
  const FamilyListNearRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const HelpFamilyNearScreen();
}

class RecentlyAffectedRoute extends GoRouteData with $RecentlyAffectedRoute {
  const RecentlyAffectedRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const RecentlyAffectedScreen();
}

@TypedGoRoute<FamilyDetailsRoute>(path: RoutePaths.familyDetails)
class FamilyDetailsRoute extends GoRouteData with $FamilyDetailsRoute {
  const FamilyDetailsRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const MaterialPage(
      child: FamilyDetailsScreen(),
      fullscreenDialog: true,
    );
  }
}

@TypedGoRoute<EventDetailsRoute>(path: RoutePaths.eventDetails)
class EventDetailsRoute extends GoRouteData with $EventDetailsRoute {
  const EventDetailsRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const MaterialPage(
      child: EventDetailsScreen(),
      fullscreenDialog: true,
    );
  }
}

@TypedGoRoute<OrderDetailsRoute>(path: RoutePaths.orderDetails)
class OrderDetailsRoute extends GoRouteData with $OrderDetailsRoute {
  const OrderDetailsRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const MaterialPage(
      child: OrderDetailsScreen(),
      fullscreenDialog: true,
    );
  }
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
      const OrdersScreen();
}

class DonaitingMyProfileRoute extends GoRouteData
    with $DonaitingMyProfileRoute {
  const DonaitingMyProfileRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const DonatingMyProfileScreen();
}

class DonatingPaymentAddNewCardRoute extends GoRouteData
    with $DonatingPaymentAddNewCardRoute {
  const DonatingPaymentAddNewCardRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const AddNewCardScreen();
}

class DonatingNotificationSettingsRoute extends GoRouteData
    with $DonatingNotificationSettingsRoute {
  const DonatingNotificationSettingsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const DonaitingNotificationSettingsScreen();
}

class ReceivingNotificationSettingsRoute extends GoRouteData
    with $ReceivingNotificationSettingsRoute {
  const ReceivingNotificationSettingsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ReceivingNotificationSettingsScreen();
}

class FamilyInformationRoute extends GoRouteData with $FamilyInformationRoute {
  const FamilyInformationRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => BlocProvider(
        create: (_) => getIt<RegisterFamilyPhotoBloc>(),
        child: const FamilyInformationScreen(),
      );
}

@TypedGoRoute<ReceivingOrderDetailsRoute>(
  path: RoutePaths.receivingOrderDetails,
)
class ReceivingOrderDetailsRoute extends GoRouteData
    with $ReceivingOrderDetailsRoute {
  const ReceivingOrderDetailsRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const MaterialPage(
      child: ReceivingOrderDetailsScreen(),
      fullscreenDialog: true,
    );
  }
}

class DonatingPaymentRoute extends GoRouteData with $DonatingPaymentRoute {
  const DonatingPaymentRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const DonatingPaymentScreen();
}

@TypedGoRoute<MyAccountRoute>(path: RoutePaths.myAccount)
class MyAccountRoute extends GoRouteData with $MyAccountRoute {
  const MyAccountRoute(this.redirectPath);
  final String redirectPath;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      MyAccountScreen(redirectPath: redirectPath);
}

@TypedGoRoute<ChangeEmailRoute>(path: RoutePaths.changeEmail)
class ChangeEmailRoute extends GoRouteData with $ChangeEmailRoute {
  const ChangeEmailRoute(this.redirectPath);
  final String redirectPath;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ChangeEmailScreen(redirectPath: redirectPath);
  }
}

@TypedGoRoute<ChangePasswordRoute>(path: RoutePaths.changePassword)
class ChangePasswordRoute extends GoRouteData with $ChangePasswordRoute {
  const ChangePasswordRoute(this.redirectPath);
  final String redirectPath;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ChangePasswordScreen(redirectPath: redirectPath);
  }
}

@TypedGoRoute<ConfirmEmailRoute>(path: RoutePaths.confirmEmail)
class ConfirmEmailRoute extends GoRouteData with $ConfirmEmailRoute {
  const ConfirmEmailRoute(this.redirectPath);
  final String redirectPath;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ConfirmEmailScreen(redirectPath: redirectPath);
  }
}

@TypedGoRoute<NotificationPermissionRoute>(
  path: RoutePaths.notificationPermission,
)
class NotificationPermissionRoute extends GoRouteData
    with $NotificationPermissionRoute {
  const NotificationPermissionRoute(this.items);
  final List<String> items;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return PushNotificationsPermissionScreen(items: items);
  }
}

@TypedGoRoute<LocationPermissionRoute>(
  path: RoutePaths.locationPermission,
)
class LocationPermissionRoute extends GoRouteData
    with $LocationPermissionRoute {
  const LocationPermissionRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LocationPermissionScreen();
  }
}

@TypedGoRoute<ItemDetailsRoute>(path: RoutePaths.itemDetails)
class ItemDetailsRoute extends GoRouteData with $ItemDetailsRoute {
  const ItemDetailsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ItemDetailsScreen();
  }
}

GoRouter createRouter() => GoRouter(
      initialLocation: RoutePaths.splash,
      routes: $appRoutes,
      navigatorKey: _rootNavigatorKey,
    );
