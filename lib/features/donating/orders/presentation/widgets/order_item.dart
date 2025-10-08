import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gooddeeds/features/donating/orders/presentation/widgets/status_widget.dart';
import 'package:gooddeeds/gen/assets.gen.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/tokens/colors.dart';
import 'package:gooddeeds/shared/design_system/typography/gd_text.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: context.colors.outline),
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 90,
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
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
                      Row(
                        children: [
                          Container(
                            width: 24,
                            height: 24,
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: const Color(0xff27ae60)
                                  .withValues(alpha: 0.1),
                              shape: BoxShape.circle,
                            ),
                            child: Assets.icons.book.svg(),
                          ),
                          const Gap(8),
                          Container(
                            width: 24,
                            height: 24,
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: const Color(0xff2F80ED)
                                  .withValues(alpha: 0.1),
                              shape: BoxShape.circle,
                            ),
                            child: Assets.icons.fillCart.svg(),
                          ),
                        ],
                      ),
                      const Gap(8),
                      Row(
                        children: [
                          Assets.icons.marker.svg(),
                          const Gap(4),
                          Text(
                            'New York, USA',
                            style: context.textStyle.bodySmallRegular.copyWith(
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
          const Gap(16),
          Divider(
            height: 1,
            color: context.colors.outline,
          ),
          const Gap(16),
          Row(
            children: [
              Expanded(
                child: GDText(
                  '\$100.00',
                  style: context.textStyle.bodyLargeSemiBold,
                ),
              ),
              const StatusWidget(),
            ],
          ),
        ],
      ),
    );
  }
}
