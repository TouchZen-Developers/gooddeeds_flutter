import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:gooddeeds/shared/design_system/components/primary_button.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/tokens/colors.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';

import '../../../../../../src/config/routes/app_router.dart';
import '../../../email/presentation/components/step_header.dart';
import '../../../../../../shared/utils/loading_dialog.dart';
import '../bloc/register_family_photo_bloc.dart';
import '../widgets/family_photo_card.dart';

class RegisterFamilyPhotoScreen extends StatelessWidget {
  const RegisterFamilyPhotoScreen({super.key});

  Future<void> _onContinue(BuildContext context) async {
    final navigator = Navigator.of(context);
    final bloc = context.read<RegisterFamilyPhotoBloc>();

    final hasPhoto =
        bloc.state.maybeWhen(ready: (_) => true, orElse: () => false);

    if (!hasPhoto) {
      bloc.add(
        RegisterFamilyPhotoEvent.needPhotoError(
          context.loc.uploadPhotoRequired,
        ),
      );
      return;
    }

    LoadingDialog.show(context, text: context.loc.submittingApplication);

    await Future<void>.delayed(const Duration(seconds: 2));

    if (navigator.canPop()) navigator.pop();
    if (!context.mounted) return;

    const ApplicationPendingRoute().go(context);
  }

  @override
  Widget build(BuildContext context) {
    final gaps = context.gaps;
    final text = context.textStyle;

    return Scaffold(
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(gaps.xl, 0, gaps.xl, gaps.lg),
          child: PrimaryButton(
            label: context.loc.continueText,
            size: ButtonSize.large,
            fullWidth: true,
            onPressed: () => _onContinue(context),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(gaps.xl, gaps.md, gaps.xl, gaps.xl * 3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              StepHeader(
                currentStep: 5,
                totalSteps: 5,
                onBack: () => context.pop(),
              ),
              Gap(gaps.xxl),
              Text(
                context.loc.familyPhoto,
                style: text.bodyMediumMedium,
              ),
              const Gap(12),
              const FamilyPhotoCard(),
              const Gap(8),
              BlocBuilder<RegisterFamilyPhotoBloc, RegisterFamilyPhotoState>(
                buildWhen: (p, c) => p != c,
                builder: (context, state) {
                  final errorText =
                      state.maybeWhen(error: (m) => m, orElse: () => null);
                  return AnimatedSwitcher(
                    duration: const Duration(milliseconds: 200),
                    child: errorText != null
                        ? Text(
                            errorText,
                            style: text.bodySmallMedium
                                .copyWith(color: BrandTones.error),
                          )
                        : const SizedBox.shrink(),
                  );
                },
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
