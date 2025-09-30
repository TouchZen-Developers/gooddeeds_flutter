import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../shared/design_system/components/primary_button.dart';
import '../../../../shared/strings/strings.dart';
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
                  label: S.login,
                  onPressed: onLogin ?? () {},
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: PrimaryButton(
                  label: S.register,
                  onPressed: onRegister ?? () {},
                  variant: ButtonVariant.outlined,
                ),
              ),
            ],
          );
        }

        return Align(
          child: PrimaryButton(
            label: S.continueText,
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
