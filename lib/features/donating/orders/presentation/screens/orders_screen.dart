import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gooddeeds/features/donating/orders/presentation/widgets/order_item.dart';
import 'package:gooddeeds/gen/assets.gen.dart';
import 'package:gooddeeds/shared/design_system/components/app_app_bar.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';
import 'package:gooddeeds/src/config/routes/app_router.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(title: context.loc.orders),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(
          vertical: 24,
          horizontal: 20,
        ),
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            const OrderDetailsRoute().push(context);
          },
          child: const OrderItem(),
        ),
        separatorBuilder: (BuildContext context, int index) {
          return const Gap(12);
        },
        itemCount: 2,
      ),
    );
  }
}

// ignore: unused_element
class _EmptyOrders extends StatelessWidget {
  const _EmptyOrders();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.images.emptyOrders.svg(height: 140),
            const Gap(24),
            Text(
              context.loc.noOrders,
              style: context.textStyle.heading4,
            ),
            const Gap(6),
            Text(
              context.loc.noOrdersDesc,
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
