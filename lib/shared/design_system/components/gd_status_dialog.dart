import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:gooddeeds/gen/assets.gen.dart';
import 'package:gooddeeds/shared/design_system/components/primary_button.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/tokens/colors.dart';

class GDStatusDialog extends StatelessWidget {
  const GDStatusDialog({
    super.key,
    required this.title,
    required this.message,
    required this.primaryLabel,
    required this.onPrimary,
    this.svg,
    this.illustration,
    this.svgWidth,
    this.svgHeight,
    this.svgSize,
    this.svgMaxHeightFactor = 0.28,
    this.svgMaxHeight,
    this.svgMaxWidth,
    this.barrierColor,
  }) : assert(
          svg != null || illustration != null,
          'Provide either svg or illustration widget',
        );

  final String title;
  final String message;
  final String primaryLabel;
  final VoidCallback onPrimary;

  final SvgGenImage? svg;
  final Widget? illustration;

  final double? svgWidth;
  final double? svgHeight;
  final Size? svgSize;

  final double svgMaxHeightFactor;
  final double? svgMaxHeight;
  final double? svgMaxWidth;

  final Color? barrierColor;

  @override
  Widget build(BuildContext context) {
    final gaps = context.gaps;
    final text = context.textStyle;
    final size = MediaQuery.of(context).size;

    final Size? exactSize = svgSize ??
        ((svgWidth != null || svgHeight != null)
            ? Size(svgWidth ?? svgHeight!, svgHeight ?? svgWidth!)
            : null);

    final maxH = svgMaxHeight ?? (size.height * svgMaxHeightFactor);
    final maxW = svgMaxWidth ?? math.min(size.width, 360);

    final Widget illustrationWidget = illustration ??
        svg!.svg(
          height: exactSize?.height ?? maxH,
          width: exactSize?.width ?? maxW,
        );

    return Dialog(
      insetPadding: EdgeInsets.symmetric(horizontal: gaps.xl),
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: EdgeInsets.fromLTRB(gaps.lg, gaps.xl, gaps.lg, gaps.lg),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (exactSize != null)
              SizedBox(
                width: exactSize.width,
                height: exactSize.height,
                child: Center(child: illustrationWidget),
              )
            else
              ConstrainedBox(
                constraints: BoxConstraints(maxHeight: maxH, maxWidth: maxW),
                child: Center(
                  child: FittedBox(
                    child: illustrationWidget,
                  ),
                ),
              ),
            SizedBox(height: gaps.lg),
            Text(
              title,
              textAlign: TextAlign.center,
              style: text.heading4.copyWith(color: BrandTones.grey100),
            ),
            SizedBox(height: gaps.sm),
            ConstrainedBox(
              constraints: BoxConstraints(maxHeight: size.height * 0.28),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Text(
                  message,
                  textAlign: TextAlign.center,
                  style:
                      text.bodyMediumRegular.copyWith(color: BrandTones.grey70),
                ),
              ),
            ),
            SizedBox(height: gaps.lg),
            PrimaryButton(
              label: primaryLabel,
              fullWidth: true,
              size: ButtonSize.large,
              onPressed: () {
                Navigator.of(context).pop();
                onPrimary();
              },
            ),
          ],
        ),
      ),
    );
  }
}

Future<T?> showGDStatusDialog<T>({
  required BuildContext context,
  required String title,
  required String message,
  required String primaryLabel,
  required VoidCallback onPrimary,
  SvgGenImage? svg,
  Widget? illustration,
  double? svgWidth,
  double? svgHeight,
  Size? svgSize,
  double? svgMaxHeight,
  double? svgMaxWidth,
  double svgMaxHeightFactor = 0.28,
  bool barrierDismissible = false,
  Color? barrierColor,
}) {
  return showDialog<T>(
    context: context,
    barrierDismissible: barrierDismissible,
    barrierColor: barrierColor,
    builder: (_) => GDStatusDialog(
      title: title,
      message: message,
      primaryLabel: primaryLabel,
      onPrimary: onPrimary,
      svg: svg,
      illustration: illustration,
      svgWidth: svgWidth,
      svgHeight: svgHeight,
      svgSize: svgSize,
      svgMaxHeight: svgMaxHeight,
      svgMaxWidth: svgMaxWidth,
      svgMaxHeightFactor: svgMaxHeightFactor,
      barrierColor: barrierColor,
    ),
  );
}

// a sample to use:
// await showGDStatusDialog(
// context: context,
// svg: Assets.icons.success,
// title: 'Congrats!',
// message: 'Your application has been approved, please continue to complete your account!',
// primaryLabel: 'Continue',
// onPrimary: () {},
// svgSize: const Size(45, 45),
// );
