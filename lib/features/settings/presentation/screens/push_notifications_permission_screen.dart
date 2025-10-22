import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:gooddeeds/gen/assets.gen.dart';
import 'package:gooddeeds/shared/design_system/components/app_app_bar.dart';
import 'package:gooddeeds/shared/design_system/components/primary_button.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/typography/gd_text.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';

class PushNotificationsPermissionScreen extends StatelessWidget {
  const PushNotificationsPermissionScreen({super.key, required this.items});
  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(title: context.loc.pushNotifications),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            const Spacer(),
            Assets.images.pushNotifications.svg(height: 140),
            const Gap(40),
            Text(
              context.loc.receiveNotificationsForMessage,
              style: context.textStyle.heading4.copyWith(
                height: 1.4,
              ),
            ),
            const Gap(8),
            ...items.map(
              (e) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                child: Row(
                  children: [
                    Container(
                      width: 4,
                      height: 4,
                      decoration: BoxDecoration(
                        color: context.onSurface.shade80,
                        shape: BoxShape.circle,
                      ),
                    ),
                    const Gap(8),
                    GDText(
                      e,
                      style: context.textStyle.bodyLargeRegular.copyWith(
                        color: context.onSurface.shade50,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            PrimaryButton(
              fullWidth: true,
              label: context.loc.allow,
              onPressed: () {
                context.pop();
              },
            ),
            PrimaryButton(
              fullWidth: true,
              variant: ButtonVariant.ghost,
              label: context.loc.notNow,
              onPressed: () {
                context.pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
