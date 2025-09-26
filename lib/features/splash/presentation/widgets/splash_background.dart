import 'package:flutter/material.dart';
import 'package:gooddeeds/shared/design_system/components/soft_circle.dart';
import '../../../../../gen/assets.gen.dart';
import '../../../../shared/design_system/tokens/colors.dart';

class SplashBackground extends StatelessWidget {
  const SplashBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const SoftCircle(
          leftFactor: -1 / 3,
          topFactor: -1 / 25,
          diameterFactor: 2 / 3,
          color: BrandTones.accentPeach20,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: IgnorePointer(
            child: Image.asset(
              Assets.images.hands.path,
              width: double.infinity,
              fit: BoxFit.cover,
              opacity: const AlwaysStoppedAnimation(.18),
            ),
          ),
        ),
      ],
    );
  }
}
