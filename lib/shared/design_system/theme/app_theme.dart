import 'package:flutter/material.dart';
import 'package:gooddeeds/shared/design_system/theme/typography_ext.dart';
import '../tokens/colors.dart';
import '../tokens/typography.dart';
import 'status_colors.dart';
import 'spacing_ext.dart';
import 'radius_ext.dart';

ColorScheme _buildScheme(Brightness b) {
  final base = ColorScheme.fromSeed( seedColor: BrandTones.primary, brightness: b);
  final sec = ColorScheme.fromSeed(seedColor: BrandTones.secondary600, brightness: b);
  return base.copyWith(
    primary: BrandTones.primary,
    onPrimary: Colors.white,
    secondary: sec.secondary,
    onSecondary: sec.onSecondary,
    secondaryContainer: sec.secondaryContainer,
    onSecondaryContainer: sec.onSecondaryContainer,
    surface: b == Brightness.light ? BrandTones.grey90 : BrandTones.grey10,
    background: b == Brightness.light ? Colors.white : BrandTones.grey10,
  );
}

ThemeData buildLightTheme() {
  final scheme = _buildScheme(Brightness.light);
  final tokens = TypographyTokens.poppins();

  return ThemeData(
    useMaterial3: true,
    colorScheme: scheme,
    textTheme: tokens.toTextTheme().apply(
          bodyColor: scheme.onSurface,
          displayColor: scheme.onSurface,
        ),
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Poppins',
    extensions: <ThemeExtension<dynamic>>[
      StatusColors.light,
      SpacingTokens.base,
      RadiusTokens.base,
      TypographyExt(tokens),
    ],
  );
}

ThemeData buildDarkTheme() {
  final scheme = _buildScheme(Brightness.dark);
  final tokens = TypographyTokens.poppins();

  return ThemeData(
    useMaterial3: true,
    colorScheme: scheme,
    textTheme: tokens.toTextTheme().apply(
          bodyColor: scheme.onSurface,
          displayColor: scheme.onSurface,
        ),
    fontFamily: 'Poppins',
    extensions: <ThemeExtension<dynamic>>[
      StatusColors.dark,
      SpacingTokens.base,
      RadiusTokens.base,
      TypographyExt(tokens),
    ],
  );
}
