import 'package:flutter/material.dart';
import 'package:gooddeeds/gen/assets.gen.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';

class EventCard extends StatelessWidget {
  const EventCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            height: 130,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              child: Assets.images.mock2.image(fit: BoxFit.cover),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
              right: 16,
              left: 16,
              top: 8,
              bottom: 16,
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
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
              style: context.textStyle.bodyMediumMedium,
            ),
          ),
        ],
      ),
    );
  }
}
