import 'package:flutter/material.dart';
import 'package:gooddeeds/shared/design_system/theme/typography_ext.dart';
import 'package:gooddeeds/shared/design_system/tokens/colors.dart';

/// Semantic text variants for the DS.
enum GDTextVariant {
  heading1,
  heading2,
  heading3,
  heading4,
  heading5,
  bodyLarge,
  bodyMedium,
  bodySmall,
  buttonLarge,
  buttonNormal,
  buttonSmall,
}

/// Color emphasis mapped to theme/tokens.
enum GDEmphasis { normal, muted, primary, secondary, success, warning, error }

/// Control text scaling behavior (system = default Flutter, none = pixel-perfect).
enum GDTextScale { system, none }

/// DS Text widget: choose a variant (e.g., heading3) and override what you need.
class GDText extends StatelessWidget {
  const GDText(
    this.data, {
    super.key,
    required this.variant,
    this.emphasis = GDEmphasis.normal,
    this.color, // direct color override (takes precedence)
    this.alpha, // 0..1, applied on resolved color
    this.fontSize,
    this.fontWeight,
    this.height,
    this.letterSpacing,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.style, // final style merge override
    this.semanticsLabel,

    // Advanced controls
    this.scale = GDTextScale.system,
    this.textHeightBehavior,
    this.softWrap,
  });

  final String data;
  final GDTextVariant variant;
  final GDEmphasis emphasis;

  // Optional overrides
  final Color? color;
  final double? alpha;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? height;
  final double? letterSpacing;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextStyle? style;
  final String? semanticsLabel;

  // Advanced
  final GDTextScale scale;
  final TextHeightBehavior? textHeightBehavior;
  final bool? softWrap;

  @override
  Widget build(BuildContext context) {
    final tokens = context.typo; // TypographyTokens
    final scheme = Theme.of(context).colorScheme;

    TextStyle base = switch (variant) {
      GDTextVariant.heading1 => tokens.heading1,
      GDTextVariant.heading2 => tokens.heading2,
      GDTextVariant.heading3 => tokens.heading3,
      GDTextVariant.heading4 => tokens.heading4,
      GDTextVariant.heading5 => tokens.heading5,
      GDTextVariant.bodyLarge => tokens.bodyLarge,
      GDTextVariant.bodyMedium => tokens.bodyMedium,
      GDTextVariant.bodySmall => tokens.bodySmall,
      GDTextVariant.buttonLarge => tokens.buttonLarge,
      GDTextVariant.buttonNormal => tokens.buttonNormal,
      GDTextVariant.buttonSmall => tokens.buttonSmall,
    };

    Color resolvedColor = color ??
        switch (emphasis) {
          GDEmphasis.primary => scheme.primary,
          GDEmphasis.secondary => scheme.secondary,
          GDEmphasis.muted => scheme.onSurfaceVariant,
          GDEmphasis.success => BrandTones.success,
          GDEmphasis.warning => BrandTones.warning,
          GDEmphasis.error => scheme.error,
          GDEmphasis.normal => scheme.onSurface,
        };

    if (alpha != null) {
      resolvedColor = resolvedColor.withValues(alpha: alpha!.clamp(0.0, 1.0));
    }

    final merged = base.merge(TextStyle(
      color: resolvedColor,
      fontSize: fontSize,
      fontWeight: fontWeight,
      height: height,
      letterSpacing: letterSpacing,
    ));

    final finalStyle = style == null ? merged : merged.merge(style);

    // 5) Text scaling behavior
    final textScaler = switch (scale) {
      GDTextScale.system => MediaQuery.textScalerOf(context),
      GDTextScale.none => TextScaler.noScaling,
    };

    return Text(
      data,
      semanticsLabel: semanticsLabel,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      style: finalStyle,
      textScaler: textScaler,
      textHeightBehavior: textHeightBehavior,
      softWrap: softWrap,
    );
  }
}
