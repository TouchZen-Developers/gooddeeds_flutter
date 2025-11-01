import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gooddeeds/shared/data/user_role.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/tokens/colors.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';
import 'package:gooddeeds/src/config/di/injector.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../../gen/assets.gen.dart';
import '../../../../../../shared/design_system/typography/gd_text.dart' as ds;

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
    final text = context.textStyle;

    final prefs = getIt<SharedPreferences>();
    final role = UserRoleX.fromString(prefs.getString(kPrefUserRole));

    final showSteps = role != UserRole.donor;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
            if (showSteps)
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '$currentStep / ',
                      style: text.bodyLargeRegular,
                    ),
                    TextSpan(
                      text: '$totalSteps',
                      style: text.bodyLargeRegular.copyWith(
                        color: BrandTones.grey50,
                      ),
                    ),
                  ],
                ),
              )
            else
              const Gap(44),
          ],
        ),
        const Gap(24),
        ds.GDText(
          context.loc.register,
          style: context.textStyle.heading3,
        ),
        const Gap(16),
        ds.GDText(
          context.loc.enterYourPersonalInformation,
          style: text.bodyMediumMedium.copyWith(fontWeight: FontWeight.w600),
          color: BrandTones.grey80,
        ),
      ],
    );
  }
}
