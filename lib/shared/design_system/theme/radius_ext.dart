import 'package:flutter/material.dart';
import '../tokens/radius.dart';

class RadiusTokens extends ThemeExtension<RadiusTokens> {
  const RadiusTokens({
    required this.xs,
    required this.sm,
    required this.md,
    required this.lg,
    required this.xl,
  });
  final double xs, sm, md, lg, xl;

  static const base = RadiusTokens(
    xs: Radii.xs,
    sm: Radii.sm,
    md: Radii.md,
    lg: Radii.lg,
    xl: Radii.xl,
  );

  @override
  RadiusTokens copyWith({
    double? xs,
    double? sm,
    double? md,
    double? lg,
    double? xl,
  }) =>
      this;
  @override
  ThemeExtension<RadiusTokens> lerp(
    covariant ThemeExtension<RadiusTokens>? other,
    double t,
  ) =>
      this;
}
