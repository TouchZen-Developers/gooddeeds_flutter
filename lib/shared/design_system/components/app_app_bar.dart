import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gooddeeds/gen/assets.gen.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';

class AppAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AppAppBar({super.key, required this.title, this.bottom, this.actions});

  final String title;
  final PreferredSizeWidget? bottom;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: context.textStyle.heading5),
      centerTitle: true,
      leadingWidth: 56 + 20,
      leading: context.canPop()
          ? GestureDetector(
              onTap: () => context.pop(),
              child: Container(
                width: 44,
                height: 44,
                margin: EdgeInsetsDirectional.only(start: 20),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: context.colors.outline),
                ),
                child: Assets.icons.back.svg(),
              ),
            )
          : null,
      bottom: bottom,
      actions: actions,
      actionsPadding: EdgeInsetsDirectional.only(end: 20),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(44);
}
