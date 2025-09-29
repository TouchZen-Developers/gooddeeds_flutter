import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gooddeeds/shared/design_system/components/app_modal.dart';
import 'package:gooddeeds/shared/design_system/components/primary_button.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/tokens/colors.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';

class FilterModal extends StatelessWidget {
  const FilterModal({super.key, required this.onApply});
  final VoidCallback onApply;

  @override
  Widget build(BuildContext context) {
    return AppModal(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  context.loc.filters,
                  style: context.textStyle.heading4,
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  visualDensity: VisualDensity(
                    vertical: VisualDensity.minimumDensity,
                    horizontal: VisualDensity.minimumDensity,
                  ),
                  padding: EdgeInsets.zero,
                  textStyle: context.textStyle.bodyLargeMedium,
                ),
                onPressed: () {},
                child: Text(context.loc.clearAll),
              ),
            ],
          ),
          const Gap(24),
          Text(
            'Impacted areas',
            style: context.textStyle.bodyMediumMedium,
          ),
          const Gap(10),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              _FilterItem(
                text: 'Wildfires',
                selected: false,
                onSelected: (value) {},
              ),
              _FilterItem(
                text: 'Floods',
                selected: true,
                onSelected: (value) {},
              ),
              _FilterItem(
                text: 'Earthquake',
                selected: false,
                onSelected: (value) {},
              ),
              _FilterItem(
                text: 'California Wildfire',
                selected: false,
                onSelected: (value) {},
              ),
            ],
          ),
          const Gap(24),
          Text(
            'Categories',
            style: context.textStyle.bodyMediumMedium,
          ),
          const Gap(10),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              _FilterItem(
                text: 'All',
                selected: false,
                onSelected: (value) {},
              ),
              _FilterItem(
                text: 'Food',
                selected: true,
                onSelected: (value) {},
              ),
              _FilterItem(
                text: 'Emergency Supplies',
                selected: false,
                onSelected: (value) {},
              ),
              _FilterItem(
                text: 'School Supplie',
                selected: false,
                onSelected: (value) {},
              ),
              _FilterItem(
                text: 'Medical Supplies',
                selected: false,
                onSelected: (value) {},
              ),
            ],
          ),
          const Gap(40),
          PrimaryButton(
            fullWidth: true,
            label: context.loc.apply,
            onPressed: onApply,
          ),
          const Gap(24),
        ],
      ),
    );
  }
}

class _FilterItem extends StatelessWidget {
  const _FilterItem({
    required this.text,
    required this.selected,
    required this.onSelected,
  });
  final String text;
  final bool selected;
  final ValueChanged<bool> onSelected;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      label: Text(text),
      selected: selected,
      showCheckmark: false,
      selectedColor: context.colors.primary,
      color: WidgetStateColor.resolveWith(
        (states) {
          if (states.contains(WidgetState.selected)) {
            return context.colors.primary;
          }
          return Colors.white;
        },
      ),
      shadowColor: Colors.transparent,
      selectedShadowColor: Colors.transparent,
      labelStyle: context.textStyle.bodyMediumMedium.copyWith(
        color: selected ? Colors.white : BrandTones.grey50,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.all(
          Radius.circular(100),
        ),
        side: selected
            ? BorderSide.none
            : BorderSide(
                color: BrandTones.grey30,
              ),
      ),
      onSelected: onSelected,
    );
  }
}
