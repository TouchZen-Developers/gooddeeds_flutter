import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:gooddeeds/features/auth/register/email/presentation/bloc/register_email_bloc.dart';
import 'package:gooddeeds/shared/design_system/components/email_field.dart';
import 'package:gooddeeds/shared/design_system/components/password_field.dart';
import 'package:gooddeeds/shared/design_system/components/primary_button.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';
import 'package:gooddeeds/shared/design_system/utils/validators.dart';
import 'package:gooddeeds/src/config/routes/app_router.dart';

import '../components/step_header.dart';

class RegisterEmailScreen extends StatefulWidget {
  const RegisterEmailScreen({super.key});

  @override
  State<RegisterEmailScreen> createState() => _RegisterEmailScreenState();
}

class _RegisterEmailScreenState extends State<RegisterEmailScreen> {
  final _emailCtrl = TextEditingController();
  final _passCtrl = TextEditingController();
  final _confirmCtrl = TextEditingController();

  @override
  void dispose() {
    _emailCtrl.dispose();
    _passCtrl.dispose();
    _confirmCtrl.dispose();
    super.dispose();
  }

  String? _emailErrorFor(String email) {
    final v = email.trim();
    if (v.isEmpty) return context.loc.emailRequired;
    if (!v.isValidEmail) return context.loc.enterValidEmail;
    return null;
  }

  String? _passwordErrorFor(String password) {
    if (password.isEmpty) return context.loc.passwordRequired;
    if (password.length < 6) return context.loc.passwordMinChars;
    return null;
  }

  String? _confirmErrorFor(String pass, String confirm) {
    if (confirm.isEmpty) return context.loc.confirmPasswordRequired;
    if (pass != confirm) return context.loc.passwordsDoNotMatch;
    return null;
  }

  void _onContinue(BuildContext context) {
    final bloc = context.read<RegisterEmailBloc>();

    final email = _emailCtrl.text.trim();
    final pass = _passCtrl.text;
    final confirm = _confirmCtrl.text;

    bloc
      ..add(RegisterEmailEvent.emailChanged(email))
      ..add(RegisterEmailEvent.passwordChanged(pass))
      ..add(RegisterEmailEvent.confirmPasswordChanged(confirm))
      ..add(const RegisterEmailEvent.submitted());

    final emailErr = _emailErrorFor(email);
    final passErr = _passwordErrorFor(pass);
    final confirmErr = _confirmErrorFor(pass, confirm);

    if (emailErr == null && passErr == null && confirmErr == null) {
      VerifyEmailRoute(email: email).push(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    final gaps = context.gaps;

    return Scaffold(
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(gaps.xl, 0, gaps.xl, gaps.lg),
          child: PrimaryButton(
            label: context.loc.continueText,
            size: ButtonSize.large,
            fullWidth: true,
            onPressed: () => _onContinue(context),
          ),
        ),
      ),
      body: SafeArea(
        child: BlocBuilder<RegisterEmailBloc, RegisterEmailState>(
          builder: (context, state) {
            final bloc = context.read<RegisterEmailBloc>();

            final emailErr =
                state.showErrorMessages ? _emailErrorFor(state.email) : null;
            final passErr = state.showErrorMessages
                ? _passwordErrorFor(state.password)
                : null;
            final confirmErr = state.showErrorMessages
                ? _confirmErrorFor(state.password, state.confirmPassword)
                : null;

            return LayoutBuilder(
              builder: (context, constraints) {
                return SingleChildScrollView(
                  padding: EdgeInsets.fromLTRB(
                    gaps.xl,
                    gaps.md,
                    gaps.xl,
                    gaps.xl * 3,
                  ),
                  child: ConstrainedBox(
                    constraints:
                        BoxConstraints(minHeight: constraints.maxHeight),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        StepHeader(
                          currentStep: 1,
                          totalSteps: 5,
                          onBack: () => Navigator.of(context).pop(),
                        ),
                        Gap(gaps.xl),
                        EmailField(
                          controller: _emailCtrl,
                          errorText: emailErr,
                          onChanged: (v) => bloc.add(
                            RegisterEmailEvent.emailChanged(v.trim()),
                          ),
                        ),
                        Gap(gaps.lg),
                        PasswordField(
                          controller: _passCtrl,
                          label: context.loc.password,
                          hint: context.loc.enterPassword,
                          errorText: passErr,
                          onChanged: (v) => bloc.add(
                            RegisterEmailEvent.passwordChanged(v),
                          ),
                        ),
                        Gap(gaps.lg),
                        PasswordField(
                          controller: _confirmCtrl,
                          label: context.loc.confirmPasswordTitle,
                          hint: context.loc.confirmPasswordSub,
                          errorText: confirmErr,
                          onChanged: (v) => bloc.add(
                            RegisterEmailEvent.confirmPasswordChanged(v),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
