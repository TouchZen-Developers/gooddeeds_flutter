// verify_email_screen.dart
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/tokens/colors.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';
import 'package:gooddeeds/src/config/routes/app_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../../../../gen/assets.gen.dart';
import '../../../../../../../shared/design_system/components/primary_button.dart';
import '../../../../../../../shared/design_system/components/text_link.dart';

class VerifyEmailScreen extends StatefulWidget {
  const VerifyEmailScreen({super.key, required this.email});

  final String email;

  @override
  State<VerifyEmailScreen> createState() => _VerifyEmailScreenState();
}

class _VerifyEmailScreenState extends State<VerifyEmailScreen> {
  final _pinCtrl = TextEditingController();
  String _code = '';

  @override
  void dispose() {
    _pinCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final text = context.textStyle;

    final canContinue = _code.length == 4;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Back
              const SizedBox(height: 8),
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

              const SizedBox(height: 8),
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
              PinCodeTextField(
                appContext: context,
                controller: _pinCtrl,
                length: 4,
                autoFocus: true,
                keyboardType: TextInputType.number,
                cursorColor: BrandTones.primary,
                animationType: AnimationType.fade,
                onChanged: (v) => setState(() => _code = v),
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

              const SizedBox(height: 24),
              Center(
                child: GDTextLink(
                  label: context.loc.resendCode,
                  color: BrandTones.primary,
                  onPressed: () => context.pop(),
                  style: text.bodyLargeRegular,
                ),
              ),
              const Gap(32),
              PrimaryButton(
                label: context.loc.continueText,
                size: ButtonSize.large,
                fullWidth: true,
                onPressed: canContinue
                    ? () {
                        const RegisterPersonalInfoRoute().push(context);
                      }
                    : null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
