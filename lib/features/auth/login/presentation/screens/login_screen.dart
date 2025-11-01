import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:gooddeeds/features/auth/social/presentation/bloc/social_auth_bloc.dart';
import 'package:gooddeeds/shared/design_system/components/email_field.dart';
import 'package:gooddeeds/shared/design_system/components/gd_back_button_icon.dart';
import 'package:gooddeeds/shared/design_system/components/password_field.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/tokens/colors.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';
import 'package:gooddeeds/shared/design_system/utils/validators.dart';
import 'package:gooddeeds/src/config/di/injector.dart';

import '../../../../../src/config/routes/app_router.dart';
import '../../../../splash/presentation/widgets/splash_brand.dart';
import '../bloc/login_bloc.dart';
import '../widgets/login_bottom_bar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailCtrl = TextEditingController();
  final _passCtrl = TextEditingController();

  @override
  void dispose() {
    _emailCtrl.dispose();
    _passCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final gaps = context.gaps;
    final text = context.textStyle;

    return BlocProvider.value(
      value: getIt<SocialAuthBloc>(),
      child: MultiBlocListener(
        listeners: [
          BlocListener<LoginBloc, LoginState>(
            listenWhen: (p, c) => p.success != c.success && c.success == true,
            listener: (context, state) {
              if (state.success == true) {
                const DonatingHomeRoute().go(context);
              }
              // Error snackbar is shown automatically by ErrorInterceptor
            },
          ),
          BlocListener<SocialAuthBloc, SocialAuthState>(
            listener: (context, state) {
              state.when(
                initial: () {},
                awaitingCallback: () {},
                loading: () {},
                needsProfileCompletion: (user) {},
                needsRoleBasedNavigation: (role) {},
                success: () {},
                failure: (message) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(message),
                      backgroundColor: BrandTones.red,
                    ),
                  );
                },
              );
            },
          ),
        ],
        child: Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              padding: EdgeInsets.fromLTRB(gaps.xl, gaps.lg, gaps.xl, gaps.xl),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const GDBackButtonIcon(),
                  Gap(gaps.md),
                  const Center(child: SplashBrand()),
                  Gap(gaps.xl * 1.2),

                  Text(
                    context.loc.login,
                    style: text.heading3.copyWith(color: BrandTones.grey100),
                  ),
                  const Gap(8),
                  Text(
                    context.loc.loginSubtitle,
                    style: text.bodyMediumRegular.copyWith(
                      color: BrandTones.grey70,
                    ),
                  ),
                  Gap(gaps.xl),

                  // Email
                  BlocBuilder<LoginBloc, LoginState>(
                    buildWhen: (p, c) =>
                        p.email != c.email ||
                        p.showErrors != c.showErrors ||
                        p.emailError != c.emailError,
                    builder: (context, state) {
                      final localInvalid =
                          state.showErrors && !state.email.isValidEmail;
                      final errorText = state.emailError ??
                          (localInvalid ? context.loc.enterValidEmail : null);
                      return EmailField(
                        controller: _emailCtrl,
                        errorText: errorText,
                        onChanged: (v) => context
                            .read<LoginBloc>()
                            .add(LoginEvent.emailChanged(v)),
                      );
                    },
                  ),

                  Gap(gaps.md),

                  // Password
                  BlocBuilder<LoginBloc, LoginState>(
                    buildWhen: (p, c) =>
                        p.password != c.password ||
                        p.showErrors != c.showErrors ||
                        p.passwordError != c.passwordError,
                    builder: (context, state) {
                      final localInvalid =
                          state.showErrors && state.password.trim().isEmpty;
                      final errorText = state.passwordError ??
                          (localInvalid ? context.loc.enterPassword : null);
                      return PasswordField(
                        controller: _passCtrl,
                        errorText: errorText,
                        onChanged: (v) => context
                            .read<LoginBloc>()
                            .add(LoginEvent.passwordChanged(v)),
                      );
                    },
                  ),

                  Gap(gaps.xs),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        const ForgotPasswordRoute().push(context);
                      },
                      child: Text(
                        context.loc.forgotPassword,
                        style: text.bodySmallMedium.copyWith(
                          color: context.colors.secondary,
                        ),
                      ),
                    ),
                  ),

                  Gap(gaps.xl),

                  // Login button and social login - now part of scroll
                  const LoginBottomBar(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
