import 'package:flutter/material.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/tokens/colors.dart';

import '../../../../shared/design_system/typography/gd_text.dart';
import 'info_slides.dart';

class TextPager extends StatelessWidget {
  const TextPager({
    super.key,
    required this.controller,
    required this.slides,
  });

  final PageController controller;
  final List<InfoSlide> slides;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: slides.length,
      itemBuilder: (_, i) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: GDText(
              slides[i].title,
              style: context.textStyle.heading3,
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: GDText(
              slides[i].subtitle,
              style: context.textStyle.bodyLargeRegular,
              color: BrandTones.grey80,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
