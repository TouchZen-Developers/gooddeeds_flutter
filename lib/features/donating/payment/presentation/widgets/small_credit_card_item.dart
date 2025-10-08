import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/typography/gd_text.dart';

class SmallCreditCardItem extends StatelessWidget {
  const SmallCreditCardItem({super.key, required this.selected});

  final bool selected;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: selected ? context.colors.secondary : context.onSurface.shade50,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: Stack(
        children: [
          Positioned(
            right: -80,
            top: -40,
            bottom: -40,
            child: Container(
              width: 140,
              height: 140,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: context.colors.onPrimary.withValues(alpha: 0.1),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GDText(
                  'Bank of America',
                  style: context.textStyle.bodySmallRegular,
                  color: context.colors.onPrimary,
                ),
                const Gap(8),
                GDText(
                  '••••• •••••  •••••  2020',
                  style: context.textStyle.bodyMediumRegular,
                  color: context.colors.onPrimary,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
