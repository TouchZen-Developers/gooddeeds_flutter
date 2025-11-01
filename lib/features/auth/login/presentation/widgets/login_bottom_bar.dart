import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:gooddeeds/features/auth/social/presentation/bloc/social_auth_bloc.dart';
import 'package:gooddeeds/gen/assets.gen.dart';
import 'package:gooddeeds/shared/design_system/components/primary_button.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/tokens/colors.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';

import '../../../../../src/config/routes/app_router.dart';
import '../bloc/login_bloc.dart';
import 'social_login_button.dart';

class LoginBottomBar extends StatelessWidget {
  const LoginBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    final gaps = context.gaps;
    final text = context.textStyle;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        BlocBuilder<LoginBloc, LoginState>(
          buildWhen: (p, c) => p.isSubmitting != c.isSubmitting,
          builder: (context, state) {
            return PrimaryButton(
              label: context.loc.login,
              size: ButtonSize.large,
              fullWidth: true,
              loading: state.isSubmitting,
              onPressed: state.isSubmitting
                  ? null
                  : () => context
                      .read<LoginBloc>()
                      .add(const LoginEvent.submitted()),
            );
          },
        ),
        Gap(gaps.lg),

        // OR WITH divider
        Row(
          children: [
            const Expanded(
              child: Divider(
                color: BrandTones.grey30,
                thickness: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                context.loc.orWith,
                style: text.bodySmallRegular.copyWith(
                  color: BrandTones.grey100,
                ),
              ),
            ),
            const Expanded(
              child: Divider(
                color: BrandTones.grey20,
                thickness: 1,
              ),
            ),
          ],
        ),

        Gap(gaps.lg),

        // Social login buttons
        Row(
          children: [
            Expanded(
              child: SocialLoginButton(
                label: context.loc.signinWithApple,
                iconPath: Assets.icons.apple.path,
                onPressed: () {
                  // TODO: Implement Apple Sign In
                },
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: BlocBuilder<SocialAuthBloc, SocialAuthState>(
                builder: (context, state) {
                  final isLoading = state.maybeWhen(
                    awaitingCallback: () => true,
                    loading: () => true,
                    orElse: () => false,
                  );

                  return SocialLoginButton(
                    label: context.loc.signinWithGoogle,
                    iconPath: Assets.icons.google.path,
                    onPressed: isLoading
                        ? null
                        : () {
                            context.read<SocialAuthBloc>().add(
                                  const SocialAuthEvent.initiateGoogleAuth(),
                                );
                          },
                  );
                },
              ),
            ),
          ],
        ),

        Gap(gaps.md),

        // Don't have account
        Center(
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 6,
            children: [
              Text(
                context.loc.dontHaveAccount,
                style: text.bodySmallRegular.copyWith(
                  color: BrandTones.grey60,
                ),
              ),
              GestureDetector(
                onTap: () => const RegisterEmailRoute().push(context),
                child: Text(
                  context.loc.register,
                  style: text.bodySmallMedium.copyWith(
                    color: context.colors.secondary,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
