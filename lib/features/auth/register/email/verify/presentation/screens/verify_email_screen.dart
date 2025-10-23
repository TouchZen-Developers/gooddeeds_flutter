// verify_email_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/tokens/colors.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';
import 'package:gooddeeds/src/config/routes/app_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../../../../gen/assets.gen.dart';
import '../../../../../../../shared/design_system/components/primary_button.dart';
import '../../../../../../../shared/design_system/components/text_link.dart';
import '../bloc/verify_email_bloc.dart';

class VerifyEmailScreen extends StatefulWidget {
  const VerifyEmailScreen({super.key, required this.email});

  final String email;

  @override
  State<VerifyEmailScreen> createState() => _VerifyEmailScreenState();
}

class _VerifyEmailScreenState extends State<VerifyEmailScreen> {
  final _pinCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Set email in bloc when screen initializes
    final bloc = context.read<VerifyEmailBloc>();

    // Check if bloc is still open before adding events
    if (!bloc.isClosed) {
      bloc.add(VerifyEmailEvent.emailChanged(widget.email));
    }
  }

  @override
  void dispose() {
    _pinCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final text = context.textStyle;

    return BlocListener<VerifyEmailBloc, VerifyEmailState>(
      listenWhen: (p, c) => p.success != c.success && c.success != null,
      listener: (context, state) {
        if (state.success == true) {
          // Navigate to login after successful OTP verification
          const LoginRoute().go(context);
        }
        // Error snackbar is shown automatically by ErrorInterceptor
      },
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Back
                const Gap(8),
                InkWell(
                  onTap: () => Navigator.of(context).pop(),
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: Center(
                      child: Assets.icons.left.svg(width: 14, height: 14),
                    ),
                  ),
                ),

                const Gap(24),
                Text(context.loc.confirmation, style: text.heading3),

                const Gap(8),
                RichText(
                  text: TextSpan(
                    style: context.textStyle.bodyLargeRegular
                        .copyWith(color: BrandTones.grey80),
                    children: [
                      TextSpan(text: '${context.loc.verifyCodePrefix} \n'),
                      TextSpan(
                        text: widget.email,
                        style: context.textStyle.bodyMediumMedium
                            .copyWith(color: BrandTones.secondary600),
                      ),
                      TextSpan(text: ' ${context.loc.verifyCodeSuffix}'),
                    ],
                  ),
                ),
                const Gap(32),
                // PIN fields
                BlocBuilder<VerifyEmailBloc, VerifyEmailState>(
                  buildWhen: (p, c) =>
                      p.code != c.code || p.showErrors != c.showErrors,
                  builder: (context, state) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        PinCodeTextField(
                          appContext: context,
                          controller: _pinCtrl,
                          length: 4,
                          autoFocus: true,
                          keyboardType: TextInputType.number,
                          cursorColor: BrandTones.primary,
                          animationType: AnimationType.fade,
                          onChanged: (v) => context
                              .read<VerifyEmailBloc>()
                              .add(VerifyEmailEvent.codeChanged(v)),
                          enableActiveFill: true,
                          backgroundColor: Colors.transparent,
                          textStyle: context.textStyle.bodyMediumRegular,
                          autoDisposeControllers: false,
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
                        ),
                        if (state.showErrors && state.code.length != 4) ...[
                          const Gap(8),
                          Text(
                            context.loc.invalidCode,
                            style: text.bodySmallRegular.copyWith(
                              color: BrandTones.error,
                            ),
                          ),
                        ],
                      ],
                    );
                  },
                ),

                const Gap(24),
                Center(
                  child: BlocBuilder<VerifyEmailBloc, VerifyEmailState>(
                    buildWhen: (p, c) => p.isResending != c.isResending,
                    builder: (context, state) {
                      return GDTextLink(
                        label: state.isResending
                            ? context.loc.sendingCode
                            : context.loc.resendCode,
                        color: state.isResending
                            ? BrandTones.grey60
                            : BrandTones.primary,
                        onPressed: state.isResending
                            ? null
                            : () => context
                                .read<VerifyEmailBloc>()
                                .add(const VerifyEmailEvent.resendPressed()),
                        style: text.bodyLargeRegular,
                      );
                    },
                  ),
                ),
                const Gap(32),
                BlocBuilder<VerifyEmailBloc, VerifyEmailState>(
                  buildWhen: (p, c) =>
                      p.code != c.code || p.isSubmitting != c.isSubmitting,
                  builder: (context, state) {
                    final canContinue =
                        state.code.length == 4 && !state.isSubmitting;
                    return PrimaryButton(
                      label: context.loc.continueText,
                      size: ButtonSize.large,
                      fullWidth: true,
                      loading: state.isSubmitting,
                      onPressed: canContinue
                          ? () => context
                              .read<VerifyEmailBloc>()
                              .add(const VerifyEmailEvent.submitted())
                          : null,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
