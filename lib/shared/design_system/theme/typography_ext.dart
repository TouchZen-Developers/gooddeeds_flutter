// typography_ext.dart
import 'package:flutter/material.dart';
import '../tokens/typography.dart';

class TypographyExt extends ThemeExtension<TypographyExt> {
  const TypographyExt(this.tokens);
  final TypographyTokens tokens;

  @override
  TypographyExt copyWith({TypographyTokens? tokens}) {
    return TypographyExt(tokens ?? this.tokens);
  }

  @override
  ThemeExtension<TypographyExt> lerp(
    covariant ThemeExtension<TypographyExt>? other,
    double t,
  ) {
    return this;
  }
}

extension TypographyX on BuildContext {
  TypographyTokens get typo =>
      Theme.of(this).extension<TypographyExt>()!.tokens;
}
