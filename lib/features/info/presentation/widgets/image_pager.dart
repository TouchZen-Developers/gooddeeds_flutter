import 'package:flutter/material.dart';
import 'info_slides.dart';

class ImagePager extends StatelessWidget {
  const ImagePager({
    super.key,
    required this.controller,
    required this.slides,
    required this.onPageChanged,
    this.bottomGap = 8,
    this.maxHeight = 290,
    this.widthFactor = 0.75,
  });

  final PageController controller;
  final List<InfoSlide> slides;
  final ValueChanged<int> onPageChanged;

  final double bottomGap;
  final double maxHeight;
  final double widthFactor;

  @override
  Widget build(BuildContext context) {
    final maxW = MediaQuery.sizeOf(context).width * widthFactor;

    return PageView.builder(
      controller: controller,
      physics: const ClampingScrollPhysics(),
      onPageChanged: onPageChanged,
      itemCount: slides.length,
      itemBuilder: (_, i) => Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: EdgeInsets.only(bottom: bottomGap),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: maxW,
              maxHeight: maxHeight,
            ),
            child: slides[i].svg.svg(
                  semanticsLabel: slides[i].title,
                ),
          ),
        ),
      ),
    );
  }
}
