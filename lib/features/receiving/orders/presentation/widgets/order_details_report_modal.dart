import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gooddeeds/shared/design_system/components/app_modal.dart';
import 'package:gooddeeds/shared/design_system/components/app_radio.dart';
import 'package:gooddeeds/shared/design_system/components/gd_textfield.dart';
import 'package:gooddeeds/shared/design_system/components/primary_button.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/typography/gd_text.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';

class OrderDetailsReportModal extends StatelessWidget {
  const OrderDetailsReportModal({super.key});

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
                  context.loc.reportOrderMessage,
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
          const _Item('Order not received'),
          const Gap(12),
          const _Item('Order not as expected'),
          const Gap(12),
          const _Item('Item Damaged'),
          const Gap(12),
          const _Item('Other'),
          const Gap(24),
          GDTextField(
            lines: 4,
            hint: context.loc.enterMessage,
          ),
          const Gap(24),
          PrimaryButton(
            fullWidth: true,
            label: context.loc.sendReport,
            onPressed: () {},
          ),
          const Gap(24),
          Gap(MediaQuery.of(context).viewInsets.bottom),
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
      child: AppRadio(
        label: text,
        size: RadioSize.small,
        value: true,
        groupValue: true,
        onChanged: (value) {},
      ),
    );
  }
}
