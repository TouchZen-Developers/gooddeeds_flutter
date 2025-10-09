import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gooddeeds/gen/assets.gen.dart';
import 'package:gooddeeds/shared/design_system/components/gd_back_button_icon.dart';
import 'package:gooddeeds/shared/design_system/components/primary_button.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/tokens/colors.dart';
import 'package:gooddeeds/shared/design_system/typography/gd_text.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../../src/config/routes/app_router.dart';
import '../bloc/verify_reset_code_bloc.dart';

class VerifyResetCodeScreen extends StatefulWidget {
  const VerifyResetCodeScreen({super.key, required this.email});

  final String email;

  @override
  State<VerifyResetCodeScreen> createState() => _VerifyResetCodeScreenState();
}

class _VerifyResetCodeScreenState extends State<VerifyResetCodeScreen> {
  final _pinCtrl = TextEditingController();

  @override
  void dispose() {
    _pinCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final gaps = context.gaps;
    final text = context.textStyle;
    final loc = context.loc;

    return BlocListener<VerifyResetCodeBloc, VerifyResetCodeState>(
      listenWhen: (p, c) => p.success != c.success,
      listener: (context, state) {
        if (state.success == true) {
          const ResetPasswordRoute().go(context);
        } else if (state.success == false) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(loc.failedToSendCode)),
          );
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        bottomNavigationBar:
            BlocBuilder<VerifyResetCodeBloc, VerifyResetCodeState>(
          buildWhen: (p, c) =>
              p.code != c.code || p.isSubmitting != c.isSubmitting,
          builder: (context, state) {
            final canContinue = state.code.length == 4 && !state.isSubmitting;
            return SafeArea(
              top: false,
              minimum: EdgeInsets.fromLTRB(gaps.xl, 0, gaps.xl, gaps.lg),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  PrimaryButton(
                    label: loc.verify,
                    size: ButtonSize.large,
                    fullWidth: true,
                    onPressed: canContinue
                        ? () => context
                            .read<VerifyResetCodeBloc>()
                            .add(const VerifyResetCodeEvent.submitted())
                        : null,
                    // loading: state.isSubmitting,
                  ),
                  SizedBox(height: gaps.md),
                  Center(
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      spacing: 6,
                      children: [
                        Text(
                          loc.didntReceiveCode,
                          style: text.bodySmallRegular.copyWith(
                            color: BrandTones.grey60,
                          ),
                        ),
                        GestureDetector(
                          onTap: () => context
                              .read<VerifyResetCodeBloc>()
                              .add(const VerifyResetCodeEvent.resendPressed()),
                          child: Text(
                            loc.resendCode,
                            style: text.bodySmallMedium.copyWith(
                              color: context.colors.secondary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: gaps.xl),
                ],
              ),
            );
          },
        ),
        body: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                padding:
                    EdgeInsets.fromLTRB(gaps.xl, gaps.lg, gaps.xl, gaps.lg),
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GDBackButtonIcon(
                        onBack: () => context.pop(),
                      ),
                      SizedBox(height: gaps.xxl),
                      Center(
                        child: Assets.images.otpVerify
                            .svg(height: 140, width: 200),
                      ),
                      const SizedBox(height: 72),
                      Text(loc.otpVerificationTitle, style: text.heading3),
                      const SizedBox(height: 16),
                      GDText(
                        loc.otpVerificationDesc,
                        style: text.bodyMediumRegular,
                        color: BrandTones.grey80,
                      ),
                      SizedBox(height: gaps.xxl),
                      BlocBuilder<VerifyResetCodeBloc, VerifyResetCodeState>(
                        buildWhen: (p, c) => p.code != c.code,
                        builder: (context, state) {
                          return PinCodeTextField(
                            appContext: context,
                            controller: _pinCtrl,
                            length: 4,
                            autoFocus: true,
                            keyboardType: TextInputType.number,
                            cursorColor: BrandTones.primary,
                            animationType: AnimationType.fade,
                            onChanged: (v) => context
                                .read<VerifyResetCodeBloc>()
                                .add(VerifyResetCodeEvent.codeChanged(v)),
                            enableActiveFill: true,
                            backgroundColor: Colors.transparent,
                            textStyle: text.bodyMediumRegular,
                            autoDisposeControllers: false,
                            scrollPadding: EdgeInsets.only(bottom: gaps.xxl),
                            pinTheme: PinTheme(
                              shape: PinCodeFieldShape.box,
                              borderRadius: BorderRadius.circular(10),
                              fieldHeight: 48,
                              fieldWidth: 75,
                              activeColor: BrandTones.grey20,
                              selectedColor: BrandTones.primary,
                              inactiveColor: BrandTones.grey20,
                              activeFillColor: BrandTones.grey10,
                              selectedFillColor: Colors.white,
                              inactiveFillColor: BrandTones.grey10,
                              borderWidth: 1,
                            ),
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
