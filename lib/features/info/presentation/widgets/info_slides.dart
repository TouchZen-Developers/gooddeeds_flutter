import 'package:gooddeeds/gen/assets.gen.dart';

import '../../../../shared/strings/strings.dart';

typedef InfoSlide = ({SvgGenImage svg, String title, String subtitle});

class InfoSlides {
  static final List<InfoSlide> all = [
    (
      svg: Assets.images.infoOne,
      title: S.infoWelcomeTitle,
      subtitle: S.infoWelcomeSubtitle
    ),
    (
      svg: Assets.images.infoTwo,
      title: S.infoFamiliesTitle,
      subtitle: S.infoFamiliesSubtitle
    ),
    (
      svg: Assets.images.infoThree,
      title: S.infoInstantTitle,
      subtitle: S.infoInstantSubtitle
    ),
  ];
}
