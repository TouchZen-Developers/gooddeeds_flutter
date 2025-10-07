import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gooddeeds/shared/design_system/components/primary_button.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/tokens/colors.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';

import '../../../../../src/config/routes/app_router.dart';
import '../bloc/login_bloc.dart';

class LoginBottomBar extends StatelessWidget {
  const LoginBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    final gaps = context.gaps;
    final text = context.textStyle;

    return SafeArea(
      child: Padding(
        padding: EdgeInsets.fromLTRB(gaps.xl, 0, gaps.xl, gaps.lg),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BlocBuilder<LoginBloc, LoginState>(
              buildWhen: (p, c) => p.isSubmitting != c.isSubmitting,
              builder: (context, state) {
                return PrimaryButton(
                  label: context.loc.login,
                  size: ButtonSize.large,
                  fullWidth: true,
                  onPressed: state.isSubmitting
                      ? null
                      : () => context
                          .read<LoginBloc>()
                          .add(const LoginEvent.submitted()),
                );
              },
            ),
            SizedBox(height: gaps.md),
            Center(
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 6,
                children: [
                  Text(
                    context.loc.dontHaveAccount,
                    style: text.bodySmallRegular.copyWith(
                      color: BrandTones.grey70,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => const RegisterEmailRoute().push(context),
                    child: Text(
                      context.loc.register,
                      style: text.bodySmallMedium.copyWith(
                        color: BrandTones.secondary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
