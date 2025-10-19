import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gooddeeds/features/donating/orders/presentation/widgets/status_widget.dart';
import 'package:gooddeeds/features/receiving/items/presentation/widgets/item_widget.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/typography/gd_text.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';

class ReceivingOrderCard extends StatelessWidget {
  const ReceivingOrderCard({super.key});

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
          const ItemWidget(),
          const Gap(20),
          Divider(
            color: context.colors.outline,
            height: 1,
          ),
          const Gap(20),
          Row(
            children: [
              Expanded(
                child: GDText(
                  'Dec, 23 2023',
                  style: context.textStyle.bodyMediumRegular,
                ),
              ),
              const StatusWidget(),
            ],
          ),
          const Gap(24),
          GDText(
            context.loc.noteReceived,
            style: context.textStyle.bodyMediumSemiBold,
          ),
          const Gap(8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              color: context.onSurface.shade10,
              border: Border.all(color: context.onSurface.shade20!),
              borderRadius: const BorderRadius.all(Radius.circular(12)),
            ),
            child: GDText(
              'Thank you for the gift! May you and your family always have a happy life.',
              style: context.textStyle.bodyMediumRegular,
            ),
          ),
        ],
      ),
    );
  }
}
