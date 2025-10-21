import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:gooddeeds/shared/design_system/components/primary_button.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';
import 'package:gooddeeds/shared/design_system/utils/validators.dart';
import 'package:gooddeeds/src/config/routes/app_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../../shared/data/user_role.dart';
import '../../../../../../shared/design_system/components/gd_textfield.dart';
import '../../../../../../shared/design_system/tokens/colors.dart';
import '../../../../../../src/config/di/injector.dart';
import '../../../email/presentation/components/step_header.dart';
import '../../../parent_registration/presentation/bloc/parent_registration_bloc.dart';
import '../bloc/register_personal_info_bloc.dart';

class RegisterPersonalInfoScreen extends StatefulWidget {
  const RegisterPersonalInfoScreen({
    super.key,
    this.email = '',
    this.password = '',
    this.passwordConfirmation = '',
  });

  final String email;
  final String password;
  final String passwordConfirmation;

  @override
  State<RegisterPersonalInfoScreen> createState() =>
      _RegisterPersonalInfoScreenState();
}

class _RegisterPersonalInfoScreenState
    extends State<RegisterPersonalInfoScreen> {
  final _firstCtrl = TextEditingController();
  final _lastCtrl = TextEditingController();
  final _famCtrl = TextEditingController();
  final _phoneCtrl = TextEditingController();

  late final bool _isDonor;

  @override
  void dispose() {
    _firstCtrl.dispose();
    _lastCtrl.dispose();
    _famCtrl.dispose();
    _phoneCtrl.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    final prefs = getIt<SharedPreferences>();
    final role = UserRoleX.fromString(prefs.getString(kPrefUserRole));
    _isDonor = role == UserRole.helpFamilies;

    final personalInfoBloc = context.read<RegisterPersonalInfoBloc>();

    // Check if bloc is still open before adding events
    if (!personalInfoBloc.isClosed) {
      personalInfoBloc.add(RegisterPersonalInfoEvent.modeChanged(_isDonor));

      // Get email/password from widget parameters and pass to RegisterPersonalInfoBloc
      personalInfoBloc.add(
        RegisterPersonalInfoEvent.emailDataSet(
          email: widget.email,
          password: widget.password,
          passwordConfirmation: widget.passwordConfirmation,
        ),
      );
    }

    // Sync controllers with bloc state
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _syncControllersWithBloc();
    });
  }

  void _syncControllersWithBloc() {
    final bloc = context.read<RegisterPersonalInfoBloc>();
    if (_firstCtrl.text != bloc.state.firstName) {
      _firstCtrl.text = bloc.state.firstName;
    }
    if (_lastCtrl.text != bloc.state.lastName) {
      _lastCtrl.text = bloc.state.lastName;
    }
    if (_famCtrl.text != bloc.state.familyCount) {
      _famCtrl.text = bloc.state.familyCount ?? '';
    }
    if (_phoneCtrl.text != bloc.state.phone) {
      _phoneCtrl.text = bloc.state.phone;
    }
  }

  String? _firstErrorFor(String v) {
    if (v.trim().isEmpty) return context.loc.firstNameIsRequired;
    return null;
  }

  String? _lastErrorFor(String v) {
    if (v.trim().isEmpty) return context.loc.lastNameIsRequired;
    return null;
  }

  String? _familyErrorFor(String v) {
    final n = int.tryParse(v);
    if (v.isEmpty) return context.loc.enterFamilyMembersCount;
    if (n == null || n <= 0) return context.loc.enterValidNumber;
    return null;
  }

  String? _phoneErrorFor(String v) {
    if (v.trim().isEmpty) return context.loc.enterPhoneNumber;
    if (!v.trim().isValidUSPhone) return context.loc.enterValidNumber;
    return null;
  }

  void _onContinue(BuildContext context) {
    final bloc = context.read<RegisterPersonalInfoBloc>();
    final parentBloc = context.read<ParentRegistrationBloc>();

    // Check if bloc is still open before adding events
    if (!bloc.isClosed) {
      bloc
        ..add(RegisterPersonalInfoEvent.firstNameChanged(_firstCtrl.text))
        ..add(RegisterPersonalInfoEvent.lastNameChanged(_lastCtrl.text));

      if (_isDonor) {
        bloc.add(RegisterPersonalInfoEvent.phoneChanged(_phoneCtrl.text));
      } else {
        bloc.add(RegisterPersonalInfoEvent.familyCountChanged(_famCtrl.text));
        // Save personal info to parent bloc for beneficiary flow
        if (!parentBloc.isClosed) {
          parentBloc.add(
            ParentRegistrationEvent.setPersonalInfo(
              firstName: _firstCtrl.text,
              lastName: _lastCtrl.text,
              familySize: _famCtrl.text,
            ),
          );
        }
      }

      bloc.add(const RegisterPersonalInfoEvent.submitted());
    } else {
      // If bloc is closed, navigate directly
      if (_isDonor) {
        // Navigate to OTP verification screen after successful signup
        VerifyEmailRoute(email: widget.email).push(context);
      } else {
        // Navigate to contact info screen for beneficiary flow
        const RegisterContactInfoRoute().push(context);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final gaps = context.gaps;

    return BlocListener<RegisterPersonalInfoBloc, RegisterPersonalInfoState>(
      listenWhen: (p, c) => p.completed != c.completed && c.completed,
      listener: (context, state) {
        // Check if the widget is still mounted before navigating
        if (!mounted) return;

        if (state.isDonorFlow) {
          // Navigate to OTP verification screen after successful signup
          VerifyEmailRoute(email: state.email).push(context);
        } else {
          // Navigate to contact info screen for beneficiary flow
          const RegisterContactInfoRoute().push(context);
        }
      },
      child: Scaffold(
        bottomNavigationBar: SafeArea(
          child: Padding(
            padding: EdgeInsets.fromLTRB(gaps.xl, 0, gaps.xl, gaps.lg),
            child: BlocBuilder<RegisterPersonalInfoBloc,
                RegisterPersonalInfoState>(
              builder: (context, state) {
                return PrimaryButton(
                  label: context.loc.continueText,
                  size: ButtonSize.large,
                  fullWidth: true,
                  loading: state.isSubmitting,
                  onPressed:
                      state.isSubmitting ? null : () => _onContinue(context),
                );
              },
            ),
          ),
        ),
        body: SafeArea(
          child:
              BlocBuilder<RegisterPersonalInfoBloc, RegisterPersonalInfoState>(
            builder: (context, state) {
              final bloc = context.read<RegisterPersonalInfoBloc>();

              // Sync controllers with bloc state on every build
              WidgetsBinding.instance.addPostFrameCallback((_) {
                _syncControllersWithBloc();
              });

              final firstErr =
                  state.showErrors ? _firstErrorFor(state.firstName) : null;
              final lastErr =
                  state.showErrors ? _lastErrorFor(state.lastName) : null;
              final famErr = (!_isDonor && state.showErrors)
                  ? _familyErrorFor(state.familyCount ?? '')
                  : null;
              final phoneErr = (_isDonor && state.showErrors)
                  ? _phoneErrorFor(state.phone)
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
                            currentStep: 2,
                            totalSteps: 5,
                            onBack: () {
                              if (context.canPop()) {
                                context.pop();
                              } else {
                                SystemNavigator.pop();
                              }
                            },
                          ),

                          Gap(gaps.lg),

                          // First Name
                          GDTextField(
                            controller: _firstCtrl,
                            label: context.loc.firstName,
                            hint: context.loc.enterYourFirstName,
                            errorText: firstErr,
                            onChanged: (v) {
                              if (!bloc.isClosed) {
                                bloc.add(
                                  RegisterPersonalInfoEvent.firstNameChanged(v),
                                );
                              }
                            },
                          ),
                          Gap(gaps.lg),

                          // Last Name
                          GDTextField(
                            controller: _lastCtrl,
                            label: context.loc.lastName,
                            hint: context.loc.enterYourLastName,
                            errorText: lastErr,
                            onChanged: (v) {
                              if (!bloc.isClosed) {
                                bloc.add(
                                  RegisterPersonalInfoEvent.lastNameChanged(v),
                                );
                              }
                            },
                          ),
                          Gap(gaps.lg),
                          if (_isDonor)
                            // Phone for Donor
                            GDTextField(
                              controller: _phoneCtrl,
                              label: context.loc.phoneNumber,
                              hint: context.loc.enterPhoneNumber,
                              errorText: phoneErr,
                              keyboardType: TextInputType.phone,
                              onChanged: (v) {
                                if (!bloc.isClosed) {
                                  bloc.add(
                                    RegisterPersonalInfoEvent.phoneChanged(v),
                                  );
                                }
                              },
                              prefixInline: Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      '+1',
                                      style: context.textStyle.bodyMediumMedium
                                          .copyWith(color: BrandTones.grey80),
                                    ),
                                    const Gap(10),
                                    const SizedBox(
                                      height: 20,
                                      child: VerticalDivider(
                                        width: 1,
                                        thickness: 1,
                                        color: BrandTones.grey50,
                                      ),
                                    ),
                                    const Gap(10),
                                  ],
                                ),
                              ),
                            )
                          else
                            // Family count for Need
                            GDTextField(
                              controller: _famCtrl,
                              label: context.loc.howManyAreInYourFamily,
                              hint: context.loc.enterAmount,
                              errorText: famErr,
                              onChanged: (v) {
                                if (!bloc.isClosed) {
                                  bloc.add(
                                    RegisterPersonalInfoEvent
                                        .familyCountChanged(
                                      v,
                                    ),
                                  );
                                }
                              },
                              keyboardType: TextInputType.number,
                              textInputAction: TextInputAction.done,
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
