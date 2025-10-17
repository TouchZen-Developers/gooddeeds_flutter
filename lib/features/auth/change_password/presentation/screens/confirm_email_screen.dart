import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gooddeeds/shared/design_system/components/app_app_bar.dart';
import 'package:gooddeeds/shared/design_system/components/gd_textfield.dart';
import 'package:gooddeeds/shared/design_system/components/primary_button.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';

class ConfirmEmailScreen extends StatelessWidget {
  const ConfirmEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(title: context.loc.confirmationCode),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: context.loc.confirmationCodeDesc),
                  const TextSpan(text: '\n'),
                  TextSpan(
                    text: 'johnmail@gmail.com',
                    style: context.textStyle.bodyLargeRegular.copyWith(
                      color: context.colors.secondary,
                    ),
                  ),
                ],
                style: context.textStyle.bodyLargeRegular,
              ),
            ),
            const Gap(32),
            GDTextField(
              hint: context.loc.emailAddress,
            ),
            const Spacer(),
            PrimaryButton(
              fullWidth: true,
              label: context.loc.confirm,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
