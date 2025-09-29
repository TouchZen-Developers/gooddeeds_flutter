import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gooddeeds/gen/assets.gen.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/tokens/colors.dart';

class ReceivedItem extends StatelessWidget {
  const ReceivedItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Text(
            'x1',
            style: context.textStyle.bodySmallRegular.copyWith(
              color: BrandTones.grey50,
            ),
          ),
          const Gap(8),
          SizedBox(
            width: 40,
            height: 40,
            child: CircleAvatar(
              backgroundImage:
                  Assets.images.mock4.image(fit: BoxFit.cover).image,
            ),
          ),
          const Gap(8),
          Expanded(
            child: Text(
              '6 Pack Canned Tuna - Packed Fresh. Sustainable Caught.',
              style: context.textStyle.bodyXSmallRegular,
            ),
          ),
        ],
      ),
    );
  }
}
