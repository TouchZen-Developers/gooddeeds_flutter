import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:gooddeeds/features/auth/logout/presentation/bloc/logout_bloc.dart';
import 'package:gooddeeds/gen/assets.gen.dart';
import 'package:gooddeeds/shared/design_system/components/app_app_bar.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/typography/gd_text.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';
import 'package:gooddeeds/src/config/routes/app_router.dart';
import 'package:gooddeeds/src/config/routes/route_paths.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../src/config/di/injector.dart';

class DonatingMyProfileScreen extends StatelessWidget {
  const DonatingMyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LogoutBloc>(),
      child: BlocListener<LogoutBloc, LogoutState>(
        listener: (context, state) {
          state.when(
            initial: () {},
            loading: () {},
            success: (response) {
              // Navigate to login screen after successful logout
              context.go(RoutePaths.login);
            },
            failure: (message) {
              // Show error message
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(message)),
              );
            },
          );
        },
        child: Scaffold(
          appBar: AppAppBar(title: context.loc.myProfile),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _MyProfileItem(
                    icon: Assets.icons.profile.path,
                    title: context.loc.myAccount,
                    onTap: () => const DonatingMyAccountRoute().push(context),
                  ),
                  const Gap(24),
                  GDText(
                    context.loc.general,
                    style: context.textStyle.bodyMediumRegular,
                    color: context.onSurface.shade50,
                  ),
                  const Gap(12),
                  _MyProfileItem(
                    icon: Assets.icons.creditCard.path,
                    title: context.loc.payment,
                    onTap: () => const DonatingPaymentRoute().push(context),
                  ),
                  const Gap(12),
                  _MyProfileItem(
                    icon: Assets.icons.notification.path,
                    title: context.loc.notification,
                    onTap: () =>
                        const DonatingNotificationSettingsRoute().push(context),
                  ),
                  const Gap(24),
                  GDText(
                    context.loc.helpAndInformation,
                    style: context.textStyle.bodyMediumRegular,
                    color: context.onSurface.shade50,
                  ),
                  const Gap(12),
                  _MyProfileItem(
                    icon: Assets.icons.support.path,
                    title: context.loc.customerSupport,
                    onTap: () => launchUrl(
                      Uri(
                        scheme: 'mailto',
                        path: 'support@touchzenmedia.com',
                        query: encodeQueryParameters(<String, String>{
                          'subject': 'Customer Support',
                        }),
                      ),
                    ),
                  ),
                  const Gap(12),
                  _MyProfileItem(
                    icon: Assets.icons.contact.path,
                    title: context.loc.contactUs,
                    onTap: () => launchUrl(
                      Uri(
                        scheme: 'mailto',
                        path: 'support@touchzenmedia.com',
                        query: encodeQueryParameters(<String, String>{
                          'subject': 'Contact us',
                        }),
                      ),
                    ),
                  ),
                  const Gap(12),
                  _MyProfileItem(
                    icon: Assets.icons.about.path,
                    title: context.loc.aboutUnitedDeeds,
                    onTap: () => launchUrl(Uri.parse('https://gooddeeds.co')),
                  ),
                  const Gap(12),
                  _MyProfileItem(
                    icon: Assets.icons.terms.path,
                    title: context.loc.termsAndConditions,
                    onTap: () => launchUrl(Uri.parse('https://gooddeeds.co')),
                  ),
                  const Gap(12),
                  _MyProfileItem(
                    icon: Assets.icons.privacy.path,
                    title: context.loc.privacyPolicy,
                    onTap: () => launchUrl(Uri.parse('https://gooddeeds.co')),
                  ),
                  const Gap(24),
                  BlocBuilder<LogoutBloc, LogoutState>(
                    builder: (context, state) {
                      return _MyProfileItem(
                        icon: Assets.icons.signOut.path,
                        title: context.loc.signOut,
                        onTap: state.maybeWhen(
                          loading: () => null,
                          orElse: () => () => context.read<LogoutBloc>().add(
                                const LogoutEvent.logoutRequested(),
                              ),
                        ),
                        isLoading: state.maybeWhen(
                          loading: () => true,
                          orElse: () => false,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map(
          (MapEntry<String, String> e) =>
              '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}',
        )
        .join('&');
  }
}

class _MyProfileItem extends StatelessWidget {
  const _MyProfileItem({
    required this.icon,
    required this.title,
    this.onTap,
    this.isLoading = false,
  });

  final String icon;
  final String title;
  final VoidCallback? onTap;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(color: context.colors.outline),
          borderRadius: const BorderRadius.all(Radius.circular(16)),
        ),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: context.colors.secondary.withValues(alpha: .1),
                shape: BoxShape.circle,
              ),
              child: isLoading
                  ? SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          context.colors.secondary,
                        ),
                      ),
                    )
                  : SvgPicture.asset(
                      icon,
                      colorFilter: ColorFilter.mode(
                        context.colors.secondary,
                        BlendMode.srcIn,
                      ),
                    ),
            ),
            const Gap(16),
            Expanded(
              child: GDText(title, style: context.textStyle.bodyMediumMedium),
            ),
            if (!isLoading) const Icon(Icons.chevron_right_rounded),
          ],
        ),
      ),
    );
  }
}
