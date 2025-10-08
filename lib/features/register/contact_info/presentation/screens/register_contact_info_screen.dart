import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gooddeeds/shared/design_system/components/primary_button.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/tokens/colors.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';
import 'package:gooddeeds/src/config/routes/app_router.dart';

import '../../../../../shared/design_system/components/gd_textfield.dart';
import '../../../email/presentation/components/step_header.dart';
import '../bloc/register_contact_info_bloc.dart';

class RegisterContactInfoScreen extends StatefulWidget {
  const RegisterContactInfoScreen({super.key});

  @override
  State<RegisterContactInfoScreen> createState() =>
      _RegisterContactInfoScreenState();
}

class _RegisterContactInfoScreenState extends State<RegisterContactInfoScreen> {
  final _addressCtrl = TextEditingController();
  final _phoneCtrl = TextEditingController();
  final _cityCtrl = TextEditingController();
  final _stateCtrl = TextEditingController();
  final _zipCtrl = TextEditingController();

  @override
  void dispose() {
    _addressCtrl.dispose();
    _phoneCtrl.dispose();
    _cityCtrl.dispose();
    _stateCtrl.dispose();
    _zipCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final gaps = context.gaps;

    return BlocListener<RegisterContactInfoBloc, RegisterContactInfoState>(
      listenWhen: (p, c) => p.completed != c.completed && c.completed,
      listener: (_, __) {
        const RegisterImpactRoute().push(context);
      },
      child: Scaffold(
        bottomNavigationBar: SafeArea(
          child: Padding(
            padding: EdgeInsets.fromLTRB(gaps.xl, 0, gaps.xl, gaps.lg),
            child:
                BlocBuilder<RegisterContactInfoBloc, RegisterContactInfoState>(
              builder: (context, state) {
                return PrimaryButton(
                  label: context.loc.continueText,
                  size: ButtonSize.large,
                  fullWidth: true,
                  onPressed: state.isSubmitting
                      ? null
                      : () {
                          context.read<RegisterContactInfoBloc>()
                            ..add(
                              RegisterContactInfoEvent.addressChanged(
                                _addressCtrl.text,
                              ),
                            )
                            ..add(
                              RegisterContactInfoEvent.phoneChanged(
                                _phoneCtrl.text,
                              ),
                            )
                            ..add(
                              RegisterContactInfoEvent.cityChanged(
                                _cityCtrl.text,
                              ),
                            )
                            ..add(
                              RegisterContactInfoEvent.stateChanged(
                                _stateCtrl.text,
                              ),
                            )
                            ..add(
                              RegisterContactInfoEvent.zipChanged(
                                _zipCtrl.text,
                              ),
                            )
                            ..add(const RegisterContactInfoEvent.submitted());
                        },
                  // loading: state.isSubmitting,
                );
              },
            ),
          ),
        ),
        body: SafeArea(
          child: BlocBuilder<RegisterContactInfoBloc, RegisterContactInfoState>(
            builder: (context, state) {
              final bloc = context.read<RegisterContactInfoBloc>();

              final addrErr = state.showErrors && !state.isAddressValid
                  ? context.loc.addressIsRequired
                  : null;
              final phoneErr = state.showErrors && !state.isPhoneValid
                  ? context.loc.enterValidNumber
                  : null;

              final cityErr = state.showErrors && !state.isCityValid
                  ? context.loc.enterCity
                  : null;

              final stErr = state.showErrors && !state.isStateValid
                  ? context.loc.enterState
                  : null;

              final zipErr = state.showErrors && !state.isZipValid
                  ? context.loc.enterValidNumber
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
                            currentStep: 3,
                            totalSteps: 5,
                            onBack: () => context.pop(),
                          ),
                          SizedBox(height: gaps.lg),

                          // Address
                          GDTextField(
                            controller: _addressCtrl,
                            label: context.loc.address,
                            hint: context.loc.enterAddress,
                            errorText: addrErr,
                            onChanged: (v) => bloc.add(
                              RegisterContactInfoEvent.addressChanged(v),
                            ),
                          ),
                          SizedBox(height: gaps.lg),

                          GDTextField(
                            controller: _phoneCtrl,
                            label: context.loc.phoneNumber,
                            hint: context.loc.enterPhoneNumber,
                            errorText: phoneErr,
                            keyboardType: TextInputType.phone,
                            onChanged: (v) =>
                                context.read<RegisterContactInfoBloc>().add(
                                      RegisterContactInfoEvent.phoneChanged(v),
                                    ),
                            prefixInline: Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    state.phoneCountryCode,
                                    style: context.textStyle.bodyMediumMedium
                                        .copyWith(color: BrandTones.grey80),
                                  ),
                                  const SizedBox(width: 10),
                                  SizedBox(
                                    height: 20,
                                    child: VerticalDivider(
                                      width: 1,
                                      thickness: 1,
                                      color: BrandTones.grey50,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                ],
                              ),
                            ),
                          ),

                          SizedBox(height: gaps.lg),

                          // City
                          GDTextField(
                            controller: _cityCtrl,
                            label: context.loc.city,
                            hint: context.loc.enterCity,
                            errorText: cityErr,
                            onChanged: (v) => bloc
                                .add(RegisterContactInfoEvent.cityChanged(v)),
                          ),
                          SizedBox(height: gaps.lg),

                          // State
                          GDTextField(
                            controller: _stateCtrl,
                            label: context.loc.state,
                            hint: context.loc.enterState,
                            errorText: stErr,
                            onChanged: (v) => bloc.add(
                              RegisterContactInfoEvent.stateChanged(v),
                            ),
                          ),
                          SizedBox(height: gaps.lg),

                          // Zip
                          GDTextField(
                            controller: _zipCtrl,
                            label: context.loc.zipCode,
                            hint: context.loc.enterZipCode,
                            errorText: zipErr,
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.done,
                            onChanged: (v) => bloc
                                .add(RegisterContactInfoEvent.zipChanged(v)),
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
