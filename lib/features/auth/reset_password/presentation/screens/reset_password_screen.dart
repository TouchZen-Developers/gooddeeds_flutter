import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:gooddeeds/shared/design_system/components/gd_back_button_icon.dart';
import 'package:gooddeeds/shared/design_system/components/password_field.dart';
import 'package:gooddeeds/shared/design_system/components/primary_button.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/tokens/colors.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';
import 'package:gooddeeds/shared/design_system/utils/validators.dart';
import 'package:gooddeeds/src/config/routes/app_router.dart';

import '../../../../../shared/design_system/components/gd_simple_action_dialog.dart';
import '../bloc/reset_password_bloc.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final _passCtrl = TextEditingController();
  final _confirmCtrl = TextEditingController();

  @override
  void dispose() {
    _passCtrl.dispose();
    _confirmCtrl.dispose();
    super.dispose();
  }

  String? _passwordErrorFor(String password) {
    if (password.isEmpty) return context.loc.passwordRequired;
    if (!password.isValidPassword) {
      return password.passwordValidationError;
    }
    return null;
  }

  String? _confirmErrorFor(String pass, String confirm) {
    if (confirm.isEmpty) return context.loc.confirmPasswordRequired;
    if (pass != confirm) return context.loc.passwordsDoNotMatch;
    return null;
  }

  void _onSubmit(BuildContext context) {
    final bloc = context.read<ResetPasswordBloc>();

    bloc
      ..add(ResetPasswordEvent.newPasswordChanged(_passCtrl.text))
      ..add(ResetPasswordEvent.confirmChanged(_confirmCtrl.text))
      ..add(const ResetPasswordEvent.submitted());
  }

  @override
  Widget build(BuildContext context) {
    final gaps = context.gaps;
    final text = context.textStyle;
    final loc = context.loc;

    return BlocListener<ResetPasswordBloc, ResetPasswordState>(
      listenWhen: (p, c) => p.success != c.success,
      listener: (context, state) {
        if (state.success == true) {
          showDialog<void>(
            context: context,
            barrierDismissible: false,
            builder: (_) => GDSimpleActionDialog(
              title: '${context.loc.success}!',
              message: context.loc.nowYouCanLogin,
              actionLabel: context.loc.signInNow,
              onAction: () {
                Navigator.of(context).pop();
                const LoginRoute().go(context);
              },
            ),
          );
        }
      },
      child: Scaffold(
        bottomNavigationBar: SafeArea(
          child: Padding(
            padding: EdgeInsets.fromLTRB(gaps.xl, 0, gaps.xl, gaps.lg),
            child: BlocBuilder<ResetPasswordBloc, ResetPasswordState>(
              buildWhen: (p, c) =>
                  p.newPassword != c.newPassword ||
                  p.confirmPassword != c.confirmPassword ||
                  p.isSubmitting != c.isSubmitting ||
                  p.showErrors != c.showErrors,
              builder: (context, state) {
                final passErr = state.showErrors
                    ? _passwordErrorFor(state.newPassword)
                    : null;
                final confirmErr = state.showErrors
                    ? _confirmErrorFor(state.newPassword, state.confirmPassword)
                    : null;

                final canPress = passErr == null &&
                    confirmErr == null &&
                    !state.isSubmitting;

                return PrimaryButton(
                  label: loc.resetPasswordCta,
                  size: ButtonSize.large,
                  fullWidth: true,
                  loading: state.isSubmitting,
                  onPressed: canPress ? () => _onSubmit(context) : null,
                );
              },
            ),
          ),
        ),
        body: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                padding:
                    EdgeInsets.fromLTRB(gaps.xl, gaps.lg, gaps.xl, gaps.xl * 2),
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GDBackButtonIcon(
                        onBack: () => context.pop(),
                      ),
                      Gap(gaps.xxl),
                      Text(
                        loc.createNewPasswordTitle,
                        style:
                            text.heading3.copyWith(color: BrandTones.grey100),
                      ),
                      const Gap(8),
                      Text(
                        loc.createNewPasswordDesc,
                        style: text.bodyMediumRegular.copyWith(
                          color: BrandTones.grey70,
                        ),
                      ),
                      Gap(gaps.xxl),
                      BlocBuilder<ResetPasswordBloc, ResetPasswordState>(
                        buildWhen: (p, c) =>
                            p.newPassword != c.newPassword ||
                            p.showErrors != c.showErrors,
                        builder: (context, state) {
                          final errorText = state.showErrors
                              ? _passwordErrorFor(state.newPassword)
                              : null;
                          return PasswordField(
                            controller: _passCtrl,
                            label: loc.newPasswordLabel,
                            hint: loc.passwordHint,
                            errorText: errorText,
                            onChanged: (v) => context
                                .read<ResetPasswordBloc>()
                                .add(ResetPasswordEvent.newPasswordChanged(v)),
                          );
                        },
                      ),
                      Gap(gaps.lg),
                      BlocBuilder<ResetPasswordBloc, ResetPasswordState>(
                        buildWhen: (p, c) =>
                            p.confirmPassword != c.confirmPassword ||
                            p.newPassword != c.newPassword ||
                            p.showErrors != c.showErrors,
                        builder: (context, state) {
                          final errorText = state.showErrors
                              ? _confirmErrorFor(
                                  state.newPassword,
                                  state.confirmPassword,
                                )
                              : null;
                          return PasswordField(
                            controller: _confirmCtrl,
                            label: loc.confirmPasswordTitle,
                            hint: loc.confirmPasswordSub,
                            errorText: errorText,
                            onChanged: (v) => context
                                .read<ResetPasswordBloc>()
                                .add(ResetPasswordEvent.confirmChanged(v)),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
