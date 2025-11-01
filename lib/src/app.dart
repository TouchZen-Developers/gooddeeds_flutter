import 'dart:async';
import 'dart:developer' as developer;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gooddeeds/features/auth/social/presentation/bloc/social_auth_bloc.dart';
import 'package:gooddeeds/l10n/app_localizations.dart';
import 'package:gooddeeds/shared/data/user_role.dart';
import 'package:gooddeeds/shared/services/deep_link_service.dart';
import 'package:gooddeeds/src/config/di/injector.dart';
import 'package:gooddeeds/src/config/routes/route_paths.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../shared/design_system/theme/app_theme.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key, required this.router});

  final GoRouter router;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  late final DeepLinkService _deepLinkService;
  String? _lastHandledUri;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);

    _deepLinkService = getIt<DeepLinkService>();
    _deepLinkService.initialize();

    // Listen to deep links
    _deepLinkService.deepLinkStream.listen((uri) {
      _handleDeepLink(uri);
    });

    // Check for initial deep link (when app is launched via deep link)
    _checkInitialLink();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // When app comes back from background (e.g., from browser)
    if (state == AppLifecycleState.resumed) {
      developer.log('📱 App resumed - checking for deep link...');
      // Only check initial link if we're actually awaiting a callback
      final socialAuthBloc = getIt<SocialAuthBloc>();
      final isAwaiting = socialAuthBloc.state.maybeWhen(
        awaitingCallback: () => true,
        orElse: () => false,
      );
      if (isAwaiting) {
        _checkInitialLink();
      }
    }
  }

  Future<void> _checkInitialLink() async {
    final initialUri = await _deepLinkService.getInitialLink();
    if (initialUri != null) {
      // If we already have a pending next_step, a stream deep link is being handled
      // Skip handling the initial link to avoid duplicate processing with different tokens
      final prefs = getIt<SharedPreferences>();
      final pendingNextStep = prefs.getString(kPrefPendingNextStep);
      if (pendingNextStep != null && pendingNextStep.isNotEmpty) {
        developer.log(
            '⏭️ Skipping initial link because a deep link is already pending');
        return;
      }
      _handleDeepLink(initialUri);
    } else {
      // If user backed out from browser and no deep link arrived, reset awaiting state
      final socialAuthBloc = getIt<SocialAuthBloc>();
      socialAuthBloc.state.maybeWhen(
        awaitingCallback: () => socialAuthBloc.resetState(),
        orElse: () {},
      );
    }
  }

  void _handleDeepLink(Uri uri) {
    // De-duplicate same deep link arriving via stream and initialLink
    if (_lastHandledUri == uri.toString()) {
      return;
    }
    _lastHandledUri = uri.toString();
    developer.log('🔗🔗🔗🔗🔗 DEEP LINK RECEIVED! 🔗🔗🔗🔗🔗');
    developer.log('Full URI: $uri');
    developer.log('Scheme: ${uri.scheme}');
    developer.log('Host: ${uri.host}');
    developer.log('Path: ${uri.path}');
    developer.log('Query: ${uri.query}');
    developer.log('Query Params: ${uri.queryParameters}');
    developer.log('🔗🔗🔗🔗🔗🔗🔗🔗🔗🔗🔗🔗🔗🔗🔗');

    // Check if this is a social auth callback
    if (uri.scheme == 'gooddeeds' &&
        uri.host == 'auth' &&
        uri.path == '/callback') {
      // Handle error callback first (e.g., error=social_auth_failed)
      final errCode = uri.queryParameters['error'];
      if (errCode != null && errCode.isNotEmpty) {
        final prefs = getIt<SharedPreferences>();
        // Save only the error code for cold start handling
        prefs.setString(kPrefPendingDeepLinkError, errCode);
        // Clear any pending next step to avoid conflicting navigation
        prefs.remove(kPrefPendingNextStep);

        // Try to show immediately if we have a navigator context
        final rootNavKey =
            getIt<GlobalKey<NavigatorState>>(instanceName: 'rootNavigatorKey');
        final rootCtx = rootNavKey.currentContext;
        if (rootCtx != null) {
          final overlay = Overlay.of(rootCtx, rootOverlay: true);
          if (overlay.mounted) {
            showTopSnackBar(
              overlay,
              CustomSnackBar.error(message: errCode),
            );
          } else {
            final messenger = ScaffoldMessenger.of(rootCtx)
              ..hideCurrentMaterialBanner()
              ..hideCurrentSnackBar();
            messenger.showMaterialBanner(
              MaterialBanner(
                content: Text(errCode),
                actions: [
                  TextButton(
                    onPressed: () => messenger.hideCurrentMaterialBanner(),
                    child: const Text('OK'),
                  ),
                ],
              ),
            );
          }
          // Reset social auth state so the button becomes enabled again
          getIt<SocialAuthBloc>().resetState();
          widget.router.go(RoutePaths.login);
        }
        return;
      }

      final token = uri.queryParameters['token'];
      final nextStep = uri.queryParameters['next_step'];

      developer.log(
        '✅ Valid auth callback! Token: ${token != null ? "✅" : "❌"}, NextStep: $nextStep',
      );

      if (token != null && nextStep != null) {
        // Set flag to indicate we're handling a deep link callback
        // This prevents SplashBloc from navigating
        final prefs = getIt<SharedPreferences>();
        prefs.setString(kPrefPendingNextStep, nextStep);

        // Get SocialAuthBloc and dispatch callback event
        final socialAuthBloc = getIt<SocialAuthBloc>();

        // Listen to state changes for navigation (one-time listener)
        late final StreamSubscription<SocialAuthState> subscription;
        subscription = socialAuthBloc.stream.listen((state) {
          state.maybeWhen(
            needsRoleBasedNavigation: (role) {
              developer.log('🚀 DeepLink: Navigating based on role: $role');
              // Navigate based on role
              if (role == 'beneficiary') {
                widget.router.go(RoutePaths.registerContactInfo);
              } else {
                // Donorr or default
                widget.router.go(RoutePaths.registerPersonalInfo);
              }
              subscription.cancel();
            },
            success: () {
              developer.log('🚀 DeepLink: Navigating to home (dashboard)');
              widget.router.go(RoutePaths.donaitingHome);
              subscription.cancel();
            },
            failure: (_) {
              subscription.cancel();
            },
            orElse: () {},
          );
        });

        socialAuthBloc.add(
          SocialAuthEvent.handleCallback(
            token: token,
            nextStep: nextStep,
          ),
        );
      }
    } else {
      developer.log('⚠️ This is NOT a valid auth callback URL');
      developer
          .log('Expected: gooddeeds://auth/callback?token=...&next_step=...');
      developer.log('Received: $uri');
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _deepLinkService.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SocialAuthBloc, SocialAuthState>(
      bloc: getIt<SocialAuthBloc>(),
      listener: (context, state) {
        state.maybeWhen(
          needsRoleBasedNavigation: (role) {
            // Navigate based on role
            if (role == 'beneficiary') {
              widget.router.go(RoutePaths.registerContactInfo);
            } else {
              // Donorr or default
              widget.router.go(RoutePaths.registerPersonalInfo);
            }
          },
          success: () {
            // Navigate to home for dashboard
            widget.router.go(RoutePaths.donaitingHome);
          },
          orElse: () {},
        );
      },
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: buildLightTheme(),
        darkTheme: buildDarkTheme(),
        themeMode: ThemeMode.light,
        routerConfig: widget.router,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
      ),
    );
  }
}
