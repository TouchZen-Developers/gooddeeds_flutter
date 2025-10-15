import 'package:flutter/material.dart';
import 'package:gooddeeds/features/donating/payment/presentation/widgets/add_new_card_widget.dart';
import 'package:gooddeeds/shared/design_system/components/app_app_bar.dart';
import 'package:gooddeeds/shared/design_system/components/primary_button.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';

class AddNewCardScreen extends StatelessWidget {
  const AddNewCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(title: context.loc.addNewCard),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Column(
          children: [
            AddNewCardWidget(),
            const Spacer(),
            PrimaryButton(
              fullWidth: true,
              label: context.loc.save,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
