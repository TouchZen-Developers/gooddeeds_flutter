import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';

class ToastMessage {
  static void showMessage(
    BuildContext context,
    String text, {
    String? icon,
    IconData? iconData,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              color: context.onSurface.shade100,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (icon != null) ...[
                  SvgPicture.asset(icon),
                  const Gap(6),
                ],
                if (iconData != null) ...[
                  Icon(
                    iconData,
                    color: context.colors.onPrimary,
                    size: 20,
                  ),
                  const Gap(6),
                ],
                Text(text),
              ],
            ),
          ),
        ),
        margin:
            EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom + 40),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.all(Radius.circular(16)),
        ),
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
    );
  }
}
