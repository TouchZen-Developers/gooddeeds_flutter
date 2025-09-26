import 'package:flutter/material.dart';

class TypographyTokens {
  final TextStyle heading1;
  final TextStyle heading2;
  final TextStyle heading3;
  final TextStyle heading4;
  final TextStyle heading5;

  final TextStyle bodyLarge;
  final TextStyle bodyMedium;
  final TextStyle bodySmall;

  final TextStyle buttonLarge;
  final TextStyle buttonNormal;
  final TextStyle buttonSmall;

  const TypographyTokens({
    required this.heading1,
    required this.heading2,
    required this.heading3,
    required this.heading4,
    required this.heading5,
    required this.bodyLarge,
    required this.bodyMedium,
    required this.bodySmall,
    required this.buttonLarge,
    required this.buttonNormal,
    required this.buttonSmall,
  });

  factory TypographyTokens.poppins() {
    return TypographyTokens(
      heading1: const TextStyle(fontFamily: 'Poppins', fontSize: 40, fontWeight: FontWeight.w600, height: 1.0),
      heading2: const TextStyle(fontFamily: 'Poppins', fontSize: 32, fontWeight: FontWeight.w600, height: 1.1),
      heading3: const TextStyle(fontFamily: 'Poppins', fontSize: 24, fontWeight: FontWeight.w600, height: 1.2),
      heading4: const TextStyle(fontFamily: 'Poppins', fontSize: 20, fontWeight: FontWeight.w600, height: 1.25),
      heading5: const TextStyle(fontFamily: 'Poppins', fontSize: 18, fontWeight: FontWeight.w600, height: 1.25),

      bodyLarge:  const TextStyle(fontFamily: 'Poppins', fontSize: 16, fontWeight: FontWeight.w400, height: 1.5,letterSpacing: 0.0),
      bodyMedium: const TextStyle(fontFamily: 'Poppins', fontSize: 14, fontWeight: FontWeight.w400, height: 1.5),
      bodySmall:  const TextStyle(fontFamily: 'Poppins', fontSize: 12, fontWeight: FontWeight.w400, height: 1.4),

      buttonLarge:  const TextStyle(fontFamily: 'Poppins', fontSize: 16, fontWeight: FontWeight.w600, height: 1.2, letterSpacing: .2),
      buttonNormal: const TextStyle(fontFamily: 'Poppins', fontSize: 14, fontWeight: FontWeight.w600, height: 1.2, letterSpacing: .2),
      buttonSmall:  const TextStyle(fontFamily: 'Poppins', fontSize: 12, fontWeight: FontWeight.w600, height: 1.2, letterSpacing: .2),
    );
  }

  TextTheme toTextTheme() => TextTheme(
    displayLarge: heading1,
    displayMedium: heading2,
    headlineLarge: heading3,
    headlineMedium: heading4,
    headlineSmall: heading5,
    bodyLarge: bodyLarge,
    bodyMedium: bodyMedium,
    bodySmall: bodySmall,
    labelLarge: buttonNormal,
    labelMedium: buttonSmall,
  );
}
