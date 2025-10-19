import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:gooddeeds/shared/design_system/components/app_app_bar.dart';
import 'package:gooddeeds/shared/design_system/components/gd_action_dialog.dart';
import 'package:gooddeeds/shared/design_system/components/gd_simple_action_dialog.dart';
import 'package:gooddeeds/shared/design_system/components/gd_textfield.dart';
import 'package:gooddeeds/shared/design_system/components/primary_button.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';

class ConfirmEmailScreen extends StatelessWidget {
  const ConfirmEmailScreen({super.key, required this.redirectPath});
  final String redirectPath;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: AppAppBar(
          title: context.loc.confirmationCode,
          onBack: () {
            showDialog<void>(
              context: context,
              builder: (_) => GDActionDialog(
                title: context.loc.cancelChanges,
                message: context.loc.cancelEmailChangesDesc,
                onYes: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pop();
                },
                onNo: () {
                  Navigator.of(context).pop();
                },
              ),
            );
          },
        ),
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
                hint: context.loc.enterConfimCode,
              ),
              const Gap(16),
              PrimaryButton(
                variant: ButtonVariant.ghost,
                label: context.loc.resendCode,
                size: ButtonSize.small,
                onPressed: () {},
              ),
              const Spacer(),
              PrimaryButton(
                fullWidth: true,
                label: context.loc.confirm,
                onPressed: () {
                  showDialog<void>(
                    context: context,
                    builder: (_) => GDSimpleActionDialog(
                      title: '${context.loc.success} !',
                      message: context.loc.successEmailChangeMessage,
                      onAction: () {
                        Navigator.of(context).pop();
                      },
                      actionLabel: context.loc.done,
                    ),
                  ).then(
                    (value) {
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
      ),
    );
  }
}
