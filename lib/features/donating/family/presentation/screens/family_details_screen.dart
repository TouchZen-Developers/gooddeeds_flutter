import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:gooddeeds/features/donating/family/presentation/widgets/family_details_report_modal.dart';
import 'package:gooddeeds/features/donating/items/presentation/widgets/donating_item_selection.dart';
import 'package:gooddeeds/features/donating/items/presentation/widgets/received_item.dart';
import 'package:gooddeeds/gen/assets.gen.dart';
import 'package:gooddeeds/shared/design_system/components/app_app_bar.dart';
import 'package:gooddeeds/shared/design_system/components/primary_button.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/tokens/colors.dart';
import 'package:gooddeeds/shared/design_system/typography/gd_text.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';
import 'package:gooddeeds/shared/utils/toast_message.dart';

class FamilyDetailsScreen extends StatelessWidget {
  const FamilyDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: context.loc.familyDetails,
        actions: [
          GestureDetector(
            onTap: () {
              showCupertinoModalPopup(
                context: context,
                builder: (context) {
                  return const FamilyDetailsReportModal();
                },
              );
            },
            child: Container(
              width: 44,
              height: 44,
              padding: const EdgeInsets.all(14),
              child: Assets.icons.report.svg(),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Gap(24),
                    SizedBox(
                      height: 190,
                      width: double.infinity,
                      child: ClipRRect(
                        borderRadius: const BorderRadiusGeometry.all(
                          Radius.circular(12),
                        ),
                        child: Assets.images.mock3.image(fit: BoxFit.cover),
                      ),
                    ),
                    const Gap(20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Johnson Family',
                                style: context.textStyle.bodyXLargeSemiBold,
                              ),
                              const Gap(4),
                              Row(
                                children: [
                                  Assets.icons.marker
                                      .svg(width: 16, height: 16),
                                  const Gap(4),
                                  Text(
                                    'New York, USA',
                                    style: context.textStyle.bodyMediumRegular
                                        .copyWith(
                                      color: BrandTones.info,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Text(
                          '6 ${context.loc.peoples}',
                          style: context.textStyle.bodyMediumRegular.copyWith(
                            color: context.onSurface.shade50,
                          ),
                        ),
                      ],
                    ),
                    const Gap(20),
                    Text(
                      context.loc.desiredItems,
                      style: context.textStyle.bodyLargeSemiBold,
                    ),
                    const Gap(16),
                    _DesiredItemsCard(
                      title: 'Food',
                      color: const Color(0xff2F80ED),
                      iconPath: Assets.icons.fillCart.path,
                    ),
                    const Gap(12),
                    _DesiredItemsCard(
                      title: 'School Supplies',
                      color: const Color(0xff27AE60),
                      iconPath: Assets.icons.book.path,
                    ),
                    const Gap(20),
                    Text(
                      context.loc.familyStory,
                      style: context.textStyle.bodyLargeSemiBold,
                    ),
                    const Gap(12),
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                      style: context.textStyle.bodyMediumRegular.copyWith(
                        color: context.onSurface.shade80,
                      ),
                    ),
                    const Gap(20),
                    Text(
                      context.loc.receivedItems,
                      style: context.textStyle.bodyLargeSemiBold,
                    ),
                    const Gap(12),
                    Container(
                      padding: const EdgeInsets.only(
                        right: 16,
                        left: 16,
                        bottom: 16,
                      ),
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16)),
                        border: Border.all(color: context.colors.outline),
                      ),
                      child: Column(
                        children: [
                          const ReceivedItem(),
                          const ReceivedItem(),
                          const ReceivedItem(),
                          const Gap(16),
                          const Divider(height: 1),
                          const Gap(16),
                          Row(
                            children: [
                              Text(
                                '${context.loc.donatedBy} :',
                                style: context.textStyle.bodyMediumRegular
                                    .copyWith(
                                  color: context.onSurface.shade80,
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  'Guy Hawkins',
                                  style: context.textStyle.bodyMediumMedium
                                      .copyWith(
                                    color: context.onSurface.shade100,
                                  ),
                                  textAlign: TextAlign.end,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Gap(12),
                    Container(
                      padding: const EdgeInsets.only(
                        right: 16,
                        left: 16,
                        bottom: 16,
                      ),
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16)),
                        border: Border.all(color: context.colors.outline),
                      ),
                      child: Column(
                        children: [
                          const ReceivedItem(),
                          const Gap(16),
                          const Divider(height: 1),
                          const Gap(16),
                          Row(
                            children: [
                              Text(
                                '${context.loc.donatedBy} :',
                                style: context.textStyle.bodyMediumRegular
                                    .copyWith(
                                  color: context.onSurface.shade80,
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  'Guy Hawkins',
                                  style: context.textStyle.bodyMediumMedium
                                      .copyWith(
                                    color: context.onSurface.shade100,
                                  ),
                                  textAlign: TextAlign.end,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: context.colors.onPrimary,
              boxShadow: [
                BoxShadow(
                  color: context.onSurface.shade100!.withValues(alpha: .1),
                  spreadRadius: 4,
                  blurRadius: 10,
                ),
              ],
            ),
            padding: EdgeInsets.only(
              right: 20,
              left: 20,
              top: 16,
              bottom: MediaQuery.of(context).padding.bottom,
            ),
            child: Row(
              children: [
                Expanded(
                  child: PrimaryButton(
                    label: '${context.loc.checkout}  ( 1 )',
                    onPressed: () {},
                  ),
                ),
                const Gap(16),
                SizedBox(
                  width: 54,
                  height: 54,
                  child: Stack(
                    children: [
                      Center(
                        child: Container(
                          width: 48,
                          height: 48,
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: context.colors.primary),
                          ),
                          child: Assets.icons.cart.svg(
                            colorFilter: ColorFilter.mode(
                              context.colors.primary,
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        top: 0,
                        child: Container(
                          width: 20,
                          height: 20,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: context.colors.primary,
                            shape: BoxShape.circle,
                          ),
                          child: GDText(
                            '3',
                            style: context.textStyle.bodyXSmallMedium,
                            color: context.colors.onPrimary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _DesiredItemsCard extends StatelessWidget {
  const _DesiredItemsCard({
    required this.title,
    required this.color,
    required this.iconPath,
  });
  final String title;
  final Color color;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: context.gaps.md,
        vertical: context.gaps.sm,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(context.radii.md)),
        border: Border.all(color: context.colors.outline),
      ),
      child: ExpansionTile(
        tilePadding: EdgeInsets.zero,
        childrenPadding: EdgeInsets.zero,
        iconColor: context.onSurface.shade100,
        minTileHeight: 50,
        visualDensity: VisualDensity.compact,
        title: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: color.withValues(alpha: 0.1),
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset(iconPath),
            ),
            const Gap(16),
            Text(
              title,
              style: context.textStyle.bodyLargeSemiBold,
            ),
          ],
        ),
        shape: Border.all(color: Colors.transparent),
        dense: true,
        backgroundColor: Colors.transparent,
        collapsedBackgroundColor: Colors.transparent,
        initiallyExpanded: true,
        children: [
          Gap(context.gaps.xs),
          Divider(
            height: 1,
            color: context.onSurface.shade20,
          ),
          const DonatingItemSelection(selected: true),
          const DonatingItemSelection(selected: false),
          const DonatingItemSelection(selected: false),
          Gap(context.gaps.md),
          PrimaryButton(
            label: context.loc.addToCard,
            textStyle: context.textStyle.bodySmallMedium.copyWith(
              color: context.colors.primary,
            ),
            fullWidth: true,
            size: ButtonSize.small,
            variant: ButtonVariant.outlined,
            onPressed: () {
              ToastMessage.showMessage(
                context,
                context.loc.addedToCart,
                iconData: Icons.check_circle_rounded,
              );
            },
          ),
        ],
      ),
    );
  }
}
