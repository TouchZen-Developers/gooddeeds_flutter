import 'package:flutter/material.dart';
import 'package:gooddeeds/gen/assets.gen.dart';
import 'package:gooddeeds/shared/design_system/components/primary_button.dart';
import 'package:gooddeeds/shared/design_system/components/text_link.dart';
import 'package:gooddeeds/shared/design_system/components/soft_circle.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/tokens/colors.dart';
import 'package:gooddeeds/shared/design_system/typography/gd_text.dart' as ds;
import 'package:gooddeeds/src/config/routes/app_router.dart';

import '../../../../../shared/strings/strings.dart';
import '../../../../splash/presentation/widgets/splash_brand.dart';

class RegisterMenuScreen extends StatelessWidget {
  const RegisterMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final gaps = context.gaps;

    return Scaffold(
      body: Stack(
        children: [
          const SoftCircle(
            leftFactor: -1 / 3,
            topFactor: -1 / 25,
            diameterFactor: 2 / 3,
            color: BrandTones.accentPeach20,
          ),

          Positioned.fill(
            child: Align(
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
          ),

          // Brand inside SafeArea(top) so it won't collide with notch,
          // while the circle behind still covers status bar.
          Padding(
            padding: const EdgeInsets.only(bottom: 48),
            child: SafeArea(
              bottom: false,
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: gaps.lg),
                  child: const SplashBrand(size: SplashBrandSize.md),
                ),
              ),
            ),
          ),

          // Bottom actions inside SafeArea(bottom) so they stay above gesture bar
          SafeArea(
            top: false,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.fromLTRB(gaps.xl, 0, gaps.xl, gaps.xxl),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    PrimaryButton(
                      label: S.signupWithApple,
                      variant: ButtonVariant.outlined,
                      size: ButtonSize.medium,
                      background: Colors.white,
                      fullWidth: true,
                      color: BrandTones.grey100,
                      leading: Assets.icons.apple.svg(width: 24, height: 24),
                      onPressed: () {
                        DonatingHomeRoute().go(context);
                      },
                    ),
                    SizedBox(height: gaps.md),
                    PrimaryButton(
                      label: S.signupWithGoogle,
                      variant: ButtonVariant.outlined,
                      size: ButtonSize.medium,
                      background: Colors.white,
                      fullWidth: true,
                      color: BrandTones.grey100,
                      leading: Assets.icons.google.svg(width: 24, height: 24),
                      onPressed: () {},
                    ),
                    SizedBox(height: gaps.md),
                    PrimaryButton(
                      label: S.signupWithEmail,
                      variant: ButtonVariant.outlined,
                      size: ButtonSize.medium,
                      background: Colors.white,
                      fullWidth: true,
                      color: BrandTones.grey100,
                      leading: Assets.icons.email.svg(width: 18, height: 14),
                      onPressed: () {},
                    ),
                    SizedBox(height: gaps.xxl),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ds.GDText(
                          "${S.registerChoiceLoginPrefix} ",
                          variant: ds.GDTextVariant.bodyMedium,
                          emphasis: ds.GDEmphasis.muted,
                          fontWeight: FontWeight.w500,
                        ),
                        GDTextLink(
                          label: S.login,
                          variant: GDTextLinkVariant.normal,
                          padding: EdgeInsets.zero,
                          emphasis: GDTextEmphasis.primary,
                          style: const TextStyle(fontWeight: FontWeight.w500),
                          color: BrandTones.secondary,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
