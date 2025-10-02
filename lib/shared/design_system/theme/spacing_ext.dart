import 'package:flutter/material.dart';
import '../tokens/spacing.dart';

class SpacingTokens extends ThemeExtension<SpacingTokens> {
  const SpacingTokens({
    required this.xxs,
    required this.xs,
    required this.sm,
    required this.md,
    required this.lg,
    required this.xl,
    required this.xxl,
  });
  final double xxs, xs, sm, md, lg, xl, xxl;

  static const base = SpacingTokens(
    xxs: Spacing.xxs,
    xs: Spacing.xs,
    sm: Spacing.sm,
    md: Spacing.md,
    lg: Spacing.lg,
    xl: Spacing.xl,
    xxl: Spacing.xxl,
  );

  @override
  SpacingTokens copyWith({
    double? xxs,
    double? xs,
    double? sm,
    double? md,
    double? lg,
    double? xl,
    double? xxl,
  }) =>
      this;
  @override
  ThemeExtension<SpacingTokens> lerp(
    covariant ThemeExtension<SpacingTokens>? other,
    double t,
  ) =>
      this;
}
