import 'package:flutter/material.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/tokens/colors.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';

class AffectedEventsWidget extends StatelessWidget {
  const AffectedEventsWidget({
    super.key,
    required this.onTap,
    this.eventErr,
    this.affectedEvent,
  });

  final VoidCallback onTap;
  final String? eventErr;
  final String? affectedEvent;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(14),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        decoration: BoxDecoration(
          color: BrandTones.grey10,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: eventErr != null ? BrandTones.red : BrandTones.grey20,
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                affectedEvent ?? context.loc.chooseEvent,
                style: (affectedEvent == null
                        ? context.textStyle.bodyMediumMedium.copyWith(
                            color: BrandTones.grey50,
                          )
                        : context.textStyle.bodyMediumMedium)
                    .copyWith(color: BrandTones.grey100),
              ),
            ),
            const Icon(Icons.expand_more_rounded),
          ],
        ),
      ),
    );
  }
}
