import 'package:flutter/material.dart';

class OnSurfaceExt extends ThemeExtension<OnSurfaceExt> {
  const OnSurfaceExt({
    required this.shade5,
    required this.shade10,
    required this.shade20,
    required this.shade30,
    required this.shade50,
    required this.shade60,
    required this.shade80,
    required this.shade90,
    required this.shade100,
  });
  final Color? shade5;
  final Color? shade10;
  final Color? shade20;
  final Color? shade30;
  final Color? shade50;
  final Color? shade60;
  final Color? shade80;
  final Color? shade90;
  final Color? shade100;

  @override
  OnSurfaceExt copyWith({
    Color? shade5,
    Color? shade10,
    Color? shade20,
    Color? shade30,
    Color? shade50,
    Color? shade60,
    Color? shade80,
    Color? shade90,
    Color? shade100,
  }) {
    return OnSurfaceExt(
      shade5: shade5 ?? this.shade5,
      shade10: shade10 ?? this.shade10,
      shade20: shade20 ?? this.shade20,
      shade30: shade30 ?? this.shade30,
      shade50: shade50 ?? this.shade50,
      shade60: shade60 ?? this.shade60,
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
      shade5: Color.lerp(shade5, other.shade5, t),
      shade10: Color.lerp(shade10, other.shade10, t),
      shade20: Color.lerp(shade20, other.shade20, t),
      shade30: Color.lerp(shade30, other.shade30, t),
      shade50: Color.lerp(shade50, other.shade50, t),
      shade60: Color.lerp(shade60, other.shade60, t),
      shade80: Color.lerp(shade80, other.shade80, t),
      shade90: Color.lerp(shade90, other.shade90, t),
      shade100: Color.lerp(shade100, other.shade100, t),
    );
  }

  static const light = OnSurfaceExt(
    shade5: Color(0xFFE0E0E0),
    shade10: Color(0xFF0F1014),
    shade20: Color(0xFFEEEEF0),
    shade30: Color(0xFFE2E2E5),
    shade50: Color(0xFF7A7B84),
    shade60: Color(0xFF454545),
    shade80: Color(0xFF484559),
    shade90: Color(0xFFF4F5F7),
    shade100: Color(0xFF0E0A24),
  );

  static const dark = OnSurfaceExt(
    shade5: Color(0xFFE0E0E0),
    shade10: Color(0xFF0F1014),
    shade20: Color(0xFFEEEEF0),
    shade30: Color(0xFFE2E2E5),
    shade50: Color(0xFF7A7B84),
    shade60: Color(0xFF454545),
    shade80: Color(0xFF484559),
    shade90: Color(0xFFF4F5F7),
    shade100: Color(0xFF0E0A24),
  );
}
