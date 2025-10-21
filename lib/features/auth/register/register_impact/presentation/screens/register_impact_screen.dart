import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:gooddeeds/shared/design_system/components/primary_button.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/tokens/colors.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';
import 'package:gooddeeds/src/config/routes/app_router.dart';

import '../../../../../../shared/design_system/components/gd_bottom_sheet.dart';
import '../../../email/presentation/components/step_header.dart';
import '../../../parent_registration/presentation/bloc/parent_registration_bloc.dart';
import '../bloc/register_impact_bloc.dart';

class RegisterImpactScreen extends StatefulWidget {
  const RegisterImpactScreen({super.key});

  @override
  State<RegisterImpactScreen> createState() => _RegisterImpactScreenState();
}

class _RegisterImpactScreenState extends State<RegisterImpactScreen> {
  final _statementCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final bloc = context.read<RegisterImpactBloc>();

      // Check if bloc is still open before adding events
      if (!bloc.isClosed) {
        bloc.add(const RegisterImpactEvent.loadEvents());
      }

      // Sync controller with bloc state
      _syncControllerWithBloc();
    });
  }

  void _syncControllerWithBloc() {
    final bloc = context.read<RegisterImpactBloc>();
    if (_statementCtrl.text != bloc.state.statement) {
      _statementCtrl.text = bloc.state.statement;
    }
  }

  @override
  void dispose() {
    _statementCtrl.dispose();
    super.dispose();
  }

  List<String> get _events =>
      context.read<RegisterImpactBloc>().state.events.isNotEmpty
          ? context.read<RegisterImpactBloc>().state.events
          : <String>[
              'static title',
              context.loc.eventKentuckyFloods,
              context.loc.eventHurricaneFiona,
              context.loc.eventInflation,
              context.loc.eventCovid19,
              context.loc.eventUnemployment,
              context.loc.none,
            ];

  String? _eventErr(String? v) =>
      (v == null || v.isEmpty) ? context.loc.pleaseChooseAnEvent : null;

  String? _statementErr(String v) =>
      v.trim().length < 10 ? context.loc.pleaseWriteAtLeast10Characters : null;

  void _onChooseEvent(BuildContext context) async {
    final bloc = context.read<RegisterImpactBloc>();
    final selected = await GDBottomSheet.showList<String>(
      context,
      title: context.loc.affectedEvents,
      items: _events,
      labelOf: (e) => e,
      selected: bloc.state.affectedEvent,
    );
    if (selected != null) {
      bloc.add(RegisterImpactEvent.eventChanged(selected));
    }
  }

  void _onContinue(BuildContext context) {
    final impactBloc = context.read<RegisterImpactBloc>();
    final parentBloc = context.read<ParentRegistrationBloc>();

    // Check if form is valid
    final affectedOk = impactBloc.state.affectedEvent?.isNotEmpty ?? false;
    final statementOk = impactBloc.state.statement.trim().length >= 10;

    if (!affectedOk || !statementOk) {
      // Show specific validation errors
      String errorMessage = '';
      if (!affectedOk) {
        errorMessage += '• ${context.loc.pleaseChooseAnEvent}\n';
      }
      if (!statementOk) {
        errorMessage += '• ${context.loc.pleaseWriteAtLeast10Characters}';
      }

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(errorMessage.trim()),
          backgroundColor: Colors.red,
          duration: const Duration(seconds: 3),
        ),
      );
      return;
    }

    // Persist impact info to parent and go to step 5 (family photo)
    if (!parentBloc.isClosed) {
      parentBloc.add(
        ParentRegistrationEvent.setImpactInfo(
          affectedEvent: impactBloc.state.affectedEvent ?? '',
          statement: impactBloc.state.statement,
        ),
      );
    }

    const RegisterFamilyPhotoRoute().push(context);
  }

  @override
  Widget build(BuildContext context) {
    final gaps = context.gaps;
    final text = context.textStyle;

    return BlocListener<ParentRegistrationBloc, ParentRegistrationState>(
      listenWhen: (p, c) => p.success != c.success && c.success == true,
      listener: (context, state) {
        // Check if the widget is still mounted before navigating
        if (!mounted) return;

        // Navigate to verify OTP screen after successful signup
        VerifyEmailRoute(email: state.email).push(context);
      },
      child: Scaffold(
        bottomNavigationBar: SafeArea(
          child: Padding(
            padding: EdgeInsets.fromLTRB(gaps.xl, 0, gaps.xl, gaps.lg),
            child: BlocBuilder<RegisterImpactBloc, RegisterImpactState>(
              builder: (context, impactState) {
                return BlocBuilder<ParentRegistrationBloc,
                    ParentRegistrationState>(
                  builder: (context, parentState) {
                    return PrimaryButton(
                      label: context.loc.continueText,
                      size: ButtonSize.large,
                      fullWidth: true,
                      loading: parentState.isSubmitting,
                      onPressed: parentState.isSubmitting
                          ? null
                          : () => _onContinue(context),
                    );
                  },
                );
              },
            ),
          ),
        ),
        body: SafeArea(
          child: BlocBuilder<RegisterImpactBloc, RegisterImpactState>(
            builder: (context, state) {
              // Sync controller with bloc state on every build
              WidgetsBinding.instance.addPostFrameCallback((_) {
                _syncControllerWithBloc();
              });

              // Show validation errors only after user interaction
              final eventErr =
                  state.showErrors ? _eventErr(state.affectedEvent) : null;
              final stmtErr =
                  state.showErrors ? _statementErr(state.statement) : null;

              return LayoutBuilder(
                builder: (context, constraints) => SingleChildScrollView(
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
                          currentStep: 4,
                          totalSteps: 5,
                          onBack: () => context.pop(),
                        ),
                        Gap(gaps.xxl),

                        // Question label
                        Text(
                          context.loc.haveYouBeenAffectedQuestion,
                          style: text.bodyMediumMedium,
                        ),
                        const Gap(10),

                        // Field-like opener
                        InkWell(
                          borderRadius: BorderRadius.circular(14),
                          onTap: () => _onChooseEvent(context),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 16,
                            ),
                            decoration: BoxDecoration(
                              color: BrandTones.grey10,
                              borderRadius: BorderRadius.circular(14),
                              border: Border.all(
                                color: eventErr != null
                                    ? BrandTones.red
                                    : BrandTones.grey20,
                              ),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    state.affectedEvent ??
                                        context.loc.chooseEvent,
                                    style: (state.affectedEvent == null
                                            ? text.bodyMediumMedium.copyWith(
                                                color: BrandTones.grey50,
                                              )
                                            : text.bodyMediumMedium)
                                        .copyWith(color: BrandTones.grey100),
                                  ),
                                ),
                                const Icon(Icons.expand_more_rounded),
                              ],
                            ),
                          ),
                        ),
                        AnimatedSwitcher(
                          duration: const Duration(milliseconds: 160),
                          child: eventErr != null
                              ? Padding(
                                  key: const ValueKey('event-err'),
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(
                                    eventErr,
                                    style: TextStyle(
                                      color: Colors.red.shade400,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                )
                              : const SizedBox.shrink(
                                  key: ValueKey('event-ok'),
                                ),
                        ),
                        Gap(gaps.lg),

                        // Statement
                        Text(
                          context.loc.statement, // 👈 loc
                          style: text.bodyMediumMedium,
                        ),
                        const Gap(10),
                        TextFormField(
                          controller: _statementCtrl,
                          minLines: 4,
                          maxLines: 6,
                          textInputAction: TextInputAction.newline,
                          decoration: InputDecoration(
                            hintText:
                                context.loc.explainStatementHint, // 👈 loc
                            hintStyle: text.bodyMediumMedium
                                .copyWith(color: BrandTones.grey50),
                            filled: true,
                            fillColor: BrandTones.grey10,
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 14,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14),
                              borderSide: BorderSide(
                                color: stmtErr != null
                                    ? BrandTones.red
                                    : BrandTones.grey20,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14),
                              borderSide: BorderSide(
                                color: stmtErr != null
                                    ? BrandTones.red
                                    : BrandTones.grey20,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14),
                              borderSide: BorderSide(
                                color: stmtErr != null
                                    ? BrandTones.red
                                    : BrandTones.grey20,
                              ),
                            ),
                          ),
                          onChanged: (v) => context
                              .read<RegisterImpactBloc>()
                              .add(RegisterImpactEvent.statementChanged(v)),
                        ),
                        // Character counter and error message
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: AnimatedSwitcher(
                                  duration: const Duration(milliseconds: 160),
                                  child: stmtErr != null
                                      ? Text(
                                          stmtErr,
                                          key: const ValueKey('stmt-err'),
                                          style: TextStyle(
                                            color: Colors.red.shade400,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        )
                                      : const SizedBox.shrink(
                                          key: ValueKey('stmt-ok'),
                                        ),
                                ),
                              ),
                              // Row(
                              //   children: [
                              //     if (state.statement.trim().length >= 10)
                              //       Icon(
                              //         Icons.check_circle,
                              //         color: BrandTones.green,
                              //         size: 16,
                              //       ),
                              //     const SizedBox(width: 4),
                              //     Text(
                              //       '${state.statement.trim().length}/10',
                              //       style: text.bodySmallMedium.copyWith(
                              //         color: state.statement.trim().length >= 10
                              //             ? BrandTones.green
                              //             : BrandTones.grey50,
                              //       ),
                              //     ),
                              //   ],
                              // ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
