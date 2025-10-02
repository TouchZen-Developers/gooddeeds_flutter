import 'package:flutter/material.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart'; // context.textStyle
import 'package:gooddeeds/shared/design_system/tokens/colors.dart';

import '../tokens/typography.dart'; // AppTextStyle

enum GDEmphasis { normal, muted, primary, secondary, success, warning, error }

enum GDTextScale { system, none }

enum GDTextStyle {
  // Headings
  heading1,
  heading2,
  heading3,
  heading4,
  heading5,
  // Body XL
  bodyXLargeSemiBold,
  bodyXLargeMedium,
  bodyXLargeRegular,
  bodyXLargeLight,
  // Body L
  bodyLargeSemiBold,
  bodyLargeMedium,
  bodyLargeRegular,
  bodyLargeLight,
  // Body M
  bodyMediumSemiBold,
  bodyMediumMedium,
  bodyMediumRegular,
  bodyMediumLight,
  // Body S
  bodySmallSemiBold,
  bodySmallMedium,
  bodySmallRegular,
  bodySmallLight,
  // Body XS
  bodyXSmallSemiBold,
  bodyXSmallMedium,
  bodyXSmallRegular,
  bodyXSmallLight,
  // Buttons
  buttonLarge,
  buttonNormal,
  buttonSmall,
}

extension _GDTextStyleResolver on GDTextStyle {
  TextStyle resolve(AppTextStyle t) {
    switch (this) {
      case GDTextStyle.heading1:
        return t.heading1;
      case GDTextStyle.heading2:
        return t.heading2;
      case GDTextStyle.heading3:
        return t.heading3;
      case GDTextStyle.heading4:
        return t.heading4;
      case GDTextStyle.heading5:
        return t.heading5;

      case GDTextStyle.bodyXLargeSemiBold:
        return t.bodyXLargeSemiBold;
      case GDTextStyle.bodyXLargeMedium:
        return t.bodyXLargeMedium;
      case GDTextStyle.bodyXLargeRegular:
        return t.bodyXLargeRegular;
      case GDTextStyle.bodyXLargeLight:
        return t.bodyXLargeLight;

      case GDTextStyle.bodyLargeSemiBold:
        return t.bodyLargeSemiBold;
      case GDTextStyle.bodyLargeMedium:
        return t.bodyLargeMedium;
      case GDTextStyle.bodyLargeRegular:
        return t.bodyLargeRegular;
      case GDTextStyle.bodyLargeLight:
        return t.bodyLargeLight;

      case GDTextStyle.bodyMediumSemiBold:
        return t.bodyMediumSemiBold;
      case GDTextStyle.bodyMediumMedium:
        return t.bodyMediumMedium;
      case GDTextStyle.bodyMediumRegular:
        return t.bodyMediumRegular;
      case GDTextStyle.bodyMediumLight:
        return t.bodyMediumLight;

      case GDTextStyle.bodySmallSemiBold:
        return t.bodySmallSemiBold;
      case GDTextStyle.bodySmallMedium:
        return t.bodySmallMedium;
      case GDTextStyle.bodySmallRegular:
        return t.bodySmallRegular;
      case GDTextStyle.bodySmallLight:
        return t.bodySmallLight;

      case GDTextStyle.bodyXSmallSemiBold:
        return t.bodyXSmallSemiBold;
      case GDTextStyle.bodyXSmallMedium:
        return t.bodyXSmallMedium;
      case GDTextStyle.bodyXSmallRegular:
        return t.bodyXSmallRegular;
      case GDTextStyle.bodyXSmallLight:
        return t.bodyXSmallLight;

      case GDTextStyle.buttonLarge:
        return t.buttonLarge;
      case GDTextStyle.buttonNormal:
        return t.buttonNormal;
      case GDTextStyle.buttonSmall:
        return t.buttonSmall;
    }
  }
}

class GDText extends StatelessWidget {
  const GDText(
    this.data, {
    super.key,
    required this.variant,
    this.emphasis = GDEmphasis.normal,
    this.color,
    this.alpha,
    this.fontSize,
    this.fontWeight,
    this.height,
    this.letterSpacing,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.mergeStyle,
    this.semanticsLabel,
    this.scale = GDTextScale.system,
    this.textHeightBehavior,
    this.softWrap,
  });

  final String data;
  final GDTextStyle variant;

  // Overrides
  final GDEmphasis emphasis;
  final Color? color;
  final double? alpha; // 0..1
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? height;
  final double? letterSpacing;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextStyle? mergeStyle;
  final String? semanticsLabel;

  // Advanced
  final GDTextScale scale;
  final TextHeightBehavior? textHeightBehavior;
  final bool? softWrap;

  @override
  Widget build(BuildContext context) {
    final ds = context.textStyle; // AppTextStyle
    final scheme = Theme.of(context).colorScheme;

    // 1) Base from DS
    TextStyle base = variant.resolve(ds);

    // 2) Color by emphasis
    Color resolved = color ??
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
      final a = alpha!.clamp(0.0, 1.0);
      resolved = resolved.withValues(alpha: a);
    }

    // 3) Apply overrides
    TextStyle out = base.copyWith(
      color: resolved,
      fontSize: fontSize,
      fontWeight: fontWeight,
      height: height,
      letterSpacing: letterSpacing,
    );

    if (mergeStyle != null) {
      out = out.merge(mergeStyle);
    }

    // 4) Scaling
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
      softWrap: softWrap,
      textScaler: textScaler,
      textHeightBehavior: textHeightBehavior,
      style: out,
    );
  }
}
