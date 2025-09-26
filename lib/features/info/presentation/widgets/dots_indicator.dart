import 'package:flutter/material.dart';
import 'package:gooddeeds/shared/design_system/tokens/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingDots extends StatelessWidget {
  const OnboardingDots({
    super.key,
    required this.controller,
    required this.count,
  });

  final PageController controller;
  final int count;

  @override
  Widget build(BuildContext context) {

    return SmoothPageIndicator(
      controller: controller,
      count: count,
      effect: ExpandingDotsEffect(
        dotHeight: 6,
        dotWidth: 6,
        spacing: 6,
        activeDotColor: BrandTones.secondary,
        dotColor: BrandTones.grey30
      ),
    );
  }
}
