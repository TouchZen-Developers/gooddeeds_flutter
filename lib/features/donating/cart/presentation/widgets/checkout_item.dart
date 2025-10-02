import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gooddeeds/gen/assets.gen.dart';
import 'package:gooddeeds/shared/design_system/components/app_text_field.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';

class CheckoutItem extends StatelessWidget {
  const CheckoutItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: context.colors.outline),
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadiusGeometry.all(Radius.circular(8)),
                child: SizedBox(
                  width: 60,
                  height: 60,
                  child: Assets.images.mock3.image(fit: BoxFit.cover),
                ),
              ),
              const Gap(16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sam Family',
                      style: context.textStyle.bodyMediumMedium,
                    ),
                    Text(
                      '\$200.00',
                      style: context.textStyle.bodyLargeSemiBold,
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Assets.icons.delete.svg(),
              ),
            ],
          ),
          _CartItem(),
          _CartItem(),
          _CartItem(),
          const Gap(20),
          AppTextField(
            hint: context.loc.sendMessageForTheFamily,
          ),
        ],
      ),
    );
  }
}

class _CartItem extends StatelessWidget {
  const _CartItem();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
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
              backgroundImage:
                  Assets.images.mock4.image(fit: BoxFit.cover).image,
            ),
          ),
          const Gap(8),
          Expanded(
            child: Text(
              '6 Pack Canned Tuna - Packed Fresh. Sustainable Caught.',
              style: context.textStyle.bodySmallRegular,
              maxLines: 1,
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
      ),
    );
  }
}
