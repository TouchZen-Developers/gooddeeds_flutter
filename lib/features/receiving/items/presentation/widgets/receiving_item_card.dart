import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:gooddeeds/features/receiving/items/presentation/widgets/item_widget.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';

class ReceivingItemCard extends StatelessWidget {
  const ReceivingItemCard({
    super.key,
    required this.color,
    required this.title,
    required this.iconPath,
  });
  final Color color;
  final String title;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: context.colors.outline),
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: color.withValues(alpha: 0.1),
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(iconPath),
              ),
              const Gap(16),
              Expanded(
                child: Text(
                  title,
                  style: context.textStyle.bodyLargeSemiBold,
                ),
              ),
            ],
          ),
          const Gap(20),
          Divider(color: context.onSurface.shade20, height: 1),
          const Gap(20),
          const Column(
            children: [
              ItemWidget(),
              Gap(16),
              ItemWidget(),
            ],
          ),
        ],
      ),
    );
  }
}
