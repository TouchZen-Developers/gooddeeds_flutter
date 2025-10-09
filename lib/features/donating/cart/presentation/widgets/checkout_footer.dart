import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gooddeeds/features/donating/cart/presentation/widgets/sub_total_widget.dart';
import 'package:gooddeeds/features/donating/cart/presentation/widgets/taxes_fees_widget.dart';
import 'package:gooddeeds/shared/design_system/components/primary_button.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';

class CheckoutFooter extends StatelessWidget {
  const CheckoutFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SubTotalWidget(),
        const Gap(8),
        const TaxesFeesWidget(),
        const Gap(16),
        Divider(
          height: 1,
          color: context.colors.outline,
        ),
        const Gap(16),
        Row(
          children: [
            Expanded(
              child: Text(
                context.loc.total,
                style: context.textStyle.bodyMediumSemiBold.copyWith(
                  color: context.onSurface.shade80,
                ),
              ),
            ),
            const Gap(4),
            Text(
              '\$300.00',
              style: context.textStyle.heading4.copyWith(
                color: context.colors.secondary,
              ),
            ),
          ],
        ),
        const Gap(16),
        PrimaryButton(
          fullWidth: true,
          label: context.loc.orderNow,
          onPressed: () {},
        ),
        Gap(MediaQuery.of(context).padding.bottom),
      ],
    );
  }
}
