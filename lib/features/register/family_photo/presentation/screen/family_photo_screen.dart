import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gooddeeds/shared/design_system/components/primary_button.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';

import '../../../../../src/config/routes/app_router.dart';
import '../../../email/presentation/components/step_header.dart';
import '../../../pending/presentation/screens/submiting_dialog.dart';
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
      navigator.pop();
      return;
    }

    showDialog<void>(
      context: context,
      barrierDismissible: false,
      barrierColor: Colors.black.withValues(alpha: 0.45),
      builder: (_) => const SubmittingDialog(),
    );

    await Future<void>.delayed(const Duration(seconds: 2));

    if (navigator.canPop()) navigator.pop();
    if (!context.mounted) return;

    ApplicationPendingRoute().push(context);
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
              SizedBox(height: gaps.xxl),
              Text(
                context.loc.familyPhoto,
                style: text.bodyMediumMedium,
              ),
              const SizedBox(height: 12),
              const FamilyPhotoCard(),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
