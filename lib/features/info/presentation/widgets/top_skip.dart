import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gooddeeds/shared/design_system/components/text_link.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';

import '../bloc/info_onboarding_bloc.dart';

class TopSkip extends StatelessWidget {
  const TopSkip({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<InfoOnboardingBloc>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: BlocBuilder<InfoOnboardingBloc, InfoOnboardingBlocState>(
        buildWhen: (p, c) => p.pageIndex != c.pageIndex,
        builder: (context, state) {
          final show = state.pageIndex < kTotalPages - 1;
          return Row(
            children: [
              const Expanded(child: SizedBox()),
              if (show)
                GDTextLink(
                  label: context.loc.skip,
                  onPressed: () =>
                      bloc.add(const InfoOnboardingEvent.skipPressed()),
                ),
            ],
          );
        },
      ),
    );
  }
}
