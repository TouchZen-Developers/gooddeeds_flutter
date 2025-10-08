import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gooddeeds/shared/design_system/components/primary_button.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';
import 'package:gooddeeds/src/config/routes/app_router.dart';

import '../../../../../../shared/design_system/components/gd_textfield.dart';
import '../../../email/presentation/components/step_header.dart';
import '../bloc/register_personal_info_bloc.dart';

class RegisterPersonalInfoScreen extends StatefulWidget {
  const RegisterPersonalInfoScreen({super.key});

  @override
  State<RegisterPersonalInfoScreen> createState() =>
      _RegisterPersonalInfoScreenState();
}

class _RegisterPersonalInfoScreenState
    extends State<RegisterPersonalInfoScreen> {
  final _firstCtrl = TextEditingController();
  final _lastCtrl = TextEditingController();
  final _famCtrl = TextEditingController();

  @override
  void dispose() {
    _firstCtrl.dispose();
    _lastCtrl.dispose();
    _famCtrl.dispose();
    super.dispose();
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

  void _onContinue(BuildContext context) {
    final bloc = context.read<RegisterPersonalInfoBloc>();

    final first = _firstCtrl.text;
    final last = _lastCtrl.text;
    final fam = _famCtrl.text;

    bloc
      ..add(RegisterPersonalInfoEvent.firstNameChanged(first))
      ..add(RegisterPersonalInfoEvent.lastNameChanged(last))
      ..add(RegisterPersonalInfoEvent.familyCountChanged(fam))
      ..add(const RegisterPersonalInfoEvent.submitted());
  }

  @override
  Widget build(BuildContext context) {
    final gaps = context.gaps;

    return BlocListener<RegisterPersonalInfoBloc, RegisterPersonalInfoState>(
      listenWhen: (p, c) => p.completed != c.completed && c.completed,
      listener: (_, __) {
        const RegisterContactInfoRoute().push(context);
      },
      child: Scaffold(
        bottomNavigationBar: SafeArea(
          child: Padding(
            padding: EdgeInsets.fromLTRB(gaps.xl, 0, gaps.xl, gaps.lg),
            child: BlocBuilder<RegisterPersonalInfoBloc,
                RegisterPersonalInfoState>(
              builder: (context, state) {
                final canPress = !state.isSubmitting;
                return PrimaryButton(
                  label: context.loc.continueText,
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
          child:
              BlocBuilder<RegisterPersonalInfoBloc, RegisterPersonalInfoState>(
            builder: (context, state) {
              final bloc = context.read<RegisterPersonalInfoBloc>();

              final firstErr =
                  state.showErrors ? _firstErrorFor(state.firstName) : null;
              final lastErr =
                  state.showErrors ? _lastErrorFor(state.lastName) : null;
              final famErr = state.showErrors
                  ? _familyErrorFor(state.familyCount ?? '')
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
                            onBack: () => context.pop(),
                          ),

                          SizedBox(height: gaps.lg),

                          // First Name
                          GDTextField(
                            controller: _firstCtrl,
                            label: context.loc.firstName,
                            hint: context.loc.enterYourFirstName,
                            errorText: firstErr,
                            onChanged: (v) => bloc.add(
                              RegisterPersonalInfoEvent.firstNameChanged(v),
                            ),
                          ),
                          SizedBox(height: gaps.lg),

                          // Last Name
                          GDTextField(
                            controller: _lastCtrl,
                            label: context.loc.lastName,
                            hint: context.loc.enterYourLastName,
                            errorText: lastErr,
                            onChanged: (v) => bloc.add(
                              RegisterPersonalInfoEvent.lastNameChanged(v),
                            ),
                          ),
                          SizedBox(height: gaps.lg),

                          // Family Count (digits only)
                          GDTextField(
                            controller: _famCtrl,
                            label: context.loc.howManyAreInYourFamily,
                            hint: context.loc.enterAmount,
                            errorText: famErr,
                            onChanged: (v) => bloc.add(
                              RegisterPersonalInfoEvent.familyCountChanged(v),
                            ),
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
