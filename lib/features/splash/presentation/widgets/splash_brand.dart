import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gooddeeds/gen/assets.gen.dart';

enum SplashBrandSize { sm, md, lg }

class SplashBrand extends StatelessWidget {
  const SplashBrand({
    super.key,
    this.size = SplashBrandSize.md,
    this.showWordmark = true,
  });

  final SplashBrandSize size;
  final bool showWordmark;

  @override
  Widget build(BuildContext context) {
    final (logo, gap, wordmarkH) = switch (size) {
      SplashBrandSize.sm => (64.0, 12.0, 20.0),
      SplashBrandSize.md => (96.0, 16.0, 24.0),
      SplashBrandSize.lg => (128.0, 20.0, 28.0),
    };

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Assets.icons.logo
            .svg(width: logo, height: logo, semanticsLabel: 'goodDeeds logo'),
        if (showWordmark) ...[
          Gap(gap),
          Assets.icons.goodDeeds
              .svg(height: wordmarkH, semanticsLabel: 'goodDeeds'),
        ],
      ],
    );
  }
}
