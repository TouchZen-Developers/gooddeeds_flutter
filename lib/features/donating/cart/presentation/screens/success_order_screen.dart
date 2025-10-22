import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gooddeeds/gen/assets.gen.dart';
import 'package:gooddeeds/shared/design_system/components/primary_button.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';

class SuccessOrderScreen extends StatelessWidget {
  const SuccessOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.images.successOrder.svg(height: 140),
            const Gap(24),
            Text(
              '${context.loc.success} !',
              style: context.textStyle.heading4,
            ),
            const Gap(6),
            Text(
              context.loc.successOrderMessage,
              textAlign: TextAlign.center,
              style: context.textStyle.bodyLargeRegular.copyWith(
                color: context.onSurface.shade50,
              ),
            ),
            const Gap(40),
            PrimaryButton(
              label: context.loc.myOrder,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
