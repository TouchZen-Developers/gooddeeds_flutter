import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gooddeeds/shared/design_system/components/primary_button.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/tokens/colors.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';
import 'package:gooddeeds/src/config/routes/app_router.dart';

import '../../../../../../gen/assets.gen.dart'; // context.loc

class ApplicationPendingScreen extends StatelessWidget {
  const ApplicationPendingScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final gaps = context.gaps;
    final text = context.textStyle;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(gaps.xl, gaps.xl, gaps.xl, gaps.xl),
          child: Column(
            children: [
              const Spacer(),
              Center(
                child: Assets.icons.applicationPending.svg(),
              ),
              Gap(gaps.xl),
              Text(
                context.loc.applicationPending,
                style: text.heading4.copyWith(color: BrandTones.grey100),
                textAlign: TextAlign.center,
              ),
              Gap(gaps.sm),
              Text(
                context.loc.applicationPendingDesc,
                style: text.bodyLargeRegular.copyWith(color: BrandTones.grey80),
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              PrimaryButton(
                label: context.loc.continueToHome,
                size: ButtonSize.large,
                fullWidth: true,
                onPressed: () {
                  const DonatingHomeRoute().go(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
