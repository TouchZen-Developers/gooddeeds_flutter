import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gooddeeds/gen/assets.gen.dart';
import 'package:gooddeeds/shared/design_system/components/primary_button.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/tokens/colors.dart';
import 'package:gooddeeds/shared/design_system/typography/gd_text.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';

class GDApprovedDialog extends StatelessWidget {
  const GDApprovedDialog({
    super.key,
    required this.onAction,
  });
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
            Assets.images.approve.svg(),
            const Gap(24),
            GDText(
              '${context.loc.congrats}!',
              style: context.textStyle.heading4,
              textAlign: TextAlign.center,
            ),
            const Gap(6),
            GDText(
              context.loc.approveProfileMessage,
              style: text.bodyMediumRegular,
              color: BrandTones.grey80,
              textAlign: TextAlign.center,
            ),
            const Gap(24),
            PrimaryButton(
              fullWidth: true,
              label: context.loc.continueText,
              onPressed: onAction,
            ),
          ],
        ),
      ),
    );
  }
}
