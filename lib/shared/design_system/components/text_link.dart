import 'package:flutter/material.dart';
import 'package:gooddeeds/shared/design_system/theme/typography_ext.dart';
import 'package:gooddeeds/shared/design_system/tokens/colors.dart';

/// Visual emphasis for the link.
enum GDTextEmphasis { muted, primary }

/// Text link size variant
enum GDTextLinkVariant { small, normal , large }

/// A small, link-like text button that uses DS typography and colors.
/// - `muted` uses a brand grey by default (BrandTones.grey60).
/// - `primary` uses the theme's primary color.
/// Disabled state uses `disabledOpacity` on the current color.
class GDTextLink extends StatelessWidget {
  const GDTextLink({
    super.key,
    required this.label,
    this.onPressed,
    this.style,
    this.color,
    this.padding,
    this.emphasis = GDTextEmphasis.muted,
    this.variant = GDTextLinkVariant.normal,
    this.disabledOpacity = 0.38, // Material guideline for disabled content
  });

  final String label;
  final VoidCallback? onPressed;
  final TextStyle? style;
  final Color? color;
  final EdgeInsetsGeometry? padding;
  final GDTextEmphasis emphasis;
  final GDTextLinkVariant variant;
  final double disabledOpacity;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    // Choose default style based on variant
    final defaultTextStyle = switch (variant) {
      GDTextLinkVariant.small  => context.typo.bodySmall,   // 12px
      GDTextLinkVariant.normal => context.typo.bodyMedium,  // 14px
      GDTextLinkVariant.large  => context.typo.bodyLarge,   // 16px
    };

    // Resolve base color from props/emphasis.
    final baseColor = color ??
        (emphasis == GDTextEmphasis.primary ? scheme.primary : BrandTones.grey60);

    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        textStyle: WidgetStatePropertyAll(style ?? defaultTextStyle),
        foregroundColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.disabled)) {
            return baseColor.withValues(alpha: disabledOpacity);
          }
          return baseColor;
        }),
        overlayColor: WidgetStatePropertyAll(baseColor.withValues(alpha: 0.10)),
        padding: WidgetStatePropertyAll(
          padding ?? const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        ),
        minimumSize: const WidgetStatePropertyAll(Size(0, 0)),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: Text(label),
    );
  }
}
