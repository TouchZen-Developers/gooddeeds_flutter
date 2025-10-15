import 'package:flutter/material.dart';
import 'package:gooddeeds/shared/design_system/components/app_app_bar.dart';
import 'package:gooddeeds/shared/design_system/components/gd_textfield.dart';
import 'package:gooddeeds/shared/design_system/components/primary_button.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';
import 'package:gooddeeds/src/config/routes/app_router.dart';

class ChangeEmailScreen extends StatelessWidget {
  const ChangeEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(title: context.loc.changeEmail),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            GDTextField(
              hint: context.loc.emailAddress,
              label: context.loc.emailAddress,
            ),
            const Spacer(),
            PrimaryButton(
              fullWidth: true,
              label: context.loc.save,
              onPressed: () {
                const ConfirmEmailRoute().push(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
