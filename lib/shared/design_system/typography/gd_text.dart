import 'package:flutter/material.dart';
import 'package:gooddeeds/shared/design_system/tokens/colors.dart';

enum GDEmphasis { normal, muted, primary, secondary, success, warning, error }

enum GDTextScale { system, none }

class GDText extends StatelessWidget {
  const GDText(
    this.data, {
    super.key,
    required this.style,
    this.emphasis = GDEmphasis.normal,
    this.color,
    this.alpha,
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
  final TextStyle style;

  final GDEmphasis emphasis;
  final Color? color;
  final double? alpha;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextStyle? mergeStyle;
  final String? semanticsLabel;

  final GDTextScale scale;
  final TextHeightBehavior? textHeightBehavior;
  final bool? softWrap;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

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
      resolved = resolved.withValues(alpha: alpha!.clamp(0.0, 1.0));
    }

    TextStyle out = style.copyWith(color: resolved);
    if (mergeStyle != null) out = out.merge(mergeStyle);

    final textScaler = switch (scale) {
      GDTextScale.system => MediaQuery.textScalerOf(context),
      GDTextScale.none => const TextScaler.linear(1.0),
    };

    return Text(
      data,
      style: out,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      softWrap: softWrap,
      textScaler: textScaler,
      semanticsLabel: semanticsLabel,
      textHeightBehavior: textHeightBehavior,
    );
  }
}
