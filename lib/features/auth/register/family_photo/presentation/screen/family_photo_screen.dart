import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:gooddeeds/shared/design_system/components/primary_button.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/tokens/colors.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';

import '../../../../../../shared/services/secure_storage_service.dart';
import '../../../../../../src/config/di/injector.dart';
import '../../../../../../src/config/routes/app_router.dart';
import '../../../../social/domain/entities/complete_profile_entity.dart';
import '../../../../social/presentation/bloc/social_auth_bloc.dart';
import '../../../email/presentation/components/step_header.dart';
import '../../../parent_registration/presentation/bloc/parent_registration_bloc.dart';
import '../bloc/register_family_photo_bloc.dart';
import '../widgets/family_photo_card.dart';

class RegisterFamilyPhotoScreen extends StatefulWidget {
  const RegisterFamilyPhotoScreen({super.key});

  @override
  State<RegisterFamilyPhotoScreen> createState() =>
      _RegisterFamilyPhotoScreenState();
}

class _RegisterFamilyPhotoScreenState extends State<RegisterFamilyPhotoScreen> {
  Future<void> _onContinue(BuildContext context) async {
    final photoBloc = context.read<RegisterFamilyPhotoBloc>();
    final parentBloc = context.read<ParentRegistrationBloc>();
    final secure = getIt<SecureStorageService>();

    // Family photo is optional - allow continuing without photo
    String? photoPath;
    photoBloc.state.maybeWhen(
      ready: (file) => photoPath = file.path,
      orElse: () {},
    );

    // Save photo path to parent bloc (can be null)
    if (!parentBloc.isClosed) {
      parentBloc.add(
        ParentRegistrationEvent.setFamilyPhoto(photoPath: photoPath ?? ''),
      );
    }

    // If user already has token (social login), complete profile via social endpoint
    if (await secure.isLoggedIn()) {
      if (!context.mounted) return;
      final s = parentBloc.state;
      final req = CompleteProfileRequestEntity(
        firstName: s.firstName,
        lastName: s.lastName,
        phoneNumber: s.phoneNumber,
        familySize: s.familySize.isEmpty ? null : s.familySize,
        address: s.address.isEmpty ? null : s.address,
        city: s.city.isEmpty ? null : s.city,
        state: s.state.isEmpty ? null : s.state,
        zipCode: s.zipCode.isEmpty ? null : s.zipCode,
        affectedEvent: s.affectedEvent.isEmpty ? null : s.affectedEvent,
        statement: s.statement.isEmpty ? null : s.statement,
      );
      context.read<SocialAuthBloc>().add(
            SocialAuthEvent.completeProfile(profileData: req),
          );
    } else {
      // Submit registration now (final step) for email/password flow
      if (!parentBloc.isClosed) {
        parentBloc.add(const ParentRegistrationEvent.submitRegistration());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final gaps = context.gaps;
    final text = context.textStyle;

    return BlocProvider.value(
      value: getIt<SocialAuthBloc>(),
      child: MultiBlocListener(
        listeners: [
          BlocListener<ParentRegistrationBloc, ParentRegistrationState>(
            listenWhen: (p, c) =>
                p.success != c.success || p.apiError != c.apiError,
            listener: (context, state) {
              // Check if the widget is still mounted before navigating
              if (!mounted) return;

              if (state.success == true) {
                VerifyEmailRoute(email: state.email).push(context);
                return;
              }
              if (state.apiError != null && state.apiError!.isNotEmpty) {
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(
                    SnackBar(content: Text(state.apiError!)),
                  );
              }
            },
          ),
          BlocListener<SocialAuthBloc, SocialAuthState>(
            listener: (context, s) {
              s.when(
                initial: () {},
                awaitingCallback: () {},
                loading: () {},
                needsProfileCompletion: (_) {},
                needsRoleBasedNavigation: (role) {},
                success: () {
                  const DonatingHomeRoute().go(context);
                },
                failure: (m) {
                  ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(SnackBar(content: Text(m)));
                },
              );
            },
          ),
        ],
        child: Scaffold(
          bottomNavigationBar: SafeArea(
            child: Padding(
              padding: EdgeInsets.fromLTRB(gaps.xl, 0, gaps.xl, gaps.lg),
              child:
                  BlocBuilder<ParentRegistrationBloc, ParentRegistrationState>(
                builder: (context, state) {
                  return PrimaryButton(
                    label: context.loc.continueText,
                    size: ButtonSize.large,
                    fullWidth: true,
                    loading: state.isSubmitting,
                    onPressed:
                        state.isSubmitting ? null : () => _onContinue(context),
                  );
                },
              ),
            ),
          ),
          body: SafeArea(
            child: Padding(
              padding:
                  EdgeInsets.fromLTRB(gaps.xl, gaps.md, gaps.xl, gaps.xl * 3),
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
                  BlocBuilder<RegisterFamilyPhotoBloc,
                      RegisterFamilyPhotoState>(
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
        ),
      ),
    );
  }
}
