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
      $addNewCardCheckoutRoute,
      $registerEmailRoute,
      $registerPersonalInfoRoute,
      $registerContactInfoRoute,
      $registerImpactRoute,
      $registerFamilyPhotoRoute,
      $applicationPendingRoute,
      $loginRoute,
      $forgotPasswordRoute,
      $forgotVerifyCodeRoute,
      $resetPasswordRoute,
      $appStatfulShellWithNavigationRouteData,
      $familyDetailsRoute,
      $eventDetailsRoute,
      $orderDetailsRoute,
      $changeEmailRoute,
      $confirmEmailRoute,
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

RouteBase get $addNewCardCheckoutRoute => GoRouteData.$route(
      path: '/checkout_add_new_card',
      factory: $AddNewCardCheckoutRoute._fromState,
    );

mixin $AddNewCardCheckoutRoute on GoRouteData {
  static AddNewCardCheckoutRoute _fromState(GoRouterState state) =>
      AddNewCardCheckoutRoute();

  @override
  String get location => GoRouteData.$location(
        '/checkout_add_new_card',
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
      RegisterPersonalInfoRoute(
        email: state.uri.queryParameters['email'],
        password: state.uri.queryParameters['password'],
        passwordConfirmation:
            state.uri.queryParameters['password-confirmation'],
      );

  RegisterPersonalInfoRoute get _self => this as RegisterPersonalInfoRoute;

  @override
  String get location => GoRouteData.$location(
        '/register_personal_info',
        queryParams: {
          if (_self.email != null) 'email': _self.email,
          if (_self.password != null) 'password': _self.password,
          if (_self.passwordConfirmation != null)
            'password-confirmation': _self.passwordConfirmation,
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

RouteBase get $registerFamilyPhotoRoute => GoRouteData.$route(
      path: '/register/family-photo',
      factory: $RegisterFamilyPhotoRoute._fromState,
    );

mixin $RegisterFamilyPhotoRoute on GoRouteData {
  static RegisterFamilyPhotoRoute _fromState(GoRouterState state) =>
      const RegisterFamilyPhotoRoute();

  @override
  String get location => GoRouteData.$location(
        '/register/family-photo',
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

RouteBase get $applicationPendingRoute => GoRouteData.$route(
      path: '/register/pending',
      factory: $ApplicationPendingRoute._fromState,
    );

mixin $ApplicationPendingRoute on GoRouteData {
  static ApplicationPendingRoute _fromState(GoRouterState state) =>
      const ApplicationPendingRoute();

  @override
  String get location => GoRouteData.$location(
        '/register/pending',
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

RouteBase get $forgotPasswordRoute => GoRouteData.$route(
      path: '/forgot-password',
      factory: $ForgotPasswordRoute._fromState,
    );

mixin $ForgotPasswordRoute on GoRouteData {
  static ForgotPasswordRoute _fromState(GoRouterState state) =>
      const ForgotPasswordRoute();

  @override
  String get location => GoRouteData.$location(
        '/forgot-password',
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

RouteBase get $forgotVerifyCodeRoute => GoRouteData.$route(
      path: '/forgot-password/verify',
      factory: $ForgotVerifyCodeRoute._fromState,
    );

mixin $ForgotVerifyCodeRoute on GoRouteData {
  static ForgotVerifyCodeRoute _fromState(GoRouterState state) =>
      ForgotVerifyCodeRoute(
        email: state.uri.queryParameters['email']!,
      );

  ForgotVerifyCodeRoute get _self => this as ForgotVerifyCodeRoute;

  @override
  String get location => GoRouteData.$location(
        '/forgot-password/verify',
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

RouteBase get $resetPasswordRoute => GoRouteData.$route(
      path: '/forgot-password/reset',
      factory: $ResetPasswordRoute._fromState,
    );

mixin $ResetPasswordRoute on GoRouteData {
  static ResetPasswordRoute _fromState(GoRouterState state) =>
      const ResetPasswordRoute();

  @override
  String get location => GoRouteData.$location(
        '/forgot-password/reset',
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
                  path: 'family_list_near',
                  factory: $FamilyListNearRoute._fromState,
                ),
                GoRouteData.$route(
                  path: 'recently_affected',
                  factory: $RecentlyAffectedRoute._fromState,
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
              routes: [
                GoRouteData.$route(
                  path: '/order_details_dialog',
                  factory: $OrderDetailsRoute._fromState,
                ),
              ],
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
              routes: [
                GoRouteData.$route(
                  path: 'donaiting_my_account',
                  factory: $DonatingMyAccountRoute._fromState,
                ),
                GoRouteData.$route(
                  path: 'donaiting_payment',
                  factory: $DonatingPaymentRoute._fromState,
                ),
                GoRouteData.$route(
                  path: 'donaiting_payment_add_new_card',
                  factory: $DonatingPaymentAddNewCardRoute._fromState,
                ),
                GoRouteData.$route(
                  path: 'donaiting_notification_settings',
                  factory: $DonatingNotificationSettingsRoute._fromState,
                ),
              ],
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

mixin $FamilyListNearRoute on GoRouteData {
  static FamilyListNearRoute _fromState(GoRouterState state) =>
      const FamilyListNearRoute();

  @override
  String get location => GoRouteData.$location(
        '/donaiting_home/family_list_near',
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

mixin $RecentlyAffectedRoute on GoRouteData {
  static RecentlyAffectedRoute _fromState(GoRouterState state) =>
      const RecentlyAffectedRoute();

  @override
  String get location => GoRouteData.$location(
        '/donaiting_home/recently_affected',
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

mixin $OrderDetailsRoute on GoRouteData {
  static OrderDetailsRoute _fromState(GoRouterState state) =>
      const OrderDetailsRoute();

  @override
  String get location => GoRouteData.$location(
        '/order_details_dialog',
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

mixin $DonatingMyAccountRoute on GoRouteData {
  static DonatingMyAccountRoute _fromState(GoRouterState state) =>
      const DonatingMyAccountRoute();

  @override
  String get location => GoRouteData.$location(
        '/donaiting_profile/donaiting_my_account',
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

mixin $DonatingPaymentRoute on GoRouteData {
  static DonatingPaymentRoute _fromState(GoRouterState state) =>
      const DonatingPaymentRoute();

  @override
  String get location => GoRouteData.$location(
        '/donaiting_profile/donaiting_payment',
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

mixin $DonatingPaymentAddNewCardRoute on GoRouteData {
  static DonatingPaymentAddNewCardRoute _fromState(GoRouterState state) =>
      const DonatingPaymentAddNewCardRoute();

  @override
  String get location => GoRouteData.$location(
        '/donaiting_profile/donaiting_payment_add_new_card',
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

mixin $DonatingNotificationSettingsRoute on GoRouteData {
  static DonatingNotificationSettingsRoute _fromState(GoRouterState state) =>
      const DonatingNotificationSettingsRoute();

  @override
  String get location => GoRouteData.$location(
        '/donaiting_profile/donaiting_notification_settings',
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

RouteBase get $familyDetailsRoute => GoRouteData.$route(
      path: '/family_details_dialog',
      factory: $FamilyDetailsRoute._fromState,
    );

mixin $FamilyDetailsRoute on GoRouteData {
  static FamilyDetailsRoute _fromState(GoRouterState state) =>
      const FamilyDetailsRoute();

  @override
  String get location => GoRouteData.$location(
        '/family_details_dialog',
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

RouteBase get $eventDetailsRoute => GoRouteData.$route(
      path: '/event_details_dialog',
      factory: $EventDetailsRoute._fromState,
    );

mixin $EventDetailsRoute on GoRouteData {
  static EventDetailsRoute _fromState(GoRouterState state) =>
      const EventDetailsRoute();

  @override
  String get location => GoRouteData.$location(
        '/event_details_dialog',
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

RouteBase get $orderDetailsRoute => GoRouteData.$route(
      path: '/order_details_dialog',
      factory: $OrderDetailsRoute._fromState,
    );

RouteBase get $changeEmailRoute => GoRouteData.$route(
      path: '/change_email',
      factory: $ChangeEmailRoute._fromState,
    );

mixin $ChangeEmailRoute on GoRouteData {
  static ChangeEmailRoute _fromState(GoRouterState state) =>
      const ChangeEmailRoute();

  @override
  String get location => GoRouteData.$location(
        '/change_email',
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

RouteBase get $confirmEmailRoute => GoRouteData.$route(
      path: '/confirm_email',
      factory: $ConfirmEmailRoute._fromState,
    );

mixin $ConfirmEmailRoute on GoRouteData {
  static ConfirmEmailRoute _fromState(GoRouterState state) =>
      const ConfirmEmailRoute();

  @override
  String get location => GoRouteData.$location(
        '/confirm_email',
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
