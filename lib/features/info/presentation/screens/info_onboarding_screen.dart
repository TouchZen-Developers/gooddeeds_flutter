import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gooddeeds/shared/design_system/components/soft_circle.dart';
import 'package:gooddeeds/shared/design_system/tokens/colors.dart';

import '../bloc/info_onboarding_bloc.dart';
import '../widgets/bottom_actions_bar.dart';
import '../widgets/dots_indicator.dart';
import '../widgets/image_pager.dart';
import '../widgets/info_slides.dart';
import '../widgets/text_pager.dart';
import '../widgets/top_skip.dart';

class InfoOnboardingScreen extends StatefulWidget {
  const InfoOnboardingScreen({
    super.key,
  });

  @override
  State<InfoOnboardingScreen> createState() => _InfoOnboardingScreenState();
}

class _InfoOnboardingScreenState extends State<InfoOnboardingScreen> {
  late final PageController _imgCtrl;
  late final PageController _textCtrl;
  bool _programmatic =
      false; //to handle skip button and prevent calling _animateBoth twice
  @override
  void initState() {
    super.initState();
    _imgCtrl = PageController();
    _textCtrl = PageController();
  }

  @override
  void dispose() {
    _imgCtrl.dispose();
    _textCtrl.dispose();
    super.dispose();
  }

  Future<void> _animateBoth(int index) async {
    const d = Duration(milliseconds: 260), c = Curves.easeOut;
    await Future.wait([
      _imgCtrl.animateToPage(index, duration: d, curve: c),
      _textCtrl.animateToPage(index, duration: d, curve: c),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<InfoOnboardingBloc>();
    final total = InfoSlides.all.length;

    return MultiBlocListener(
      listeners: [
        BlocListener<InfoOnboardingBloc, InfoOnboardingBlocState>(
          listenWhen: (p, c) => p.pageIndex != c.pageIndex,
          listener: (_, s) async {
            if (_programmatic) return;
            _programmatic = true;
            await _animateBoth(s.pageIndex);
            _programmatic = false;
          },
        ),
        BlocListener<InfoOnboardingBloc, InfoOnboardingBlocState>(
          listenWhen: (p, c) =>
              p.navigateTo != c.navigateTo && c.navigateTo != null,
          listener: (ctx, s) => ctx.push(s.navigateTo!),
        ),
      ],
      child: Scaffold(
        body: Stack(
          children: [
            const SoftCircle(
              leftFactor: -1 / 3,
              topFactor: -1 / 25,
              diameterFactor: 2 / 3,
              color: BrandTones.accentPeach20,
            ),
            SafeArea(
              child: Column(
                children: [
                  TopSkip(),
                  Expanded(
                    child: ImagePager(
                      controller: _imgCtrl,
                      slides: InfoSlides.all,
                      onPageChanged: (i) {
                        if (_programmatic) return;
                        bloc.add(InfoOnboardingEvent.pageChanged(i));
                      },
                    ),
                  ),
                  SizedBox(height: 64),
                  OnboardingDots(controller: _imgCtrl, count: total),
                  const SizedBox(height: 72),
                  SizedBox(
                    height: 140,
                    child: TextPager(
                      controller: _textCtrl,
                      slides: InfoSlides.all,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 8, 20, 32),
                    child: BottomActionsBar(
                      total: total,
                      onNext: () =>
                          bloc.add(const InfoOnboardingEvent.nextPressed()),
                      onLogin: () =>
                          bloc.add(const InfoOnboardingEvent.loginPressed()),
                      onRegister: () =>
                          bloc.add(const InfoOnboardingEvent.registerPressed()),
                      onFinished: () =>
                          bloc.add(const InfoOnboardingEvent.finished()),
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
