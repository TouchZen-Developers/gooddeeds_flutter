import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gooddeeds/features/auth/register/family_photo/presentation/widgets/family_photo_card.dart';
import 'package:gooddeeds/features/auth/register/register_impact/presentation/widgets/affected_events_widget.dart';
import 'package:gooddeeds/shared/design_system/components/app_app_bar.dart';
import 'package:gooddeeds/shared/design_system/components/gd_textfield.dart';
import 'package:gooddeeds/shared/design_system/components/primary_button.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';

class FamilyInformationScreen extends StatelessWidget {
  const FamilyInformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(title: context.loc.familyInformation),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GDTextField(
                hint: context.loc.contactName,
                label: context.loc.contactName,
              ),
              const Gap(24),
              GDTextField(
                hint: context.loc.familySize,
                label: context.loc.familySize,
              ),
              const Gap(24),
              GDTextField(
                hint: context.loc.fullAddress,
                label: context.loc.fullAddress,
              ),
              const Gap(24),
              const FamilyPhotoCard(),
              const Gap(24),
              Text(
                context.loc.affectedEvents,
                style: context.textStyle.bodyMediumMedium,
              ),
              const Gap(8),
              AffectedEventsWidget(
                onTap: () {},
              ),
              const Gap(24),
              PrimaryButton(
                fullWidth: true,
                label: context.loc.save,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
