// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $splashRoute,
      $infoOnboardingRoute,
      $registerChoiceRoute,
      $registerMenuRoute,
      $checkoutRoute,
      $registerEmailRoute,
      $registerPersonalInfoRoute,
      $registerContactInfoRoute,
      $registerImpactRoute,
      $loginRoute,
      $appStatfulShellWithNavigationRouteData,
    ];

RouteBase get $splashRoute => GoRouteData.$route(
      path: '/',
      factory: $SplashRoute._fromState,
    );

mixin $SplashRoute on GoRouteData {
  static SplashRoute _fromState(GoRouterState state) => SplashRoute();

  @override
  String get location => GoRouteData.$location(
        '/',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $infoOnboardingRoute => GoRouteData.$route(
      path: '/info',
      factory: $InfoOnboardingRoute._fromState,
    );

mixin $InfoOnboardingRoute on GoRouteData {
  static InfoOnboardingRoute _fromState(GoRouterState state) =>
      InfoOnboardingRoute();

  @override
  String get location => GoRouteData.$location(
        '/info',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $registerChoiceRoute => GoRouteData.$route(
      path: '/register_choice',
      factory: $RegisterChoiceRoute._fromState,
    );

mixin $RegisterChoiceRoute on GoRouteData {
  static RegisterChoiceRoute _fromState(GoRouterState state) =>
      RegisterChoiceRoute();

  @override
  String get location => GoRouteData.$location(
        '/register_choice',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $registerMenuRoute => GoRouteData.$route(
      path: '/register_menu',
      factory: $RegisterMenuRoute._fromState,
    );

mixin $RegisterMenuRoute on GoRouteData {
  static RegisterMenuRoute _fromState(GoRouterState state) =>
      RegisterMenuRoute();

  @override
  String get location => GoRouteData.$location(
        '/register_menu',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $checkoutRoute => GoRouteData.$route(
      path: '/checkout',
      factory: $CheckoutRoute._fromState,
    );

mixin $CheckoutRoute on GoRouteData {
  static CheckoutRoute _fromState(GoRouterState state) => CheckoutRoute();

  @override
  String get location => GoRouteData.$location(
        '/checkout',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $registerEmailRoute => GoRouteData.$route(
      path: '/register_email',
      factory: $RegisterEmailRoute._fromState,
      routes: [
        GoRouteData.$route(
          path: 'verify',
          factory: $VerifyEmailRoute._fromState,
        ),
      ],
    );

mixin $RegisterEmailRoute on GoRouteData {
  static RegisterEmailRoute _fromState(GoRouterState state) =>
      const RegisterEmailRoute();

  @override
  String get location => GoRouteData.$location(
        '/register_email',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $VerifyEmailRoute on GoRouteData {
  static VerifyEmailRoute _fromState(GoRouterState state) => VerifyEmailRoute(
        email: state.uri.queryParameters['email']!,
      );

  VerifyEmailRoute get _self => this as VerifyEmailRoute;

  @override
  String get location => GoRouteData.$location(
        '/register_email/verify',
        queryParams: {
          'email': _self.email,
        },
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $registerPersonalInfoRoute => GoRouteData.$route(
      path: '/register_personal_info',
      factory: $RegisterPersonalInfoRoute._fromState,
    );

mixin $RegisterPersonalInfoRoute on GoRouteData {
  static RegisterPersonalInfoRoute _fromState(GoRouterState state) =>
      const RegisterPersonalInfoRoute();

  @override
  String get location => GoRouteData.$location(
        '/register_personal_info',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $registerContactInfoRoute => GoRouteData.$route(
      path: '/register_contact_info',
      factory: $RegisterContactInfoRoute._fromState,
    );

mixin $RegisterContactInfoRoute on GoRouteData {
  static RegisterContactInfoRoute _fromState(GoRouterState state) =>
      const RegisterContactInfoRoute();

  @override
  String get location => GoRouteData.$location(
        '/register_contact_info',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $registerImpactRoute => GoRouteData.$route(
      path: '/register_impact',
      factory: $RegisterImpactRoute._fromState,
    );

mixin $RegisterImpactRoute on GoRouteData {
  static RegisterImpactRoute _fromState(GoRouterState state) =>
      const RegisterImpactRoute();

  @override
  String get location => GoRouteData.$location(
        '/register_impact',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $loginRoute => GoRouteData.$route(
      path: '/login',
      factory: $LoginRoute._fromState,
    );

mixin $LoginRoute on GoRouteData {
  static LoginRoute _fromState(GoRouterState state) => const LoginRoute();

  @override
  String get location => GoRouteData.$location(
        '/login',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $appStatfulShellWithNavigationRouteData =>
    StatefulShellRouteData.$route(
      restorationScopeId:
          AppStatfulShellWithNavigationRouteData.$restorationScopeId,
      factory: $AppStatfulShellWithNavigationRouteDataExtension._fromState,
      branches: [
        StatefulShellBranchData.$branch(
          navigatorKey: DonatingHomeBranch.$navigatorKey,
          restorationScopeId: DonatingHomeBranch.$restorationScopeId,
          routes: [
            GoRouteData.$route(
              path: '/donaiting_home',
              factory: $DonatingHomeRoute._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'family_list',
                  factory: $FamilyListRoute._fromState,
                ),
                GoRouteData.$route(
                  path: 'family_details',
                  factory: $FamilyDetailsRoute._fromState,
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          navigatorKey: MyCartBranch.$navigatorKey,
          restorationScopeId: MyCartBranch.$restorationScopeId,
          routes: [
            GoRouteData.$route(
              path: '/donaiting_my_cart',
              factory: $MyCartRoute._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          navigatorKey: OrdersBranch.$navigatorKey,
          restorationScopeId: OrdersBranch.$restorationScopeId,
          routes: [
            GoRouteData.$route(
              path: '/donaiting_orders',
              factory: $OrdersRoute._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          navigatorKey: DonaitingMyProfileBranch.$navigatorKey,
          restorationScopeId: DonaitingMyProfileBranch.$restorationScopeId,
          routes: [
            GoRouteData.$route(
              path: '/donaiting_profile',
              factory: $DonaitingMyProfileRoute._fromState,
            ),
          ],
        ),
      ],
    );

extension $AppStatfulShellWithNavigationRouteDataExtension
    on AppStatfulShellWithNavigationRouteData {
  static AppStatfulShellWithNavigationRouteData _fromState(
          GoRouterState state) =>
      const AppStatfulShellWithNavigationRouteData();
}

mixin $DonatingHomeRoute on GoRouteData {
  static DonatingHomeRoute _fromState(GoRouterState state) =>
      const DonatingHomeRoute();

  @override
  String get location => GoRouteData.$location(
        '/donaiting_home',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $FamilyListRoute on GoRouteData {
  static FamilyListRoute _fromState(GoRouterState state) =>
      const FamilyListRoute();

  @override
  String get location => GoRouteData.$location(
        '/donaiting_home/family_list',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $FamilyDetailsRoute on GoRouteData {
  static FamilyDetailsRoute _fromState(GoRouterState state) =>
      const FamilyDetailsRoute();

  @override
  String get location => GoRouteData.$location(
        '/donaiting_home/family_details',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $MyCartRoute on GoRouteData {
  static MyCartRoute _fromState(GoRouterState state) => const MyCartRoute();

  @override
  String get location => GoRouteData.$location(
        '/donaiting_my_cart',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $OrdersRoute on GoRouteData {
  static OrdersRoute _fromState(GoRouterState state) => const OrdersRoute();

  @override
  String get location => GoRouteData.$location(
        '/donaiting_orders',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $DonaitingMyProfileRoute on GoRouteData {
  static DonaitingMyProfileRoute _fromState(GoRouterState state) =>
      const DonaitingMyProfileRoute();

  @override
  String get location => GoRouteData.$location(
        '/donaiting_profile',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}
