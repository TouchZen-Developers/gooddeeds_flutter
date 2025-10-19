import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:gooddeeds/gen/assets.gen.dart';
import 'package:gooddeeds/shared/design_system/components/app_app_bar.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/typography/gd_text.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';
import 'package:gooddeeds/src/config/routes/app_router.dart';
import 'package:gooddeeds/src/config/routes/route_paths.dart';
import 'package:url_launcher/url_launcher.dart';

class ReceivingMyProfileScreen extends StatelessWidget {
  const ReceivingMyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              GDText(
                context.loc.personal,
                style: context.textStyle.bodyMediumRegular,
                color: context.onSurface.shade50,
              ),
              const Gap(12),
              _MyProfileItem(
                icon: Assets.icons.profile.path,
                title: context.loc.myAccount,
                onTap: () => const MyAccountRoute(RoutePaths.receivingMyProfile)
                    .push(context),
              ),
              const Gap(12),
              _MyProfileItem(
                icon: Assets.icons.family.path,
                title: context.loc.familyInformation,
                onTap: () => const FamilyInformationRoute().push(context),
              ),
              const Gap(24),
              GDText(
                context.loc.general,
                style: context.textStyle.bodyMediumRegular,
                color: context.onSurface.shade50,
              ),
              const Gap(12),
              _MyProfileItem(
                icon: Assets.icons.notification.path,
                title: context.loc.notification,
                onTap: () =>
                    const ReceivingNotificationSettingsRoute().push(context),
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
              _MyProfileItem(
                icon: Assets.icons.signOut.path,
                title: context.loc.signOut,
              ),
            ],
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
  const _MyProfileItem({required this.icon, required this.title, this.onTap});
  final String icon;
  final String title;
  final VoidCallback? onTap;

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
              child: SvgPicture.asset(
                icon,
                colorFilter:
                    ColorFilter.mode(context.colors.secondary, BlendMode.srcIn),
              ),
            ),
            const Gap(16),
            Expanded(
              child: GDText(title, style: context.textStyle.bodyMediumMedium),
            ),
            const Icon(Icons.chevron_right_rounded),
          ],
        ),
      ),
    );
  }
}
