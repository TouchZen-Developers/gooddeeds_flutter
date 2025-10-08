import 'package:flutter/material.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/tokens/colors.dart';
import 'package:gooddeeds/shared/design_system/typography/gd_text.dart';

class StatusWidget extends StatelessWidget {
  const StatusWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: BrandTones.info.withValues(alpha: .1),
        borderRadius: const BorderRadius.all(Radius.circular(50)),
      ),
      child: GDText(
        'In progress',
        style: context.textStyle.bodySmallMedium,
        color: BrandTones.info,
      ),
    );
  }
}
