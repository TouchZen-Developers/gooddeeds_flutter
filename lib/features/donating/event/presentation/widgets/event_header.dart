import 'package:flutter/material.dart';
import 'package:gooddeeds/gen/assets.gen.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';

class EventHeader extends StatelessWidget {
  const EventHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: double.infinity,
          height: 350,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(context.radii.md),
              topRight: Radius.circular(context.radii.md),
            ),
            child: Assets.images.mock2.image(fit: BoxFit.cover),
          ),
        ),
        Container(
          padding: EdgeInsets.all(context.gaps.md),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(context.radii.md),
              bottomRight: Radius.circular(context.radii.md),
            ),
            border: Border(
              bottom: BorderSide(color: context.colors.outline),
              right: BorderSide(color: context.colors.outline),
              left: BorderSide(color: context.colors.outline),
            ),
          ),
          child: Text(
            'Impacted by Hawaii Wildfires',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: context.textStyles.bodyMedium?.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
        )
      ],
    );
  }
}
