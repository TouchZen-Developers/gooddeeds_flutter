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

import '../../../parent_registration/presentation/bloc/parent_registration_bloc.dart';
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

  void _syncControllersWithBloc() {
    final bloc = context.read<RegisterEmailBloc>();
    if (_emailCtrl.text != bloc.state.email) {
      _emailCtrl.text = bloc.state.email;
    }
    if (_passCtrl.text != bloc.state.password) {
      _passCtrl.text = bloc.state.password;
    }
    if (_confirmCtrl.text != bloc.state.confirmPassword) {
      _confirmCtrl.text = bloc.state.confirmPassword;
    }
  }

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

  String? _passwordErrorFor(String password, bool showErrors) {
    if (!showErrors) return null;

    // Use centralized password validation
    return password.passwordValidationError;
  }

  String? _confirmErrorFor(String pass, String confirm, bool showErrors) {
    if (!showErrors) return null;

    if (confirm.isEmpty) return context.loc.confirmPasswordRequired;
    if (pass != confirm) return context.loc.passwordsDoNotMatch;
    return null;
  }

  void _onContinue(BuildContext context) {
    final bloc = context.read<RegisterEmailBloc>();
    final parentBloc = context.read<ParentRegistrationBloc>();

    final email = _emailCtrl.text.trim();
    final pass = _passCtrl.text;
    final confirm = _confirmCtrl.text;

    // Check if bloc is still open before adding events
    if (!bloc.isClosed) {
      // Update bloc state
      bloc
        ..add(RegisterEmailEvent.emailChanged(email))
        ..add(RegisterEmailEvent.passwordChanged(pass))
        ..add(RegisterEmailEvent.confirmPasswordChanged(confirm))
        ..add(const RegisterEmailEvent.submitted());
    }

    // Check if all fields are valid using bloc's validation
    final emailValid = email.isValidEmail;
    final passwordValid = _isPasswordValid(pass);
    final confirmValid = confirm == pass && confirm.isNotEmpty;

    if (emailValid && passwordValid && confirmValid) {
      // Save email data to parent bloc
      if (!parentBloc.isClosed) {
        parentBloc.add(
          ParentRegistrationEvent.setEmailData(
            email: email,
            password: pass,
            passwordConfirmation: confirm,
          ),
        );
      }

      // Navigate to personal info screen
      const RegisterPersonalInfoRoute().push(context);
    }
  }

  bool _isPasswordValid(String password) {
    // Use centralized password validation
    return password.isValidPassword;
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

            // Sync controllers with bloc state on every build
            WidgetsBinding.instance.addPostFrameCallback((_) {
              _syncControllersWithBloc();
            });

            final emailErr =
                state.showErrorMessages ? _emailErrorFor(state.email) : null;
            final passErr = state.showErrorMessages
                ? _passwordErrorFor(state.password, state.showErrorMessages)
                : null;
            final confirmErr = state.showErrorMessages
                ? _confirmErrorFor(
                    state.password,
                    state.confirmPassword,
                    state.showErrorMessages,
                  )
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
                          onChanged: (v) {
                            if (!bloc.isClosed) {
                              bloc.add(
                                RegisterEmailEvent.emailChanged(v.trim()),
                              );
                            }
                          },
                        ),
                        Gap(gaps.lg),
                        PasswordField(
                          controller: _passCtrl,
                          label: context.loc.password,
                          hint: context.loc.passwordHint,
                          errorText: passErr,
                          onChanged: (v) {
                            if (!bloc.isClosed) {
                              bloc.add(
                                RegisterEmailEvent.passwordChanged(v),
                              );
                            }
                          },
                        ),
                        Gap(gaps.lg),
                        PasswordField(
                          controller: _confirmCtrl,
                          label: context.loc.confirmPasswordTitle,
                          hint: context.loc.confirmPasswordSub,
                          errorText: confirmErr,
                          onChanged: (v) {
                            if (!bloc.isClosed) {
                              bloc.add(
                                RegisterEmailEvent.confirmPasswordChanged(v),
                              );
                            }
                          },
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
