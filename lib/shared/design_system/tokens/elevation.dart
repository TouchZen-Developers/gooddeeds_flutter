import 'package:flutter/material.dart';

class Elevation {
  static const level0 = <BoxShadow>[];
  static const level1 = [
    BoxShadow(blurRadius: 8, offset: Offset(0, 2), color: Colors.black26),
  ];
  static const level2 = [
    BoxShadow(blurRadius: 16, offset: Offset(0, 8), color: Colors.black26),
  ];
}
