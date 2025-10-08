import 'package:flutter/material.dart';
import 'package:gooddeeds/features/donating/cart/presentation/widgets/checkout_footer.dart';
import 'package:gooddeeds/features/donating/payment/presentation/widgets/add_new_card_widget.dart';
import 'package:gooddeeds/shared/design_system/components/app_app_bar.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';

class AddNewCardCheckoutScreen extends StatelessWidget {
  const AddNewCardCheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(title: context.loc.addNewCard),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            child: AddNewCardWidget(),
          ),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: CheckoutFooter(),
          ),
        ],
      ),
    );
  }
}
