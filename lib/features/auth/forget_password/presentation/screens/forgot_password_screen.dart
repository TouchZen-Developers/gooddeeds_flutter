import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:gooddeeds/shared/design_system/components/email_field.dart';
import 'package:gooddeeds/shared/design_system/components/gd_back_button_icon.dart';
import 'package:gooddeeds/shared/design_system/components/primary_button.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/tokens/colors.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';
import 'package:gooddeeds/src/config/routes/app_router.dart';

import '../../../../../gen/assets.gen.dart';
import '../bloc/forgot_password_bloc.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final _emailCtrl = TextEditingController();

  @override
  void dispose() {
    _emailCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final gaps = context.gaps;
    final text = context.textStyle;
    final loc = context.loc;

    return BlocListener<ForgotPasswordBloc, ForgotPasswordState>(
      listenWhen: (p, c) => p.success != c.success,
      listener: (context, state) {
        if (state.success == true) {
          ForgotVerifyCodeRoute(email: state.email).push(context);
        } else if (state.success == false) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(loc.failedToSendCode)),
          );
        }
      },
      child: Scaffold(
        bottomNavigationBar: SafeArea(
          child: Padding(
            padding: EdgeInsets.fromLTRB(gaps.xl, 0, gaps.xl, gaps.lg),
            child: BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
              builder: (context, state) {
                final canPress = !state.isSubmitting;
                return PrimaryButton(
                  label: loc.sendCode,
                  size: ButtonSize.large,
                  fullWidth: true,
                  onPressed: canPress ? () => _onContinue(context) : null,
                  // loading: state.isSubmitting,
                );
              },
            ),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.fromLTRB(gaps.xl, gaps.lg, gaps.xl, gaps.xl),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GDBackButtonIcon(
                  onBack: () => context.pop(),
                ),
                SizedBox(height: gaps.xxl),
                Center(
                  child: Assets.images.forgetPassword.svg(
                    height: 140,
                    width: 200,
                  ),
                ),
                const Gap(72),
                Text(
                  loc.forgotPasswordTitle,
                  style: text.heading3.copyWith(color: BrandTones.grey100),
                ),
                const Gap(16),
                Text(
                  loc.forgotPasswordDesc,
                  style:
                      text.bodyMediumRegular.copyWith(color: BrandTones.grey80),
                ),
                Gap(gaps.xl),
                BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
                  buildWhen: (p, c) =>
                      p.email != c.email || p.showErrors != c.showErrors,
                  builder: (context, state) {
                    final errorText = state.showErrors && !state.isEmailValid
                        ? loc.enterValidEmail
                        : null;
                    return EmailField(
                      controller: _emailCtrl,
                      errorText: errorText,
                      hint: loc.enterYourEmail,
                      onChanged: (v) => context
                          .read<ForgotPasswordBloc>()
                          .add(ForgotPasswordEvent.emailChanged(v)),
                    );
                  },
                ),
                Gap(gaps.xxl * 2),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onContinue(BuildContext context) {
    final bloc = context.read<ForgotPasswordBloc>();
    if (!bloc.state.isEmailValid) {
      bloc.add(const ForgotPasswordEvent.markShowErrors());
      return;
    }
    bloc.add(const ForgotPasswordEvent.submitted());
  }
}
