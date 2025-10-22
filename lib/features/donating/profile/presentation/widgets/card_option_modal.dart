import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:gooddeeds/gen/assets.gen.dart';
import 'package:gooddeeds/shared/design_system/components/app_modal.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/typography/gd_text.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';

class CardOptionModal extends StatelessWidget {
  const CardOptionModal({
    super.key,
    required this.onSetAsDefault,
    required this.onEdit,
    required this.onDelete,
  });
  final VoidCallback onSetAsDefault;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    return AppModal(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GDText(
            context.loc.cardOption,
            style: context.textStyle.heading4,
          ),
          const Gap(24),
          _Item(
            onTap: onSetAsDefault,
            icon: Assets.icons.card.path,
            text: context.loc.setCardAsDefault,
            color: context.colors.secondary,
          ),
          const Gap(12),
          _Item(
            onTap: onEdit,
            icon: Assets.icons.edit.path,
            text: context.loc.editCard,
            color: context.colors.secondary,
          ),
          const Gap(12),
          _Item(
            onTap: onDelete,
            icon: Assets.icons.delete.path,
            text: context.loc.deleteCard,
            color: context.colors.error,
          ),
          const Gap(24),
        ],
      ),
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({
    required this.icon,
    required this.text,
    required this.color,
    required this.onTap,
  });
  final String icon;
  final String text;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(color: context.colors.outline),
          borderRadius: const BorderRadius.all(Radius.circular(16)),
        ),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: color.withValues(alpha: .1),
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset(
                icon,
                colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
              ),
            ),
            const Gap(16),
            GDText(text, style: context.textStyle.bodyMediumMedium),
          ],
        ),
      ),
    );
  }
}
