import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:gooddeeds/shared/design_system/components/app_app_bar.dart';
import 'package:gooddeeds/shared/design_system/components/gd_simple_action_dialog.dart';
import 'package:gooddeeds/shared/design_system/components/password_field.dart';
import 'package:gooddeeds/shared/design_system/components/primary_button.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/typography/gd_text.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key, required this.redirectPath});
  final String redirectPath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(title: context.loc.changePassword),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PasswordField(
              hint: context.loc.currentPassword,
              label: context.loc.currentPassword,
            ),
            const Gap(24),
            PasswordField(
              hint: context.loc.newPassword,
              label: context.loc.newPassword,
            ),
            const Gap(24),
            PasswordField(
              hint: context.loc.confirmPassword,
              label: context.loc.confirmPassword,
            ),
            const Gap(12),
            GDText(
              context.loc.passwordRule,
              style: context.textStyle.bodySmallRegular,
              color: context.onSurface.shade80,
            ),
            const Spacer(),
            PrimaryButton(
              fullWidth: true,
              label: context.loc.save,
              onPressed: () {
                showDialog<void>(
                  context: context,
                  barrierDismissible: false,
                  builder: (_) => GDSimpleActionDialog(
                    title: '${context.loc.success}!',
                    message: context.loc.passwordChangedSuccessMessage,
                    actionLabel: context.loc.done,
                    onAction: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ).then(
                  (value) {
                    if (!context.mounted) return;
                    if (context.mounted) {
                      context.go(redirectPath);
                    }
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
