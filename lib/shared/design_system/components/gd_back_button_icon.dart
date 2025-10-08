import 'package:flutter/material.dart';
import 'package:gooddeeds/gen/assets.gen.dart';
import 'package:gooddeeds/shared/design_system/tokens/colors.dart';

class GDBackButtonIcon extends StatelessWidget {
  const GDBackButtonIcon({
    super.key,
    this.onBack,
    this.borderColor,
    this.size = 44,
  });

  final VoidCallback? onBack;

  final Color? borderColor;

  final double size;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onBack ?? () => Navigator.of(context).maybePop(),
      borderRadius: BorderRadius.circular(size),
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: borderColor ?? BrandTones.grey30,
          ),
        ),
        alignment: Alignment.center,
        child: Assets.icons.left.svg(
          width: size * 0.32,
          height: size * 0.32,
        ),
      ),
    );
  }
}
