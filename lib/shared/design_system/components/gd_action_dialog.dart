import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gooddeeds/shared/design_system/components/text_link.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/tokens/colors.dart';
import 'package:gooddeeds/shared/design_system/typography/gd_text.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';

class GDActionDialog extends StatelessWidget {
  const GDActionDialog({
    super.key,
    required this.title,
    required this.message,
    this.yesLabel,
    required this.onYes,
    this.noLabel,
    required this.onNo,
  });

  final String title;
  final String message;
  final String? yesLabel;
  final VoidCallback onYes;
  final String? noLabel;
  final VoidCallback onNo;

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
            GDText(
              title,
              style: context.textStyle.heading4,
              textAlign: TextAlign.center,
            ),
            Gap(gaps.sm),
            GDText(
              message,
              style: text.bodyLargeRegular,
              color: BrandTones.grey80,
              textAlign: TextAlign.center,
            ),
            const Gap(24),
            Row(
              children: [
                Expanded(
                  child: GDTextLink(
                    label: noLabel ?? context.loc.no,
                    color: context.colors.primary,
                    onPressed: onNo,
                    style: text.bodyLargeMedium,
                  ),
                ),
                Expanded(
                  child: GDTextLink(
                    label: yesLabel ?? context.loc.yes,
                    color: context.colors.primary,
                    onPressed: onYes,
                    style: text.bodyLargeMedium,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
