import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gooddeeds/gen/assets.gen.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 40,
          height: 40,
          child: CircleAvatar(
            backgroundImage: Assets.images.mock4.image(fit: BoxFit.cover).image,
          ),
        ),
        const Gap(12),
        Expanded(
          child: Text(
            '6 Pack Canned Tuna - Packed Fresh. Sustainable Caught.',
            style: context.textStyle.bodySmallRegular.copyWith(height: 1.4),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const Gap(16),
        Text(
          'x1',
          style: context.textStyle.bodySmallRegular.copyWith(
            color: context.onSurface.shade50,
          ),
        ),
      ],
    );
  }
}

class EditItemWidget extends StatelessWidget {
  const EditItemWidget({super.key});

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
        const Gap(12),
        Expanded(
          child: Text(
            '6 Pack Canned Tuna - Packed Fresh. Sustainable Caught.',
            style: context.textStyle.bodySmallRegular.copyWith(height: 1.4),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const Gap(16),
        IconButton(
          visualDensity: const VisualDensity(
            horizontal: VisualDensity.minimumDensity,
            vertical: VisualDensity.minimumDensity,
          ),
          onPressed: () {},
          icon: const Icon(Icons.close),
        ),
      ],
    );
  }
}
