import 'package:flutter/widgets.dart';

extension LayoutX on BuildContext {
  Size get _sz => MediaQuery.sizeOf(this);
  double wf(double f) => _sz.width * f;
  double hf(double f) => _sz.height * f;
}
