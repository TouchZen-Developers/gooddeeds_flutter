import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:gooddeeds/features/donating/family/presentation/widgets/family_card.dart';
import 'package:gooddeeds/features/donating/home/presentation/widgets/filter_modal.dart';
import 'package:gooddeeds/gen/assets.gen.dart';
import 'package:gooddeeds/shared/design_system/components/app_app_bar.dart';
import 'package:gooddeeds/shared/design_system/components/primary_button.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';

class FamilyListScreen extends StatelessWidget {
  const FamilyListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: context.loc.filters,
        actions: [
          GestureDetector(
            onTap: () {
              showCupertinoModalPopup(
                context: context,
                barrierColor: Colors.black45,
                builder: (context) {
                  return FilterModal(
                    onApply: () {
                      context.pop();
                    },
                  );
                },
              );
            },
            child: Stack(
              children: [
                Container(
                  width: 44,
                  height: 44,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: context.colors.outline),
                  ),
                  child: Assets.icons.filter.svg(),
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    width: 14,
                    height: 14,
                    decoration: BoxDecoration(
                      color: context.colors.primary,
                      shape: BoxShape.circle,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 80,
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              children: [
                _FilterItem(text: 'Wildfires', onDelete: () {}),
                const Gap(12),
                _FilterItem(text: 'School Supplies', onDelete: () {}),
              ],
            ),
          ),
          const Divider(height: 1),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.symmetric(vertical: 24),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: FamilyCard(),
                );
              },
              itemCount: 20,
              separatorBuilder: (BuildContext context, int index) {
                return const Gap(16);
              },
            ),
          )
        ],
      ),
    );
  }
}

class _FilterItem extends StatelessWidget {
  const _FilterItem({
    required this.text,
    required this.onDelete,
  });
  final String text;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    return Chip(
      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 8),
      visualDensity: VisualDensity.compact,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      label: Text(text),
      color: WidgetStatePropertyAll(Colors.white),
      shadowColor: Colors.transparent,
      labelStyle: context.textStyle.bodyMediumRegular.copyWith(
        color: context.colors.primary,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.all(
          Radius.circular(100),
        ),
        side: BorderSide(
          color: context.colors.primary,
        ),
      ),
      deleteIcon: Icon(Icons.close, color: context.colors.primary),
      onDeleted: onDelete,
    );
  }
}

// ignore: unused_element
class _EmptyFamilyList extends StatelessWidget {
  const _EmptyFamilyList();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Assets.images.infoTwo.svg(height: 140),
            const Gap(24),
            Text(context.loc.noFamilyFound, style: context.textStyle.heading4),
            const Gap(6),
            Text(
              context.loc.noFamilyFoundDesc,
              textAlign: TextAlign.center,
              style: context.textStyle.bodyLargeRegular.copyWith(
                color: context.onSurface.shade50,
              ),
            ),
            const Gap(24),
            PrimaryButton(
              label: context.loc.updateFilters,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
