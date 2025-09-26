import 'package:flutter/material.dart';
import '../tokens/radius.dart';

class RadiusTokens extends ThemeExtension<RadiusTokens> {
  final double sm, md, lg, xl;
  const RadiusTokens({required this.sm, required this.md, required this.lg, required this.xl});

  static const base = RadiusTokens(sm: Radii.sm, md: Radii.md, lg: Radii.lg, xl: Radii.xl);

  @override RadiusTokens copyWith({double? sm,double? md,double? lg,double? xl}) => this;
  @override ThemeExtension<RadiusTokens> lerp(covariant ThemeExtension<RadiusTokens>? other, double t) => this;
}
