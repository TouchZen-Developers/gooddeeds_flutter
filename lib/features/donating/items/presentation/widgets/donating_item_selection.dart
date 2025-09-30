import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gooddeeds/gen/assets.gen.dart';
import 'package:gooddeeds/shared/design_system/components/app_checkbox.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';

class DonatingItemSelection extends StatelessWidget {
  const DonatingItemSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        children: [
          AppCheckbox(
            value: true,
            onChanged: (value) {},
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
          const Gap(16),
          Text(
            'x1',
            style: context.textStyle.bodySmallRegular.copyWith(
              color: context.onSurface.shade50,
            ),
          ),
          const Gap(16),
          Text(
            '\$45.99',
            style: context.textStyle.bodySmallMedium.copyWith(
              color: context.colors.secondary,
            ),
          ),
        ],
      ),
    );
  }
}
