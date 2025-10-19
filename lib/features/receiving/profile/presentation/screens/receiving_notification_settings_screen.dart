import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gooddeeds/shared/design_system/components/app_app_bar.dart';
import 'package:gooddeeds/shared/design_system/components/app_switch.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/typography/gd_text.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';

class ReceivingNotificationSettingsScreen extends StatelessWidget {
  const ReceivingNotificationSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(title: context.loc.notifications),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _NotificationSetting(
                title: context.loc.ordersReceived,
                desc: context.loc.ordersReceivedDesc,
              ),
              const Gap(12),
              _NotificationSetting(
                title: context.loc.ordersDelivered,
                desc: context.loc.ordersDeliveredDesc,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _NotificationSetting extends StatelessWidget {
  const _NotificationSetting({required this.title, required this.desc});
  final String title;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: context.colors.outline),
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GDText(title, style: context.textStyle.bodyLargeSemiBold),
          const Gap(8),
          GDText(
            desc,
            style: context.textStyle.bodyMediumRegular,
            color: context.onSurface.shade70,
          ),
          const Gap(16),
          Divider(
            color: context.onSurface.shade20,
            height: 1,
          ),
          const Gap(16),
          AppSwitch(
            label: context.loc.emailUpdates,
            value: true,
            onChanged: (value) {},
          ),
          const Gap(16),
          AppSwitch(
            label: context.loc.pushNotification,
            value: true,
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}
