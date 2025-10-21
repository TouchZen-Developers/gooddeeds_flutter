import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/tokens/colors.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton({
    super.key,
    required this.label,
    required this.iconPath,
    this.onPressed,
  });

  final String label;
  final String iconPath;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final text = context.textStyle;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(100),
        child: Container(
          height: 56,
          decoration: BoxDecoration(
            border: Border.all(
              color: BrandTones.grey20,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                iconPath,
                width: 24,
                height: 24,
              ),
              const SizedBox(width: 12),
              Text(
                label,
                style: text.bodyMediumMedium.copyWith(
                  color: BrandTones.grey100,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
