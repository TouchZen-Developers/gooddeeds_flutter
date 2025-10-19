import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gooddeeds/features/receiving/orders/presentation/widgets/receiving_order_card.dart';
import 'package:gooddeeds/shared/design_system/components/app_app_bar.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';
import 'package:gooddeeds/src/config/routes/app_router.dart';

class ReceivingOrdersScreen extends StatelessWidget {
  const ReceivingOrdersScreen({super.key});

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
            const ReceivingOrderDetailsRoute().push(context);
          },
          child: const ReceivingOrderCard(),
        ),
        separatorBuilder: (BuildContext context, int index) {
          return const Gap(12);
        },
        itemCount: 2,
      ),
    );
  }
}
