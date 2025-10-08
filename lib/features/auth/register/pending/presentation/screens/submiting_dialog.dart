import 'package:flutter/material.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';

import '../../../../../../shared/design_system/tokens/colors.dart';

class SubmittingDialog extends StatelessWidget {
  const SubmittingDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final text = context.textStyle;
    return Center(
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 40,
                height: 40,
                child: CircularProgressIndicator(
                  strokeWidth: 4,
                  valueColor: AlwaysStoppedAnimation(BrandTones.primary),
                ),
              ),
              const SizedBox(height: 14),
              Text(
                context.loc.submittingApplication,
                style:
                    text.bodyMediumMedium.copyWith(color: BrandTones.grey100),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
