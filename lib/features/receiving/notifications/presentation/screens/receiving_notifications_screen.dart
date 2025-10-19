import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gooddeeds/features/receiving/notifications/presentation/widgets/receiving_notification_card.dart';
import 'package:gooddeeds/shared/design_system/components/app_app_bar.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/typography/gd_text.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';

class ReceivingNotificationsScreen extends StatelessWidget {
  const ReceivingNotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(title: context.loc.notifications),
      body: ListView.separated(
        padding: const EdgeInsets.all(20),
        itemBuilder: (context, index) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (index == 0) ...[
              GDText(
                'Today, Dec 20 2023',
                style: context.textStyle.bodySmallRegular,
                color: context.onSurface.shade50,
              ),
              const Gap(12),
            ],
            ReceivingNotificationCard(isUnread: index == 0),
          ],
        ),
        separatorBuilder: (BuildContext context, int index) {
          if (index == 1) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(24),
                GDText(
                  'Yesterday, Dec 19 2023',
                  style: context.textStyle.bodySmallRegular,
                  color: context.onSurface.shade50,
                ),
                const Gap(12),
              ],
            );
          }
          return const Gap(12);
        },
        itemCount: 4,
      ),
    );
  }
}
