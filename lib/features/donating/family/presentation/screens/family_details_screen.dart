import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gooddeeds/features/donating/items/presentation/widgets/donating_item_selection.dart';
import 'package:gooddeeds/features/donating/items/presentation/widgets/received_item.dart';
import 'package:gooddeeds/gen/assets.gen.dart';
import 'package:gooddeeds/shared/design_system/components/app_app_bar.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/tokens/colors.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';

class FamilyDetailsScreen extends StatelessWidget {
  const FamilyDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: context.loc.familyDetails,
        actions: [
          Container(
            width: 44,
            height: 44,
            padding: const EdgeInsets.all(14),
            child: Assets.icons.report.svg(),
          ),
        ],
      ),
      body: SingleChildScrollView(
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
                    borderRadius: BorderRadiusGeometry.all(
                      Radius.circular(12),
                    ),
                    child: Assets.images.mock3.image(fit: BoxFit.cover)),
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
                            Assets.icons.marker.svg(width: 16, height: 16),
                            const Gap(4),
                            Text(
                              'New York, USA',
                              style:
                                  context.textStyle.bodyMediumRegular.copyWith(
                                color: BrandTones.info,
                              ),
                            )
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
                  )
                ],
              ),
              const Gap(20),
              Text(
                context.loc.desiredItems,
                style: context.textStyle.bodyLargeSemiBold,
              ),
              const Gap(16),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
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
                          color: Color(0xff2F80ED).withValues(alpha: 0.1),
                          shape: BoxShape.circle,
                        ),
                        child: Assets.icons.fillCart.svg(),
                      ),
                      const Gap(16),
                      Text(
                        'Food',
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
                    Divider(
                      height: 1,
                    ),
                    DonatingItemSelection(),
                    DonatingItemSelection(),
                    DonatingItemSelection(),
                  ],
                ),
              ),
              const Gap(12),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
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
                          color: Color(0xff27AE60).withValues(alpha: 0.1),
                          shape: BoxShape.circle,
                        ),
                        child: Assets.icons.book.svg(),
                      ),
                      const Gap(16),
                      Text(
                        'School Supplies',
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
                    Divider(
                      height: 1,
                    ),
                    DonatingItemSelection(),
                    DonatingItemSelection(),
                    DonatingItemSelection(),
                  ],
                ),
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
                padding: const EdgeInsets.only(right: 16, left: 16, bottom: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  border: Border.all(color: context.colors.outline),
                ),
                child: Column(
                  children: [
                    ReceivedItem(),
                    ReceivedItem(),
                    ReceivedItem(),
                    const Gap(16),
                    Divider(height: 1),
                    const Gap(16),
                    Row(
                      children: [
                        Text(
                          '${context.loc.donatedBy} :',
                          style: context.textStyle.bodyMediumRegular.copyWith(
                            color: context.onSurface.shade80,
                          ),
                        ),
                        Expanded(
                            child: Text(
                          'Guy Hawkins',
                          style: context.textStyle.bodyMediumMedium.copyWith(
                            color: context.onSurface.shade100,
                          ),
                          textAlign: TextAlign.end,
                        ))
                      ],
                    )
                  ],
                ),
              ),
              const Gap(12),
              Container(
                padding: const EdgeInsets.only(right: 16, left: 16, bottom: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  border: Border.all(color: context.colors.outline),
                ),
                child: Column(
                  children: [
                    ReceivedItem(),
                    const Gap(16),
                    Divider(height: 1),
                    const Gap(16),
                    Row(
                      children: [
                        Text(
                          '${context.loc.donatedBy} :',
                          style: context.textStyle.bodyMediumRegular.copyWith(
                            color: context.onSurface.shade80,
                          ),
                        ),
                        Expanded(
                            child: Text(
                          'Guy Hawkins',
                          style: context.textStyle.bodyMediumMedium.copyWith(
                            color: context.onSurface.shade100,
                          ),
                          textAlign: TextAlign.end,
                        ))
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
