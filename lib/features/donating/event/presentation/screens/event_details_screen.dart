import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gooddeeds/features/donating/event/presentation/widgets/event_header.dart';
import 'package:gooddeeds/features/donating/family/presentation/widgets/family_card.dart';
import 'package:gooddeeds/shared/design_system/components/app_app_bar.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/typography/gd_text.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';

class EventDetailsScreen extends StatelessWidget {
  const EventDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(title: context.loc.eventDetails),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(
                right: 20,
                left: 20,
                top: 24,
              ),
              child: EventHeader(),
            ),
          ),
          const SliverGap(24),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            sliver: SliverToBoxAdapter(
              child: GDText(
                context.loc.affectedFamiles,
                style: context.textStyle.heading5,
              ),
            ),
          ),
          const SliverGap(16),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            sliver: SliverList.separated(
              itemBuilder: (context, index) => const FamilyCard(),
              separatorBuilder: (context, index) => const Gap(16),
            ),
          ),
        ],
      ),
    );
  }
}
