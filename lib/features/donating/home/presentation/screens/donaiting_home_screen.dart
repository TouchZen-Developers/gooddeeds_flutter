import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:gooddeeds/features/donating/family/presentation/screens/family_details_screen.dart';
import 'package:gooddeeds/features/donating/event/presentation/widgets/event_card.dart';
import 'package:gooddeeds/features/donating/family/presentation/widgets/family_card.dart';
import 'package:gooddeeds/features/donating/home/presentation/widgets/filter_modal.dart';
import 'package:gooddeeds/gen/assets.gen.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';
import 'package:gooddeeds/src/config/routes/app_router.dart';

class DonaitingHomeScreen extends StatelessWidget {
  const DonaitingHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello John',
                            style: context.textStyles.headlineMedium,
                          ),
                          const Gap(8),
                          Text(
                            context.loc.donaitingHomeHeader,
                            style: context.textStyles.bodySmall,
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        showCupertinoModalPopup(
                          context: context,
                          barrierColor: Colors.black45,
                          builder: (context) {
                            return FilterModal(
                              onApply: () {
                                context.pop();
                                FamilyListRoute().push(context);
                              },
                            );
                          },
                        );
                      },
                      icon: Container(
                        width: 44,
                        height: 44,
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: context.colors.outline),
                        ),
                        child: Assets.icons.filter.svg(),
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  context.loc.recentEvents,
                  style: context.textStyles.headlineMedium,
                ),
              ),
              const Gap(16),
              SizedBox(
                height: 200,
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => EventCard(),
                  itemCount: 5,
                  separatorBuilder: (BuildContext context, int index) =>
                      const Gap(16),
                ),
              ),
              const Gap(24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        context.loc.helpFamilyNearYou,
                        style: context.textStyles.headlineMedium,
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        visualDensity: VisualDensity(
                          vertical: VisualDensity.minimumDensity,
                          horizontal: VisualDensity.minimumDensity,
                        ),
                        padding: EdgeInsets.zero,
                        textStyle: context.textStyle.bodyMediumMedium,
                      ),
                      onPressed: () {},
                      child: Text(context.loc.seeAll),
                    ),
                  ],
                ),
              ),
              const Gap(16),
              SizedBox(
                height: 122,
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => SizedBox(
                    width: MediaQuery.of(context).size.width / 1.35,
                    child: GestureDetector(
                      onTap: () {
                        // FamilyDetailsRoute().push(context);
                        showDialog(
                          fullscreenDialog: true,
                          context: context,
                          useSafeArea: false,
                          builder: (context) => Dialog.fullscreen(
                            insetAnimationCurve: Curves.bounceIn,
                            insetAnimationDuration: Duration(milliseconds: 800),
                            child: FamilyDetailsScreen(),
                          ),
                        );
                      },
                      child: FamilyCard(),
                    ),
                  ),
                  itemCount: 5,
                  separatorBuilder: (BuildContext context, int index) =>
                      const Gap(16),
                ),
              ),
              const Gap(24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        context.loc.recentlyAffected,
                        style: context.textStyles.headlineMedium,
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        visualDensity: VisualDensity(
                          vertical: VisualDensity.minimumDensity,
                          horizontal: VisualDensity.minimumDensity,
                        ),
                        padding: EdgeInsets.zero,
                        textStyle: context.textStyle.bodyMediumMedium,
                      ),
                      onPressed: () {},
                      child: Text(context.loc.seeAll),
                    ),
                  ],
                ),
              ),
              const Gap(16),
              SizedBox(
                height: 122,
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => SizedBox(
                    width: MediaQuery.of(context).size.width / 1.35,
                    child: FamilyCard(),
                  ),
                  itemCount: 5,
                  separatorBuilder: (BuildContext context, int index) =>
                      const Gap(16),
                ),
              ),
              const Gap(20),
            ],
          ),
        ),
      ),
    );
  }
}
