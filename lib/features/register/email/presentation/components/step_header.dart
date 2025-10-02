import 'package:flutter/material.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/tokens/colors.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../../shared/design_system/typography/gd_text.dart' as ds;

class StepHeader extends StatelessWidget {
  const StepHeader({
    super.key,
    required this.currentStep,
    required this.totalSteps,
    this.onBack,
  });

  final int currentStep;
  final int totalSteps;
  final VoidCallback? onBack;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Back + Counter
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: onBack ?? () => Navigator.of(context).pop(),
              borderRadius: BorderRadius.circular(50),
              child: Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child:
                    Center(child: Assets.icons.left.svg(width: 14, height: 14)),
              ),
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: '$currentStep / ',
                    style: context.textStyle.bodyLargeRegular,
                  ),
                  TextSpan(
                    text: '$totalSteps',
                    style: context.textStyle.bodyLargeRegular.copyWith(
                      color: BrandTones.grey50,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),

        // Title + Subtitle
        ds.GDText(
          '${context.loc.register} ',
          variant: ds.GDTextStyle.heading3,
          fontWeight: FontWeight.w600,
        ),
        const SizedBox(height: 6),
        ds.GDText(
          context.loc.enterYourPersonalInformation,
          variant: ds.GDTextStyle.bodyMediumMedium,
          color: BrandTones.grey80,
          fontWeight: FontWeight.w600,
        ),
      ],
    );
  }
}
