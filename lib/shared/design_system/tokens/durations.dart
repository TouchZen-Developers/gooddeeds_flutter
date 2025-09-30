import 'package:flutter/animation.dart';

class Motion {
  static const fast = Duration(milliseconds: 120);
  static const base = Duration(milliseconds: 200);
  static const slow = Duration(milliseconds: 320);

  static const ease = Curves.easeInOut;
  static const snap = Curves.easeOutCubic;
}
