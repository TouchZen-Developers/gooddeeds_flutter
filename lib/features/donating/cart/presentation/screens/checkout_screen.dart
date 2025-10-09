import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gooddeeds/features/donating/cart/presentation/widgets/checkout_footer.dart';
import 'package:gooddeeds/features/donating/cart/presentation/widgets/checkout_item.dart';
import 'package:gooddeeds/features/donating/payment/presentation/widgets/small_credit_card_item.dart';
import 'package:gooddeeds/gen/assets.gen.dart';
import 'package:gooddeeds/shared/design_system/components/app_app_bar.dart';
import 'package:gooddeeds/shared/design_system/components/primary_button.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/typography/gd_text.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';
import 'package:gooddeeds/src/config/routes/app_router.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(title: context.loc.checkout),
      body: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
        child: CustomScrollView(
          slivers: [
            SliverList.separated(
              itemBuilder: (context, index) {
                return const CheckoutItem();
              },
              separatorBuilder: (BuildContext context, int index) {
                return const Gap(16);
              },
              itemCount: 3,
            ),
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Gap(24),
                  Divider(
                    height: 1,
                    color: context.colors.outline,
                  ),
                  const Gap(24),
                  Text(
                    context.loc.paymentMethod,
                    style: context.textStyle.bodyLargeSemiBold,
                  ),
                  const Gap(16),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(context.radii.md),
                      ),
                      border: Border.all(color: context.colors.outline),
                    ),
                    child: ExpansionTile(
                      tilePadding: const EdgeInsets.only(right: 20),
                      childrenPadding: EdgeInsets.zero,
                      iconColor: context.onSurface.shade100,
                      minTileHeight: 50,
                      visualDensity: VisualDensity.compact,
                      title: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 12,
                        ),
                        child: Row(
                          children: [
                            Assets.icons.creditCard.svg(),
                            const Gap(8),
                            Expanded(
                              child: GDText(
                                context.loc.creditCard,
                                style: context.textStyle.bodyMediumMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                      shape: Border.all(color: Colors.transparent),
                      dense: true,
                      backgroundColor: Colors.transparent,
                      collapsedBackgroundColor: Colors.transparent,
                      initiallyExpanded: true,
                      children: [
                        SizedBox(
                          height: 80,
                          child: ListView.separated(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) =>
                                SmallCreditCardItem(selected: index == 0),
                            itemCount: 2,
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return const Gap(12);
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: PrimaryButton(
                            label: context.loc.addNewCard,
                            fullWidth: true,
                            size: ButtonSize.small,
                            variant: ButtonVariant.outlined,
                            onPressed: () {
                              AddNewCardCheckoutRoute().push(context);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Gap(16),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                      border: Border.all(color: context.colors.outline),
                    ),
                    child: Row(
                      children: [
                        GDText(
                          context.loc.payWith,
                          style: context.textStyle.bodyMediumMedium,
                        ),
                        const Gap(8),
                        Assets.icons.applePay.svg(),
                      ],
                    ),
                  ),
                  const Gap(32),
                  const CheckoutFooter(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
