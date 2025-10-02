import 'package:flutter/material.dart';
import 'package:gooddeeds/shared/design_system/utils/layout_ext.dart';

class SoftCircle extends StatelessWidget {
  const SoftCircle({
    super.key,
    required this.diameterFactor,
    required this.color,
    this.leftFactor,
    this.topFactor,
    this.rightFactor,
    this.bottomFactor,
  });

  final double diameterFactor;
  final Color color;
  final double? leftFactor;
  final double? topFactor;
  final double? rightFactor;
  final double? bottomFactor;

  @override
  Widget build(BuildContext context) {
    final diameter = context.wf(diameterFactor);
    final circle = SizedBox(
      width: diameter,
      height: diameter,
      child: DecoratedBox(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
      ),
    );

    if (leftFactor == null &&
        topFactor == null &&
        rightFactor == null &&
        bottomFactor == null) {
      return circle;
    }

    return Positioned(
      left: leftFactor != null ? context.wf(leftFactor!) : null,
      top: topFactor != null ? context.hf(topFactor!) : null,
      right: rightFactor != null ? context.wf(rightFactor!) : null,
      bottom: bottomFactor != null ? context.hf(bottomFactor!) : null,
      child: circle,
    );
  }
}
