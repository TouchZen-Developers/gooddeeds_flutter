import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gooddeeds/shared/design_system/components/app_modal.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/typography/gd_text.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';

class FamilyDetailsReportModal extends StatelessWidget {
  const FamilyDetailsReportModal({super.key});

  @override
  Widget build(BuildContext context) {
    return AppModal(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: GDText(
                  context.loc.report,
                  style: context.textStyle.heading4,
                ),
              ),
              IconButton(
                visualDensity: const VisualDensity(
                  horizontal: VisualDensity.minimumDensity,
                  vertical: VisualDensity.minimumDensity,
                ),
                onPressed: () {},
                icon: const Icon(Icons.close),
              ),
            ],
          ),
          const Gap(24),
          const _Item('Fraud or misrepresentation'),
          const Gap(12),
          const _Item('Abuse of the platform'),
          const Gap(12),
          const _Item('Unverifiable claims'),
          const Gap(12),
          const _Item('Suspicious activity'),
          const Gap(12),
          const _Item('Inappropriate content'),
          const Gap(12),
          const _Item('Legal or ethical concerns'),
          const Gap(12),
          const _Item('Hate speech'),
          const Gap(12),
          const _Item('Promoting violence'),
          const Gap(12),
          const _Item('Other'),
          const Gap(12),
        ],
      ),
    );
  }
}

class _Item extends StatelessWidget {
  const _Item(this.text);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: context.colors.outline),
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      child: GDText(
        text,
        style: context.textStyle.bodyMediumMedium,
      ),
    );
  }
}
