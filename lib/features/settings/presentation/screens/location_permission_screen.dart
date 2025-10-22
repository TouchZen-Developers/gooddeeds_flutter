import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:gooddeeds/gen/assets.gen.dart';
import 'package:gooddeeds/shared/design_system/components/app_app_bar.dart';
import 'package:gooddeeds/shared/design_system/components/primary_button.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/typography/gd_text.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';

class LocationPermissionScreen extends StatelessWidget {
  const LocationPermissionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(title: context.loc.allowLocation),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            const Spacer(),
            Assets.images.allowLocation.svg(height: 140),
            const Gap(40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.loc.allowYourLocation,
                    style: context.textStyle.heading4.copyWith(
                      height: 1.4,
                    ),
                  ),
                  const Gap(8),
                  GDText(
                    context.loc.allowYourLocationDesc,
                    style: context.textStyle.bodyLargeRegular.copyWith(
                      color: context.onSurface.shade50,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            PrimaryButton(
              fullWidth: true,
              label: context.loc.sureILikeThat,
              onPressed: () {
                context.pop();
              },
            ),
            PrimaryButton(
              fullWidth: true,
              variant: ButtonVariant.ghost,
              label: context.loc.notNow,
              onPressed: () {
                context.pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
