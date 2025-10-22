import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gooddeeds/shared/design_system/components/text_link.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/tokens/colors.dart';
import 'package:gooddeeds/shared/design_system/typography/gd_text.dart';

class GDSimpleActionDialog extends StatelessWidget {
  const GDSimpleActionDialog({
    super.key,
    this.title,
    required this.message,
    required this.actionLabel,
    required this.onAction,
  });

  final String? title;
  final String message;
  final String actionLabel;
  final VoidCallback onAction;

  @override
  Widget build(BuildContext context) {
    final text = context.textStyle;
    final gaps = context.gaps;

    return Dialog(
      backgroundColor: Colors.white,
      insetPadding: const EdgeInsets.symmetric(horizontal: 28),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: EdgeInsets.fromLTRB(gaps.lg, gaps.lg, gaps.lg, gaps.lg),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (title != null) ...[
              GDText(
                title!,
                style: context.textStyle.heading4,
                textAlign: TextAlign.center,
              ),
              Gap(gaps.sm),
            ],
            GDText(
              message,
              style: text.bodyLargeRegular,
              color: BrandTones.grey80,
              textAlign: TextAlign.center,
            ),
            Gap(gaps.md),
            GDTextLink(
              label: actionLabel,
              color: context.colors.primary,
              onPressed: onAction,
              style: text.bodyLargeMedium,
            ),
          ],
        ),
      ),
    );
  }
}
