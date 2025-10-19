import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gooddeeds/features/receiving/items/presentation/widgets/request_item_card.dart';
import 'package:gooddeeds/gen/assets.gen.dart';
import 'package:gooddeeds/shared/design_system/components/app_app_bar.dart';
import 'package:gooddeeds/shared/design_system/components/primary_button.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/tokens/colors.dart';
import 'package:gooddeeds/shared/design_system/typography/gd_text.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';

class RequestItemsScreen extends StatelessWidget {
  const RequestItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(title: context.loc.requestItems),
      body: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: GDText(
                      context.loc.requestItemsHeader,
                      style: context.textStyle.heading5.copyWith(height: 1.5),
                    ),
                  ),
                ),
                SliverList.separated(
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: switch (index) {
                      0 => RequestItemCard(
                          title: 'Food',
                          color: BrandTones.info,
                          iconPath: Assets.icons.fillCart.path,
                        ),
                      1 => RequestItemCard(
                          title: 'Emergency Supplies',
                          color: BrandTones.warning,
                          iconPath: Assets.icons.emergency.path,
                        ),
                      2 => RequestItemCard(
                          title: 'Medical Supplies',
                          color: BrandTones.error,
                          iconPath: Assets.icons.medical.path,
                        ),
                      3 => RequestItemCard(
                          title: 'School Supplies',
                          color: BrandTones.success,
                          iconPath: Assets.icons.book.path,
                        ),
                      int() => RequestItemCard(
                          title: 'Food',
                          color: BrandTones.info,
                          iconPath: Assets.icons.fillCart.path,
                        ),
                    },
                  ),
                  itemCount: 4,
                  separatorBuilder: (context, index) => const Gap(12),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: PrimaryButton(
              fullWidth: true,
              label: context.loc.save,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
