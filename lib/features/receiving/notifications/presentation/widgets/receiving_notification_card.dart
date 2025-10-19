import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gooddeeds/gen/assets.gen.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/typography/gd_text.dart';

class ReceivingNotificationCard extends StatelessWidget {
  const ReceivingNotificationCard({super.key, required this.isUnread});
  final bool isUnread;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isUnread ? context.colors.secondary.withValues(alpha: .1) : null,
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        border: isUnread ? null : Border.all(color: context.colors.outline),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Assets.icons.items.svg(
                colorFilter:
                    ColorFilter.mode(context.colors.secondary, BlendMode.srcIn),
              ),
              const Gap(16),
              Expanded(
                child: GDText(
                  'Item Fulfilled',
                  style: context.textStyle.bodyMediumSemiBold,
                ),
              ),
              if (isUnread)
                Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: context.colors.secondary,
                    shape: BoxShape.circle,
                  ),
                ),
            ],
          ),
          const Gap(16),
          GDText(
            'Lorem ipsum dolor sit amet consectetur. Ornare sit venenatis libero commodo euismod eget. Facilisis lacus nisi enim faucibus convallis at vestibulum.',
            style: context.textStyle.bodyMediumLight,
          ),
        ],
      ),
    );
  }
}
