import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:gooddeeds/gen/assets.gen.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';

class DonatingAppScaffoldWithNavigationBar extends StatelessWidget {
  const DonatingAppScaffoldWithNavigationBar({
    super.key,
    required this.body,
    required this.onDestinationSelected,
    required this.currentIndex,
  });

  final Widget body;
  final ValueChanged<int> onDestinationSelected;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,
      bottomNavigationBar: LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth;
          return Container(
            width: double.infinity,
            height: 94,
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).padding.bottom,
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 14,
                ),
              ],
            ),
            child: Stack(
              children: [
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeIn,
                  left: (width / 4) * currentIndex + ((width / 4) / 2) - 25,
                  child: Container(
                    width: 50,
                    height: 4,
                    decoration: BoxDecoration(
                      color: context.colors.primary,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(4),
                        bottomRight: Radius.circular(4),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: Row(
                    children: [
                      _BottomNavigationItem(
                        icon: Assets.icons.home.path,
                        label: context.loc.home,
                        selected: currentIndex == 0,
                        onTap: () => onDestinationSelected.call(0),
                      ),
                      _BottomNavigationItem(
                        icon: Assets.icons.cart.path,
                        label: context.loc.myCart,
                        selected: currentIndex == 1,
                        onTap: () => onDestinationSelected.call(1),
                      ),
                      _BottomNavigationItem(
                        icon: Assets.icons.orders.path,
                        label: context.loc.orders,
                        selected: currentIndex == 2,
                        onTap: () => onDestinationSelected.call(2),
                      ),
                      _BottomNavigationItem(
                        icon: Assets.icons.profile.path,
                        label: context.loc.myProfile,
                        selected: currentIndex == 3,
                        onTap: () => onDestinationSelected.call(3),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _BottomNavigationItem extends StatelessWidget {
  const _BottomNavigationItem({
    required this.icon,
    required this.label,
    required this.selected,
    required this.onTap,
  });
  final String icon;
  final String label;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            const Gap(16),
            SvgPicture.asset(
              icon,
              colorFilter: ColorFilter.mode(
                selected ? context.colors.primary : context.onSurface.shade50!,
                BlendMode.srcIn,
              ),
            ),
            const Gap(6),
            Text(
              label,
              style: selected
                  ? context.textStyle.bodySmallMedium.copyWith(
                      fontWeight: FontWeight.w500,
                      color: context.colors.primary,
                    )
                  : context.textStyle.bodySmallRegular.copyWith(
                      color: context.onSurface.shade50,
                    ),
              textScaler: const TextScaler.linear(1),
            ),
          ],
        ),
      ),
    );
  }
}
