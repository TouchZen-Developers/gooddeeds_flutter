import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gooddeeds/features/donating/cart/presentation/widgets/checkout_item.dart';
import 'package:gooddeeds/features/donating/cart/presentation/widgets/sub_total_widget.dart';
import 'package:gooddeeds/features/donating/cart/presentation/widgets/taxes_fees_widget.dart';
import 'package:gooddeeds/shared/design_system/components/app_app_bar.dart';
import 'package:gooddeeds/shared/design_system/components/primary_button.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(title: context.loc.checkout),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
              child: CustomScrollView(
                slivers: [
                  SliverList.separated(
                    itemBuilder: (context, index) {
                      return CheckoutItem();
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const Gap(16);
                    },
                    itemCount: 3,
                  ),
                  SliverToBoxAdapter(
                    child: Column(
                      children: [
                        Divider(
                          height: context.gaps.xxl,
                        ),
                        Text(
                          context.loc.paymentMethod,
                          style: context.textStyle.bodyLargeSemiBold,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding:
                const EdgeInsets.only(right: 20, left: 20, top: 16, bottom: 32),
            child: Column(
              children: [
                SubTotalWidget(),
                const Gap(8),
                TaxesFeesWidget(),
                const Divider(height: 32),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          context.loc.total,
                          style: context.textStyle.bodyMediumRegular.copyWith(
                            color: context.onSurface.shade80,
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
                    const Gap(32),
                    Expanded(
                      child: PrimaryButton(
                        label: context.loc.checkout,
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
