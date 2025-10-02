import 'package:flutter/material.dart';
import 'package:gooddeeds/gen/assets.gen.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';

typedef InfoSlide = ({SvgGenImage svg, String title, String subtitle});

class InfoSlides {
  static List<InfoSlide> of(BuildContext context) => [
    (
    svg: Assets.images.infoOne,
    title: context.loc.infoWelcomeTitle,
    subtitle: context.loc.infoWelcomeSubtitle,
    ),
    (
    svg: Assets.images.infoTwo,
    title: context.loc.infoFamiliesTitle,
    subtitle: context.loc.infoFamiliesSubtitle,
    ),
    (
    svg: Assets.images.infoThree,
    title: context.loc.infoInstantTitle,
    subtitle: context.loc.infoInstantSubtitle,
    ),
  ];
}
