import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';
import '../../../../shared/design_system/components/primary_button.dart';
import '../bloc/info_onboarding_bloc.dart';

class BottomActionsBar extends StatelessWidget {
  const BottomActionsBar({
    super.key,
    required this.total,
    this.onNext,
    this.onLogin,
    this.onRegister,
    this.onFinished,
  });

  final int total;
  final VoidCallback? onNext, onLogin, onRegister, onFinished;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InfoOnboardingBloc, InfoOnboardingBlocState>(
      buildWhen: (p, c) => p.pageIndex != c.pageIndex,
      builder: (context, state) {
        final isLast = state.pageIndex >= total - 1;

        if (isLast) {
          return Row(
            children: [
              Expanded(
                child: PrimaryButton(
                  label: context.loc.login,
                  onPressed: onLogin ?? () {},
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: PrimaryButton(
                  label: context.loc.register,
                  onPressed: onRegister ?? () {},
                  variant: ButtonVariant.outlined,
                ),
              ),
            ],
          );
        }

        return Align(
          child: PrimaryButton(
            label: context.loc.continueText,
            onPressed: () {
              onNext?.call();
              if (state.pageIndex >= total - 1) onFinished?.call();
            },
            minWidth: 140,
          ),
        );
      },
    );
  }
}
