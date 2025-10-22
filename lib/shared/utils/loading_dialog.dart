import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';
import 'package:gooddeeds/shared/utils/app_progress_bar.dart';

import '../design_system/tokens/colors.dart';

class LoadingDialog extends StatelessWidget {
  const LoadingDialog({super.key, this.text});
  final String? text;

  static void show(
    BuildContext context, {
    String? text,
    bool dismissible = false,
  }) {
    showDialog<void>(
      context: context,
      barrierDismissible: dismissible,
      barrierColor: Colors.black.withValues(alpha: 0.45),
      builder: (_) => LoadingDialog(text: text),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        child: Container(
          width: MediaQuery.of(context).size.width / 1.8,
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                width: 45,
                height: 45,
                child: AppProgressBar(),
              ),
              const Gap(24),
              Text(
                text ?? context.loc.pleaseWait,
                style: context.textStyle.bodyLargeRegular
                    .copyWith(color: BrandTones.grey100),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
