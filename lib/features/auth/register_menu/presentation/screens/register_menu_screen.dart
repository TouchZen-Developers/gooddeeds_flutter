import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:gooddeeds/gen/assets.gen.dart';
import 'package:gooddeeds/shared/design_system/components/primary_button.dart';
import 'package:gooddeeds/shared/design_system/components/soft_circle.dart';
import 'package:gooddeeds/shared/design_system/components/text_link.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/tokens/colors.dart';
import 'package:gooddeeds/shared/design_system/typography/gd_text.dart' as ds;
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';
import 'package:gooddeeds/src/config/di/injector.dart';
import 'package:gooddeeds/src/config/routes/app_router.dart';

import '../../../../splash/presentation/widgets/splash_brand.dart';
import '../../../google_signin/presentation/bloc/google_signin_bloc.dart';

class RegisterMenuScreen extends StatelessWidget {
  const RegisterMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final gaps = context.gaps;

    return BlocProvider(
      create: (context) => getIt<GoogleSignInBloc>()
        ..add(const GoogleSignInEvent.checkSignInStatus()),
      child: Scaffold(
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
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: gaps.lg),
                    child: const SplashBrand(),
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
                      if (Platform.isIOS) ...[
                        PrimaryButton(
                          label: context.loc.signupWithApple,
                          variant: ButtonVariant.outlined,
                          background: Colors.white,
                          fullWidth: true,
                          color: BrandTones.grey100,
                          leading:
                              Assets.icons.apple.svg(width: 24, height: 24),
                          onPressed: () {
                            const DonatingHomeRoute().go(context);
                          },
                        ),
                        Gap(gaps.md),
                      ],
                      BlocConsumer<GoogleSignInBloc, GoogleSignInState>(
                        listener: (context, state) {
                          if (state.isSignedIn && state.user != null) {
                            const RegisterPersonalInfoRoute().go(context);
                          } else if (state.error != null) {
                            // Show error message
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(state.error!),
                                backgroundColor: BrandTones.red,
                              ),
                            );
                          }
                        },
                        builder: (context, state) {
                          return PrimaryButton(
                            label: context.loc.signupWithGoogle,
                            variant: ButtonVariant.outlined,
                            background: Colors.white,
                            fullWidth: true,
                            color: BrandTones.grey100,
                            leading:
                                Assets.icons.google.svg(width: 24, height: 24),
                            loading: state.isLoading,
                            onPressed: state.isLoading
                                ? null
                                : () {
                                    const ReceivingItemsRoute().go(context);
                                    // context.read<GoogleSignInBloc>().add(
                                    //       const GoogleSignInEvent
                                    //           .signInWithGoogle(),
                                    //     );
                                  },
                          );
                        },
                      ),
                      Gap(gaps.md),
                      PrimaryButton(
                        label: context.loc.signupWithEmail,
                        variant: ButtonVariant.outlined,
                        background: Colors.white,
                        fullWidth: true,
                        color: BrandTones.grey100,
                        leading: Assets.icons.email.svg(width: 18, height: 14),
                        onPressed: () {
                          const RegisterEmailRoute().push(context);
                        },
                      ),
                      Gap(gaps.xxl),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ds.GDText(
                            '${context.loc.registerChoiceLoginPrefix} ',
                            style: context.textStyle.bodyMediumRegular,
                            emphasis: ds.GDEmphasis.muted,
                          ),
                          GDTextLink(
                            label: context.loc.login,
                            padding: EdgeInsets.zero,
                            emphasis: GDTextEmphasis.primary,
                            style: context.textStyle.bodyMediumRegular,
                            color: BrandTones.secondary600,
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
      ),
    );
  }
}
