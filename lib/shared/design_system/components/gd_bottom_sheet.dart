import 'package:flutter/material.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/tokens/colors.dart';

class GDBottomSheet {
  static Future<T?> show<T>(
    BuildContext context, {
    required Widget Function(BuildContext) builder,
    bool isScrollControlled = true,
    bool useRootNavigator = true,
    Color? backgroundColor,
  }) {
    return showModalBottomSheet<T>(
      context: context,
      useRootNavigator: useRootNavigator,
      isScrollControlled: isScrollControlled,
      backgroundColor:
          backgroundColor ?? Theme.of(context).scaffoldBackgroundColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (ctx) => SafeArea(
        top: false,
        child: Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(ctx).viewInsets.bottom),
          child: builder(ctx),
        ),
      ),
    );
  }

  static Future<T?> showList<T>(
    BuildContext context, {
    required String title,
    required List<T> items,
    required String Function(T) labelOf,
    T? selected,
  }) {
    return show<T>(
      context,
      builder: (ctx) {
        final gaps = ctx.gaps;
        final text = ctx.textStyle;
        List<T> filtered = List.of(items);
        return StatefulBuilder(
          builder: (ctx, setState) => Padding(
            padding: EdgeInsets.fromLTRB(gaps.xl, gaps.md, gaps.xl, gaps.xl),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // drag handle
                Container(
                  width: 32,
                  height: 4,
                  decoration: BoxDecoration(
                    color: BrandTones.grey5,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                SizedBox(height: gaps.xl),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(title, style: text.heading3),
                ),
                SizedBox(height: gaps.lg),
                Flexible(
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: filtered.length,
                    separatorBuilder: (_, __) => SizedBox(height: gaps.sm),
                    itemBuilder: (_, i) {
                      final item = filtered[i];
                      final isSelected = selected != null && item == selected;
                      return InkWell(
                        borderRadius: BorderRadius.circular(12),
                        onTap: () => Navigator.of(ctx).pop<T>(item),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 14,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(14),
                            border: Border.all(
                              color: isSelected
                                  ? BrandTones.primary
                                  : BrandTones.grey20,
                            ),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  labelOf(item),
                                  style: ctx.textStyle.bodyLargeMedium,
                                ),
                              ),
                              if (isSelected)
                                Icon(
                                  Icons.check_rounded,
                                  color: BrandTones.primary,
                                ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
