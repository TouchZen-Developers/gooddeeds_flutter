import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gooddeeds/features/donating/orders/presentation/widgets/status_widget.dart';
import 'package:gooddeeds/gen/assets.gen.dart';
import 'package:gooddeeds/shared/design_system/components/app_app_bar.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/tokens/colors.dart';
import 'package:gooddeeds/shared/design_system/typography/gd_text.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';

class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(title: context.loc.orderDetails),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                right: 20,
                left: 20,
                top: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 90,
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8)),
                          child: AspectRatio(
                            aspectRatio: 1,
                            child: Assets.images.mock3.image(),
                          ),
                        ),
                        const Gap(16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Smith Family',
                                style: context.textStyle.bodyLargeSemiBold,
                              ),
                              const Gap(8),
                              GDText(
                                '6 ${context.loc.peoples}',
                                style: context.textStyle.bodyMediumRegular,
                                color: context.onSurface.shade50,
                              ),
                              const Gap(8),
                              Row(
                                children: [
                                  Assets.icons.marker.svg(),
                                  const Gap(4),
                                  Text(
                                    'New York, USA',
                                    style: context.textStyle.bodySmallRegular
                                        .copyWith(
                                      color: BrandTones.info,
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
                  const Gap(24),
                  Divider(height: 1, color: context.colors.outline),
                  const Gap(24),
                  GDText(
                    context.loc.suppliesNeeded,
                    style: context.textStyle.bodyLargeSemiBold,
                  ),
                  const Gap(12),
                  GDText(
                    'School Supplies & Groceries',
                    style: context.textStyle.bodyMediumRegular,
                  ),
                  const Gap(24),
                  Divider(height: 1, color: context.colors.outline),
                  const Gap(24),
                  GDText(
                    context.loc.donatedItems,
                    style: context.textStyle.bodyLargeSemiBold,
                  ),
                ],
              ),
            ),
          ),
          const SliverGap(12),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            sliver: SliverList.separated(
              itemBuilder: (context, index) => const _Item(),
              separatorBuilder: (BuildContext context, int index) =>
                  const Gap(16),
              itemCount: 3,
            ),
          ),
          const SliverGap(24),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(
                    height: 1,
                    color: context.colors.outline,
                  ),
                  const Gap(24),
                  GDText(
                    context.loc.noteSentFor('Sam Family'),
                    style: context.textStyle.bodyLargeSemiBold,
                  ),
                  const Gap(12),
                  const _Note(
                    text: 'Enjoy, hopefully it is useful for your family',
                  ),
                  const Gap(24),
                  GDText(
                    context.loc.noteReceived,
                    style: context.textStyle.bodyLargeSemiBold,
                  ),
                  const Gap(12),
                  const _Note(text: 'Thank you for the gift!'),
                  const Gap(24),
                  Divider(
                    height: 1,
                    color: context.colors.outline,
                  ),
                  const Gap(24),
                  GDText(
                    context.loc.transaction,
                    style: context.textStyle.bodyLargeSemiBold,
                  ),
                  const Gap(12),
                  Row(
                    children: [
                      Expanded(
                        child: GDText(
                          context.loc.orderID,
                          style: context.textStyle.bodyMediumRegular,
                        ),
                      ),
                      GDText(
                        '#26384',
                        style: context.textStyle.bodyLargeSemiBold,
                      ),
                    ],
                  ),
                  const Gap(12),
                  Row(
                    children: [
                      Expanded(
                        child: GDText(
                          context.loc.paymentMethod,
                          style: context.textStyle.bodyMediumRegular,
                        ),
                      ),
                      GDText(
                        'Credit Card',
                        style: context.textStyle.bodyLargeSemiBold,
                      ),
                    ],
                  ),
                  const Gap(12),
                  Row(
                    children: [
                      Expanded(
                        child: GDText(
                          context.loc.totalPayment,
                          style: context.textStyle.bodyMediumRegular,
                        ),
                      ),
                      GDText(
                        '\$320.00',
                        style: context.textStyle.bodyLargeSemiBold,
                      ),
                    ],
                  ),
                  const Gap(24),
                  Divider(
                    height: 1,
                    color: context.colors.outline,
                  ),
                  const Gap(24),
                  Row(
                    children: [
                      Expanded(
                        child: GDText(
                          context.loc.status,
                          style: context.textStyle.bodyMediumRegular,
                        ),
                      ),
                      const StatusWidget(),
                    ],
                  ),
                  Gap(MediaQuery.of(context).padding.bottom),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Item extends StatelessWidget {
  const _Item();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'x1',
          style: context.textStyle.bodySmallRegular.copyWith(
            color: context.onSurface.shade50,
          ),
        ),
        const Gap(8),
        SizedBox(
          width: 40,
          height: 40,
          child: CircleAvatar(
            backgroundImage: Assets.images.mock4.image(fit: BoxFit.cover).image,
          ),
        ),
        const Gap(8),
        Expanded(
          child: Text(
            '6 Pack Canned Tuna - Packed Fresh. Sustainable Caught.',
            style: context.textStyle.bodySmallRegular.copyWith(
              height: 1.4,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const Gap(16),
        Text(
          '\$100.00',
          style: context.textStyle.bodySmallMedium.copyWith(
            color: context.colors.secondary,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}

class _Note extends StatelessWidget {
  const _Note({required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 16,
      ),
      decoration: BoxDecoration(
        color: context.onSurface.shade10,
        border: Border.all(color: context.onSurface.shade20!),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: GDText(text, style: context.textStyle.bodyMediumRegular),
    );
  }
}
