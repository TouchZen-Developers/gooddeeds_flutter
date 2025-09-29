import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gooddeeds/gen/assets.gen.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/tokens/colors.dart';

class FamilyCard extends StatelessWidget {
  const FamilyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      height: 122,
      decoration: BoxDecoration(
        border: BoxBorder.all(color: context.colors.outline),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(8)),
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
                      color: Color(0xff27ae60).withValues(alpha: 0.1),
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
                      color: Color(0xff2F80ED).withValues(alpha: 0.1),
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
                  )
                ],
              ),
            ],
          ))
        ],
      ),
    );
  }
}
