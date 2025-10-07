import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gooddeeds/shared/design_system/components/email_field.dart';
import 'package:gooddeeds/shared/design_system/components/password_field.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/tokens/colors.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';
import 'package:gooddeeds/shared/design_system/utils/validators.dart';

import '../../../../../src/config/routes/app_router.dart';
import '../../../splash/presentation/widgets/splash_brand.dart';
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

    return BlocListener<LoginBloc, LoginState>(
      listenWhen: (p, c) => p.success != c.success && c.success == true,
      listener: (context, state) {
        const DonatingHomeRoute().go(context);
      },
      child: Scaffold(
        bottomNavigationBar: const LoginBottomBar(),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.fromLTRB(gaps.xl, gaps.lg, gaps.xl, gaps.xl),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: gaps.xxl),
                const Center(child: SplashBrand()),
                SizedBox(height: gaps.xl * 1.2),

                Text(
                  context.loc.login,
                  style: text.heading3.copyWith(color: BrandTones.grey100),
                ),
                const SizedBox(height: 8),
                Text(
                  context.loc.loginSubtitle,
                  style: text.bodyMediumRegular.copyWith(
                    color: BrandTones.grey70,
                  ),
                ),
                SizedBox(height: gaps.xl),

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

                SizedBox(height: gaps.md),

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

                SizedBox(height: gaps.lg),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      // TODO: Forgot password route
                    },
                    child: Text(
                      context.loc.forgotPassword,
                      style: text.bodySmallMedium.copyWith(
                        color: BrandTones.secondary,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
