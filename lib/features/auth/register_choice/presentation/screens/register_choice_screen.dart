import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/theme/typography_ext.dart';
import 'package:gooddeeds/shared/design_system/tokens/colors.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../../shared/design_system/components/primary_button.dart';
import '../../../../../shared/design_system/components/text_link.dart';

import '../../../../../shared/design_system/typography/gd_text.dart' as ds;
import '../../../../../shared/strings/strings.dart';
import '../bloc/register_choice_bloc.dart';
import '../bloc/register_choice_event.dart';
import '../bloc/register_choice_state.dart';

class RegisterChoiceScreen extends StatelessWidget {
  const RegisterChoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final gaps = context.gaps;

    return BlocProvider(
      create: (_) => RegisterChoiceBloc(),
      child: BlocListener<RegisterChoiceBloc, RegisterChoiceState>(
        listenWhen: (p, c) => c.maybeWhen(navigate: (_) => true, orElse: () => false),
        listener: (ctx, s) => s.maybeWhen(
          navigate: (route) => ctx.push(route),
          orElse: () {},
        ),
        child: Scaffold(
          body: SafeArea(
            child: LayoutBuilder(
              builder: (context, constraints) {
                final h = constraints.maxHeight;

                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: gaps.xl),
                  child: Column(
                    children: [
                      const SizedBox(height: 48),
                      SizedBox(
                        height: h * 0.5,
                        child: Center(
                          child: Assets.images.registerOption.svg(
                            width: MediaQuery.sizeOf(context).width * 0.75,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            ds.GDText(
                              S.registerChoiceTitle,
                              variant: ds.GDTextStyle.bodyLargeMedium,
                              textAlign: TextAlign.center,
                              emphasis: ds.GDEmphasis.muted,
                            ),
                            SizedBox(height: gaps.xxl),
                            PrimaryButton(
                              label: S.registerChoiceNeed,
                              variant: ButtonVariant.outlined,
                              size: ButtonSize.large,
                              fullWidth: true,
                              onPressed: () =>
                                  context.read<RegisterChoiceBloc>().add(
                                        const RegisterChoiceEvent
                                            .needDonationsPressed(),
                                      ),
                            ),
                            SizedBox(height: gaps.md),
                            PrimaryButton(
                              label: S.registerChoiceHelp,
                              variant: ButtonVariant.outlined,
                              size: ButtonSize.large,
                              fullWidth: true,
                              onPressed: () =>
                                  context.read<RegisterChoiceBloc>().add(
                                        const RegisterChoiceEvent
                                            .helpFamiliesPressed(),
                                      ),
                            ),
                            Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ds.GDText(
                                  '${S.registerChoiceLoginPrefix} ',
                                  variant: ds.GDTextStyle.bodyLargeMedium,
                                  emphasis: ds.GDEmphasis.muted,
                                  fontWeight: FontWeight.w500,
                                ),
                                GDTextLink(
                                  label: S.login,
                                  emphasis: GDTextEmphasis.primary,
                                  style: context.typo.bodyMedium.copyWith(fontWeight: FontWeight.w500),
                                  padding: EdgeInsets.zero,
                                  color: BrandTones.secondary,
                                  onPressed: () =>
                                      context.read<RegisterChoiceBloc>().add(
                                            const RegisterChoiceEvent
                                                .loginPressed(),
                                          ),
                                ),
                              ],
                            ),
                            SizedBox(height: gaps.xl),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
