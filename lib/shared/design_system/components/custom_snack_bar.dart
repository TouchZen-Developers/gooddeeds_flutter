import 'package:flutter/material.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/tokens/colors.dart';

/// Custom SnackBar widget for top_snackbar_flutter
class CustomSnackBar extends StatelessWidget {
  const CustomSnackBar._({
    required this.message,
    this.icon,
    required this.backgroundColor,
    this.textStyle,
    this.maxLines = 3,
  });

  /// Error snackbar with red background
  factory CustomSnackBar.error({
    required String message,
    Widget? icon,
    TextStyle? textStyle,
    int maxLines = 3,
  }) {
    return CustomSnackBar._(
      message: message,
      icon: icon,
      backgroundColor: BrandTones.error,
      textStyle: textStyle,
      maxLines: maxLines,
    );
  }

  /// Success snackbar with green background
  factory CustomSnackBar.success({
    required String message,
    Widget? icon,
    TextStyle? textStyle,
    int maxLines = 3,
  }) {
    return CustomSnackBar._(
      message: message,
      icon: icon,
      backgroundColor: BrandTones.success,
      textStyle: textStyle,
      maxLines: maxLines,
    );
  }

  /// Info snackbar with blue background
  factory CustomSnackBar.info({
    required String message,
    Widget? icon,
    TextStyle? textStyle,
    int maxLines = 3,
  }) {
    return CustomSnackBar._(
      message: message,
      icon: icon,
      backgroundColor: BrandTones.info,
      textStyle: textStyle,
      maxLines: maxLines,
    );
  }

  /// Warning snackbar with yellow background
  factory CustomSnackBar.warning({
    required String message,
    Widget? icon,
    TextStyle? textStyle,
    int maxLines = 3,
  }) {
    return CustomSnackBar._(
      message: message,
      icon: icon,
      backgroundColor: BrandTones.warning,
      textStyle: textStyle,
      maxLines: maxLines,
    );
  }

  final String message;
  final Widget? icon;
  final Color backgroundColor;
  final TextStyle? textStyle;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    final defaultStyle = context.textStyle.bodyMediumMedium.copyWith(
      color: Colors.white,
    );

    return Material(
      color: Colors.transparent,
      child: Container(
        constraints: const BoxConstraints(
          minHeight: 60,
        ),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null) ...[
              SizedBox(
                width: 24,
                height: 24,
                child: icon,
              ),
              const SizedBox(width: 12),
            ],
            Expanded(
              child: Text(
                message,
                style: textStyle ?? defaultStyle,
                maxLines: maxLines,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
