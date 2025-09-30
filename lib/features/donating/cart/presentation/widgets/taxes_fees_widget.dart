import 'package:flutter/material.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';

class TaxesFeesWidget extends StatelessWidget {
  const TaxesFeesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            context.loc.taxesPlusFees,
            style: context.textStyle.bodyMediumRegular.copyWith(
              color: context.onSurface.shade80,
            ),
          ),
        ),
        Text(
          '\$300.00',
          style: context.textStyle.bodyLargeSemiBold,
        ),
      ],
    );
  }
}
