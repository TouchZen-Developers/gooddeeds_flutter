import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:gooddeeds/shared/design_system/components/gd_textfield.dart';
import 'package:gooddeeds/shared/design_system/components/primary_button.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/typography/gd_text.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';

import '../../../../../../shared/design_system/tokens/colors.dart';

class SubmitNoteDialog extends StatelessWidget {
  const SubmitNoteDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final text = context.textStyle;
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 24),
        child: Material(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                GDText(
                  context.loc.sendThankYouNote,
                  style: text.heading5.copyWith(color: BrandTones.grey100),
                  textAlign: TextAlign.center,
                ),
                const Gap(24),
                GDTextField(
                  hint: context.loc.sendThankYouNote,
                  lines: 4,
                ),
                const Gap(24),
                PrimaryButton(
                  fullWidth: true,
                  label: context.loc.sendMessage,
                  onPressed: () {
                    context.pop();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
