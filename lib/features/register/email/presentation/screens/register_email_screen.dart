import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gooddeeds/features/register/email/presentation/bloc/register_email_bloc.dart';

// Design system imports
import 'package:gooddeeds/shared/design_system/components/primary_button.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';

// Custom fields
import 'package:gooddeeds/shared/design_system/components/email_field.dart';
import 'package:gooddeeds/shared/design_system/components/password_field.dart';

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
    if (email.isEmpty) return "Email is required";
    final re = RegExp(r'^[\w\.-]+@([\w-]+\.)+[\w-]{2,}$');
    if (!re.hasMatch(email)) return "Enter a valid email";
    return null;
  }

  String? _passwordErrorFor(String password) {
    if (password.isEmpty) return "Password is required";
    if (password.length < 6) return "Use at least 6 characters";
    return null;
  }

  String? _confirmErrorFor(String pass, String confirm) {
    if (confirm.isEmpty) return "Please re-enter password";
    if (pass != confirm) return "Passwords do not match";
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final gaps = context.gaps;

    return BlocProvider(
      create: (_) => RegisterEmailBloc(),
      child: Scaffold(
        bottomNavigationBar: SafeArea(
          child: Padding(
            padding: EdgeInsets.fromLTRB(gaps.xl, 0, gaps.xl, gaps.lg),
            child: PrimaryButton(
              label: "Continue",
              size: ButtonSize.large,
              fullWidth: true,
              onPressed: () => context
                  .read<RegisterEmailBloc>()
                  .add(const RegisterEmailEvent.submitted()),
            ),
          ),
        ),

        body: SafeArea(
          child: BlocBuilder<RegisterEmailBloc, RegisterEmailState>(
            builder: (context, state) {
              final bloc = context.read<RegisterEmailBloc>();

              final emailErr = state.showErrorMessages
                  ? _emailErrorFor(state.email)
                  : null;
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
                          // Header
                          StepHeader(
                            currentStep: 1,
                            totalSteps: 5,
                            onBack: () => Navigator.of(context).pop(),
                          ),
                          SizedBox(height: gaps.xl),

                          // Email
                          EmailField(
                            controller: _emailCtrl,
                            errorText: emailErr,
                            onChanged: (v) => bloc.add(
                              RegisterEmailEvent.emailChanged(v.trim()),
                            ),
                          ),
                          SizedBox(height: gaps.lg),

                          // Password
                          PasswordField(
                            controller: _passCtrl,
                            label: "Password",
                            hint: "Enter password",
                            errorText: passErr,
                            onChanged: (v) => bloc.add(
                              RegisterEmailEvent.passwordChanged(v),
                            ),
                          ),
                          SizedBox(height: gaps.lg),

                          // Confirm password
                          PasswordField(
                            controller: _confirmCtrl,
                            label: "Confirm Password",
                            hint: "Confirm password",
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
      ),
    );
  }
}
