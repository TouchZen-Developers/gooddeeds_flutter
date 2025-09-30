import 'package:flutter/material.dart';
import 'package:gooddeeds/shared/design_system/tokens/colors.dart';

class OnSurfaceExt extends ThemeExtension<OnSurfaceExt> {
  const OnSurfaceExt({
    required this.shade10,
    required this.shade20,
    required this.shade30,
    required this.shade40,
    required this.shade50,
    required this.shade60,
    required this.shade70,
    required this.shade80,
    required this.shade90,
    required this.shade100,
  });
  final Color? shade10;
  final Color? shade20;
  final Color? shade30;
  final Color? shade40;
  final Color? shade50;
  final Color? shade60;
  final Color? shade70;
  final Color? shade80;
  final Color? shade90;
  final Color? shade100;

  @override
  OnSurfaceExt copyWith({
    Color? shade10,
    Color? shade20,
    Color? shade30,
    Color? shade40,
    Color? shade50,
    Color? shade60,
    Color? shade70,
    Color? shade80,
    Color? shade90,
    Color? shade100,
  }) {
    return OnSurfaceExt(
      shade10: shade10 ?? this.shade10,
      shade20: shade20 ?? this.shade20,
      shade30: shade30 ?? this.shade30,
      shade40: shade40 ?? this.shade40,
      shade50: shade50 ?? this.shade50,
      shade60: shade60 ?? this.shade60,
      shade70: shade70 ?? this.shade70,
      shade80: shade80 ?? this.shade80,
      shade90: shade90 ?? this.shade90,
      shade100: shade100 ?? this.shade100,
    );
  }

  @override
  OnSurfaceExt lerp(ThemeExtension<OnSurfaceExt>? other, double t) {
    if (other is! OnSurfaceExt) {
      return this;
    }
    return OnSurfaceExt(
      shade10: Color.lerp(shade10, other.shade10, t),
      shade20: Color.lerp(shade20, other.shade20, t),
      shade30: Color.lerp(shade30, other.shade30, t),
      shade40: Color.lerp(shade40, other.shade40, t),
      shade50: Color.lerp(shade50, other.shade50, t),
      shade60: Color.lerp(shade60, other.shade60, t),
      shade70: Color.lerp(shade70, other.shade70, t),
      shade80: Color.lerp(shade80, other.shade80, t),
      shade90: Color.lerp(shade90, other.shade90, t),
      shade100: Color.lerp(shade100, other.shade100, t),
    );
  }

  static const light = OnSurfaceExt(
    shade10: BrandTones.grey10,
    shade20: BrandTones.grey20,
    shade30: BrandTones.grey30,
    shade40: BrandTones.grey40,
    shade50: BrandTones.grey50,
    shade60: BrandTones.grey60,
    shade70: BrandTones.grey70,
    shade80: BrandTones.grey80,
    shade90: BrandTones.grey90,
    shade100: BrandTones.grey100,
  );

  static const dark = OnSurfaceExt(
    shade10: BrandTones.grey10,
    shade20: BrandTones.grey20,
    shade30: BrandTones.grey30,
    shade40: BrandTones.grey40,
    shade50: BrandTones.grey50,
    shade60: BrandTones.grey60,
    shade70: BrandTones.grey70,
    shade80: BrandTones.grey80,
    shade90: BrandTones.grey90,
    shade100: BrandTones.grey100,
  );
}
