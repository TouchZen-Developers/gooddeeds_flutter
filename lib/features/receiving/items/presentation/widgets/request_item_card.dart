import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:gooddeeds/gen/assets.gen.dart';
import 'package:gooddeeds/shared/design_system/components/app_checkbox.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/typography/gd_text.dart';

class RequestItemCard extends StatelessWidget {
  const RequestItemCard({
    super.key,
    required this.title,
    required this.color,
    required this.iconPath,
  });
  final String title;
  final Color color;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: context.gaps.md,
        vertical: context.gaps.sm,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(context.radii.md)),
        border: Border.all(color: context.colors.outline),
      ),
      child: ExpansionTile(
        tilePadding: EdgeInsets.zero,
        childrenPadding: EdgeInsets.zero,
        iconColor: context.onSurface.shade100,
        minTileHeight: 50,
        visualDensity: VisualDensity.compact,
        title: Row(
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
            Text(
              title,
              style: context.textStyle.bodyLargeSemiBold,
            ),
          ],
        ),
        shape: Border.all(color: Colors.transparent),
        dense: true,
        backgroundColor: Colors.transparent,
        collapsedBackgroundColor: Colors.transparent,
        initiallyExpanded: true,
        children: [
          Gap(context.gaps.xs),
          Divider(
            height: 1,
            color: context.onSurface.shade20,
          ),
          const _ItemSelection(selected: true),
          const _ItemSelection(selected: false),
          const _ItemSelection(selected: false),
        ],
      ),
    );
  }
}

class _ItemSelection extends StatelessWidget {
  const _ItemSelection({required this.selected});
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        children: [
          AppCheckbox(
            value: selected,
            onChanged: (value) {},
          ),
          const Gap(8),
          SizedBox(
            width: 40,
            height: 40,
            child: CircleAvatar(
              backgroundImage:
                  Assets.images.mock4.image(fit: BoxFit.cover).image,
            ),
          ),
          const Gap(8),
          Expanded(
            child: Text(
              '6 Pack Canned Tuna - Packed Fresh. Sustainable Caught.',
              style: context.textStyle.bodyXSmallRegular,
            ),
          ),
          const Gap(16),
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              border: Border.all(color: context.onSurface.shade30!),
              borderRadius: const BorderRadius.all(Radius.circular(40)),
            ),
            child: Row(
              children: [
                const Icon(Icons.add, size: 16),
                SizedBox(
                  width: 25,
                  child: GDText(
                    '2',
                    style: context.textStyle.bodySmallRegular,
                    textAlign: TextAlign.center,
                  ),
                ),
                const Icon(Icons.remove, size: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
