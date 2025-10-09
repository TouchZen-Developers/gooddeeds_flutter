import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/typography/gd_text.dart';

class CreditCardItem extends StatelessWidget {
  const CreditCardItem({super.key, required this.selected});

  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 167,
      width: double.infinity,
      decoration: BoxDecoration(
        color: selected ? context.colors.secondary : context.onSurface.shade50,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: Stack(
        children: [
          Positioned(
            right: -100,
            top: -80,
            bottom: -80,
            child: Container(
              width: 260,
              height: 260,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    context.colors.onPrimary.withValues(alpha: 0.15),
                    context.colors.onPrimary.withValues(alpha: 0.0),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          Positioned(
            right: 16,
            top: 16,
            child: Container(
              width: 36,
              height: 20,
              decoration: BoxDecoration(
                color: context.colors.onPrimary.withValues(alpha: .2),
                borderRadius: const BorderRadius.all(Radius.circular(30)),
              ),
              child: Icon(
                Icons.more_horiz_rounded,
                color: context.colors.onPrimary,
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
                const Gap(24),
                GDText(
                  '••••• •••••  •••••  2020',
                  style: context.textStyle.bodyLargeMedium,
                  color: context.colors.onPrimary,
                ),
                const Gap(24),
                Divider(
                  height: 1,
                  color: context.colors.onPrimary.withValues(alpha: .2),
                ),
                const Spacer(),
                GDText(
                  'John William',
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
