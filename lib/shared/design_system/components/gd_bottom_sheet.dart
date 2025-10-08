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
    String? title,
    required List<T> items,
    required String Function(T) labelOf,
    T? selected,
    Color Function(T item)? iconColorOf,
    Color Function(T item)? textColorOf,
    Widget Function(T item, Color iconColor)? leadingSvgBuilder,
  }) {
    return show<T>(
      context,
      builder: (ctx) {
        final gaps = ctx.gaps;
        final text = ctx.textStyle;
        final hasTitle = title?.trim().isNotEmpty ?? false;
        final data = List<T>.of(items);

        return Padding(
          padding: EdgeInsets.fromLTRB(gaps.xl, gaps.md, gaps.xl, gaps.xl),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // drag handle
              Container(
                width: 44,
                height: 5,
                decoration: BoxDecoration(
                  color: BrandTones.grey10,
                  borderRadius: BorderRadius.circular(3),
                ),
              ),

              if (hasTitle) ...[
                SizedBox(height: gaps.xl),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(title!, style: text.heading3),
                ),
                SizedBox(height: gaps.lg),
              ] else
                SizedBox(height: gaps.lg),

              Flexible(
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: data.length,
                  separatorBuilder: (_, __) => SizedBox(height: gaps.md),
                  itemBuilder: (_, i) {
                    final item = data[i];
                    final isSelected = selected != null && item == selected;

                    final hasLeading = leadingSvgBuilder != null;
                    final Color iconColor =
                        iconColorOf?.call(item) ?? BrandTones.primary;
                    final Widget? leadingSvg =
                        hasLeading ? leadingSvgBuilder(item, iconColor) : null;

                    final Color titleColor =
                        textColorOf?.call(item) ?? BrandTones.grey100;

                    return InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () => Navigator.of(ctx).pop<T>(item),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 16,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: BrandTones.grey20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.02),
                              blurRadius: 8,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            if (hasLeading)
                              _CircleSvg(color: iconColor, child: leadingSvg!),
                            if (hasLeading) const SizedBox(width: 12),
                            Expanded(
                              child: Text(
                                labelOf(item),
                                style: ctx.textStyle.bodyLargeMedium.copyWith(
                                  color: titleColor,
                                ),
                              ),
                            ),
                            if (isSelected)
                              const Icon(
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
        );
      },
    );
  }
}

class _CircleSvg extends StatelessWidget {
  const _CircleSvg({required this.child, required this.color});

  final Widget child;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44,
      height: 44,
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.10),
        borderRadius: BorderRadius.circular(22),
      ),
      alignment: Alignment.center,
      child: child,
    );
  }
}
