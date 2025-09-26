import 'package:flutter/material.dart';
import 'status_colors.dart';
import 'spacing_ext.dart';
import 'radius_ext.dart';

extension BuildContextX on BuildContext {
  ColorScheme get colors => Theme.of(this).colorScheme;
  StatusColors get status => Theme.of(this).extension<StatusColors>()!;
  SpacingTokens get gaps   => Theme.of(this).extension<SpacingTokens>()!;
  RadiusTokens  get radii  => Theme.of(this).extension<RadiusTokens>()!;
  TextTheme get textStyles => Theme.of(this).textTheme;
}
