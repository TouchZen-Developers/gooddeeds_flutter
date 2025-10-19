import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gooddeeds/features/donating/cart/presentation/widgets/my_cart_item.dart';
import 'package:gooddeeds/features/donating/cart/presentation/widgets/sub_total_widget.dart';
import 'package:gooddeeds/features/donating/cart/presentation/widgets/taxes_fees_widget.dart';
import 'package:gooddeeds/gen/assets.gen.dart';
import 'package:gooddeeds/shared/design_system/components/app_app_bar.dart';
import 'package:gooddeeds/shared/design_system/components/primary_button.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';
import 'package:gooddeeds/src/config/routes/app_router.dart';

class DonaitingMyCartScreen extends StatelessWidget {
  const DonaitingMyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(title: context.loc.myCart),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return const MyCartItem();
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const Gap(16);
                },
                itemCount: 10,
              ),
            ),
          ),
          Container(
            padding:
                const EdgeInsets.only(right: 20, left: 20, top: 16, bottom: 32),
            decoration: BoxDecoration(
              color: context.colors.onPrimary,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                ),
              ],
            ),
            child: Column(
              children: [
                const SubTotalWidget(),
                const Gap(8),
                const TaxesFeesWidget(),
                Divider(
                  height: 32,
                  color: context.colors.outline,
                ),
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
                        onPressed: () {
                          CheckoutRoute().push(context);
                        },
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

// ignore: unused_element
class _EmptyCart extends StatelessWidget {
  const _EmptyCart();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.images.emptyCart.svg(height: 140),
            const Gap(24),
            Text(
              context.loc.yourCartIsEmpty,
              style: context.textStyle.heading4,
            ),
            const Gap(6),
            Text(
              context.loc.yourCartIsEmptyDesc,
              textAlign: TextAlign.center,
              style: context.textStyle.bodyLargeRegular.copyWith(
                color: context.onSurface.shade50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
