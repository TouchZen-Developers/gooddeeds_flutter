import 'package:flutter/material.dart';
import 'package:gooddeeds/shared/design_system/theme/on_surface_ext.dart';
import 'package:gooddeeds/shared/design_system/tokens/typography.dart';
import 'status_colors.dart';
import 'spacing_ext.dart';
import 'radius_ext.dart';

extension BuildContextX on BuildContext {
  ColorScheme get colors => Theme.of(this).colorScheme;
  StatusColors get status => Theme.of(this).extension<StatusColors>()!;
  SpacingTokens get gaps => Theme.of(this).extension<SpacingTokens>()!;
  RadiusTokens get radii => Theme.of(this).extension<RadiusTokens>()!;
  OnSurfaceExt get onSurface => Theme.of(this).extension<OnSurfaceExt>()!;
  TextTheme get textStyles => Theme.of(this).textTheme;
  AppTextStyle get textStyle {
    return DefaultTextStyles();
  }
}
