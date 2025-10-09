import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gooddeeds/shared/design_system/components/app_switch.dart';
import 'package:gooddeeds/shared/design_system/components/gd_textfield.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AddNewCardWidget extends StatelessWidget {
  AddNewCardWidget({super.key});

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        border: Border.all(color: context.colors.outline),
      ),
      child: Column(
        children: [
          GDTextField(
            label: context.loc.cardHolder,
            hint: context.loc.cardHolderHint,
            fomatter: [
              MaskTextInputFormatter(
                mask: '#### #### #### ####',
                filter: {'#': RegExp(r'[0-9]')},
              ),
            ],
          ),
          const Gap(16),
          Row(
            children: [
              Expanded(
                child: GDTextField(
                  label: context.loc.expireDate,
                  hint: context.loc.expireDateHint,
                  fomatter: [
                    MaskTextInputFormatter(
                      mask: '##/##',
                      filter: {'#': RegExp(r'[0-9]')},
                    ),
                  ],
                ),
              ),
              const Gap(16),
              Expanded(
                child: GDTextField(
                  label: context.loc.securityCode,
                  hint: context.loc.securityCodeHint,
                  fomatter: [
                    MaskTextInputFormatter(
                      mask: '####',
                      filter: {'#': RegExp(r'[0-9]')},
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Gap(16),
          AppSwitch(
            label: context.loc.saveCardAsDefault,
            value: true,
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}
