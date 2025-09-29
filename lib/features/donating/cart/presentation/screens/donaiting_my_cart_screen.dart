import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gooddeeds/features/donating/cart/presentation/widgets/my_cart_item.dart';
import 'package:gooddeeds/shared/design_system/components/app_app_bar.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/tokens/colors.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';

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
              padding: const EdgeInsets.all(20.0),
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return MyCartItem();
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const Gap(16);
                },
                itemCount: 10,
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  context.loc.subTotal,
                  style: context.textStyle.bodyMediumRegular
                      .copyWith(color: context.onSurface.shade80),
                ),
              ),
              Text('\$300.00'),
            ],
          ),
        ],
      ),
    );
  }
}
