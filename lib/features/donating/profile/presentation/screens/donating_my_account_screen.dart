import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gooddeeds/shared/design_system/components/app_app_bar.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/typography/gd_text.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';

class DonatingMyAccountScreen extends StatelessWidget {
  const DonatingMyAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(title: context.loc.myAccount),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _MyAccountItem(
                title: context.loc.emailAddress,
              ),
              const Gap(16),
              _MyAccountItem(
                title: context.loc.password,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MyAccountItem extends StatelessWidget {
  const _MyAccountItem({required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: context.colors.outline),
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      child: Row(
        children: [
          Expanded(
            child: GDText(title, style: context.textStyle.bodyMediumMedium),
          ),
          const Icon(Icons.chevron_right_rounded),
        ],
      ),
    );
  }
}
