import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gooddeeds/features/donating/family/presentation/widgets/family_card.dart';
import 'package:gooddeeds/shared/design_system/components/app_app_bar.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';

class RecentlyAffectedScreen extends StatelessWidget {
  const RecentlyAffectedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(title: context.loc.recentlyAffected),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 24),
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: FamilyCard(),
          );
        },
        itemCount: 20,
        separatorBuilder: (BuildContext context, int index) {
          return const Gap(16);
        },
      ),
    );
  }
}
