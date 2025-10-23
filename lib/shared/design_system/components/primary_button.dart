import 'package:flutter/material.dart';
import 'package:gooddeeds/shared/design_system/theme/typography_ext.dart';

import '../theme/context_ext.dart';

enum ButtonVariant { filled, outlined, ghost }

enum ButtonSize { small, medium, large }

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.variant = ButtonVariant.filled,
    this.size = ButtonSize.medium,
    this.leadingIcon,
    this.trailingIcon,
    this.leading,
    this.trailing,
    this.loading = false,
    this.fullWidth = false,
    this.minWidth,
    this.color,
    this.background, // manual background
    this.textStyle,
  });

  final String label;
  final VoidCallback? onPressed;
  final ButtonVariant variant;
  final ButtonSize size;

  final IconData? leadingIcon;
  final IconData? trailingIcon;
  final Widget? leading;
  final Widget? trailing;

  final bool loading;
  final bool fullWidth;
  final double? minWidth;
  final Color? color;

  final Color? background;

  final TextStyle? textStyle;

  ({EdgeInsets padding, double minHeight, double radius, TextStyle text})
      _metrics(BuildContext context) {
    final t = context.typo;
    final textStyle = t.buttonNormal.copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      height: 1.0,
      letterSpacing: 0.0,
    );

    switch (size) {
      case ButtonSize.small:
        return (
          padding: const EdgeInsets.symmetric(horizontal: 16),
          minHeight: 40,
          radius: 20,
          text: textStyle.copyWith(fontSize: 14),
        );
      case ButtonSize.medium:
        return (
          padding: const EdgeInsets.symmetric(horizontal: 20),
          minHeight: 48,
          radius: 24,
          text: textStyle,
        );
      case ButtonSize.large:
        return (
          padding: const EdgeInsets.symmetric(horizontal: 24),
          minHeight: 56,
          radius: 28,
          text: textStyle,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    final cs = context.colors;
    final m = _metrics(context);

    final base = color ?? cs.primary;

    Color bg;
    Color fg;
    BoxBorder? border;

    switch (variant) {
      case ButtonVariant.filled:
        bg = background ?? base;
        fg = cs.onPrimary;
        break;
      case ButtonVariant.outlined:
        bg = background ?? Colors.transparent;
        fg = base;
        border = Border.all(color: base);
        break;
      case ButtonVariant.ghost:
        bg = background ?? Colors.transparent;
        fg = base;
        break;
    }

    final bool disabled = onPressed == null || loading;

    final Widget content = Row(
      mainAxisSize: fullWidth ? MainAxisSize.max : MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (leading != null) ...[
          IconTheme.merge(
            data: IconThemeData(color: fg, size: 18),
            child: leading!,
          ),
          SizedBox(width: context.gaps.xs),
        ] else if (leadingIcon != null) ...[
          Icon(leadingIcon, size: 18, color: fg),
          SizedBox(width: context.gaps.xs),
        ],
        Flexible(
          child: Text(
            label,
            maxLines: 1,
            softWrap: false,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: textStyle ?? m.text.copyWith(color: fg),
          ),
        ),
        if (trailing != null) ...[
          SizedBox(width: context.gaps.xs),
          IconTheme.merge(
            data: IconThemeData(color: fg, size: 18),
            child: trailing!,
          ),
        ] else if (trailingIcon != null) ...[
          SizedBox(width: context.gaps.xs),
          Icon(trailingIcon, size: 18, color: fg),
        ],
      ],
    );

    return Semantics(
      button: true,
      enabled: !disabled,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 160),
        width: fullWidth ? double.infinity : null,
        constraints: BoxConstraints(
          minHeight: m.minHeight,
          maxHeight: m.minHeight,
          minWidth: fullWidth ? 0 : (minWidth ?? 0),
        ),
        decoration: BoxDecoration(
          color: bg,
          border: border,
          borderRadius: BorderRadius.circular(m.radius),
        ),
        child: Material(
          type: MaterialType.transparency,
          child: InkWell(
            onTap: disabled ? null : onPressed,
            borderRadius: BorderRadius.circular(m.radius),
            splashColor: fg.withValues(alpha: 0.12),
            highlightColor: fg.withValues(alpha: 0.08),
            child: Padding(
              padding: m.padding,
              child: loading
                  ? Center(
                      child: SizedBox(
                        width: 18,
                        height: 18,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          valueColor: AlwaysStoppedAnimation<Color>(fg),
                        ),
                      ),
                    )
                  : content,
            ),
          ),
        ),
      ),
    );
  }
}
