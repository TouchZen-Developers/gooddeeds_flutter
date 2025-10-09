import 'package:flutter/material.dart';

class TypographyTokens {
  factory TypographyTokens.poppins() {
    return const TypographyTokens(
      heading1: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 40,
        fontWeight: FontWeight.w600,
        height: 1.0,
      ),
      heading2: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 32,
        fontWeight: FontWeight.w600,
        height: 1.1,
      ),
      heading3: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 24,
        fontWeight: FontWeight.w600,
        height: 1.2,
      ),
      heading4: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 20,
        fontWeight: FontWeight.w600,
        height: 1.25,
      ),
      heading5: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 18,
        fontWeight: FontWeight.w600,
        height: 1.25,
      ),
      bodyLarge: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 1.5,
        letterSpacing: 0.0,
      ),
      bodyMedium: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.5,
      ),
      bodySmall: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 12,
        fontWeight: FontWeight.w400,
        height: 1.4,
      ),
      buttonLarge: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 16,
        fontWeight: FontWeight.w600,
        height: 1.2,
        letterSpacing: .2,
      ),
      buttonNormal: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 14,
        fontWeight: FontWeight.w600,
        height: 1.2,
        letterSpacing: .2,
      ),
      buttonSmall: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 12,
        fontWeight: FontWeight.w600,
        height: 1.2,
        letterSpacing: .2,
      ),
    );
  }
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

class DefaultTextStyles extends AppTextStyle {
  @override
  TextStyle get heading1 => const TextStyle(
        fontFamily: 'Poppins',
        fontSize: 40,
        fontWeight: FontWeight.w600,
        height: 1.0,
      );

  @override
  TextStyle get heading2 => heading1.copyWith(fontSize: 32);

  @override
  TextStyle get heading3 => heading1.copyWith(fontSize: 24);

  @override
  TextStyle get heading4 => heading1.copyWith(fontSize: 20);

  @override
  TextStyle get heading5 => heading1.copyWith(fontSize: 18);

  @override
  TextStyle get bodyXLargeSemiBold => const TextStyle(
        fontFamily: 'Poppins',
        fontSize: 18,
        fontWeight: FontWeight.w600,
        height: 1.5,
      );

  @override
  TextStyle get bodyXLargeMedium => bodyXLargeSemiBold.copyWith(
        fontWeight: FontWeight.w500,
      );

  @override
  TextStyle get bodyXLargeRegular => bodyXLargeSemiBold.copyWith(
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get bodyXLargeLight => bodyXLargeSemiBold.copyWith(
        fontWeight: FontWeight.w300,
      );

  @override
  TextStyle get bodyLargeSemiBold => const TextStyle(
        fontFamily: 'Poppins',
        fontSize: 16,
        fontWeight: FontWeight.w600,
        height: 1.5,
      );

  @override
  TextStyle get bodyLargeMedium => bodyLargeSemiBold.copyWith(
        fontWeight: FontWeight.w500,
      );

  @override
  TextStyle get bodyLargeRegular => bodyLargeSemiBold.copyWith(
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get bodyLargeLight => bodyLargeSemiBold.copyWith(
        fontWeight: FontWeight.w300,
      );

  @override
  TextStyle get bodyMediumSemiBold => const TextStyle(
        fontFamily: 'Poppins',
        fontSize: 14,
        fontWeight: FontWeight.w600,
        height: 1.5,
      );

  @override
  TextStyle get bodyMediumMedium => bodyMediumSemiBold.copyWith(
        fontWeight: FontWeight.w500,
      );

  @override
  TextStyle get bodyMediumRegular => bodyMediumSemiBold.copyWith(
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get bodyMediumLight => bodyMediumSemiBold.copyWith(
        fontWeight: FontWeight.w300,
      );

  @override
  TextStyle get bodySmallSemiBold => const TextStyle(
        fontFamily: 'Poppins',
        fontSize: 12,
        fontWeight: FontWeight.w600,
        height: 1,
      );

  @override
  TextStyle get bodySmallMedium => bodySmallSemiBold.copyWith(
        fontWeight: FontWeight.w500,
      );

  @override
  TextStyle get bodySmallRegular => bodySmallSemiBold.copyWith(
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get bodySmallLight => bodySmallSemiBold.copyWith(
        fontWeight: FontWeight.w300,
      );

  @override
  TextStyle get bodyXSmallSemiBold => const TextStyle(
        fontFamily: 'Poppins',
        fontSize: 10,
        fontWeight: FontWeight.w600,
        height: 1,
      );

  @override
  TextStyle get bodyXSmallMedium => bodyXSmallSemiBold.copyWith(
        fontWeight: FontWeight.w500,
      );

  @override
  TextStyle get bodyXSmallRegular => bodyXSmallSemiBold.copyWith(
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get bodyXSmallLight => bodyXSmallSemiBold.copyWith(
        fontWeight: FontWeight.w300,
      );

  @override
  TextStyle get buttonLarge => bodyLargeMedium.copyWith(
        height: 1,
      );

  @override
  TextStyle get buttonNormal => bodyMediumMedium.copyWith(
        height: 1,
      );

  @override
  TextStyle get buttonSmall => bodySmallMedium.copyWith(
        height: 1,
      );
}

abstract class AppTextStyle {
  TextStyle get heading1;
  TextStyle get heading2;
  TextStyle get heading3;
  TextStyle get heading4;
  TextStyle get heading5;

  TextStyle get bodyXLargeSemiBold;
  TextStyle get bodyXLargeMedium;
  TextStyle get bodyXLargeRegular;
  TextStyle get bodyXLargeLight;

  TextStyle get bodyLargeSemiBold;
  TextStyle get bodyLargeMedium;
  TextStyle get bodyLargeRegular;
  TextStyle get bodyLargeLight;

  TextStyle get bodyMediumSemiBold;
  TextStyle get bodyMediumMedium;
  TextStyle get bodyMediumRegular;
  TextStyle get bodyMediumLight;

  TextStyle get bodySmallSemiBold;
  TextStyle get bodySmallMedium;
  TextStyle get bodySmallRegular;
  TextStyle get bodySmallLight;

  TextStyle get bodyXSmallSemiBold;
  TextStyle get bodyXSmallMedium;
  TextStyle get bodyXSmallRegular;
  TextStyle get bodyXSmallLight;

  TextStyle get buttonLarge;
  TextStyle get buttonNormal;
  TextStyle get buttonSmall;
}
