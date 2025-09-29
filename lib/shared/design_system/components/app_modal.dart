import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gooddeeds/shared/design_system/tokens/colors.dart';

class AppModal extends StatelessWidget {
  const AppModal({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Gap(12),
            Container(
              width: 32,
              height: 4,
              decoration: BoxDecoration(
                color: BrandTones.grey5,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
            const Gap(12),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: child,
            )
          ],
        ),
      ),
    );
  }
}
