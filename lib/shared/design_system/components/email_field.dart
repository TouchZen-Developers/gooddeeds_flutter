import 'package:flutter/material.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/tokens/colors.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';

class EmailField extends StatelessWidget {
  const EmailField({
    super.key,
    required this.controller,
    this.label,
    this.hint,
    this.errorText,
    this.onChanged,
  });

  final TextEditingController controller;
  final String? label;
  final String? hint;
  final String? errorText;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    final hasError = errorText != null && errorText!.isNotEmpty;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label ?? context.loc.emailAddress,
          style: context.textStyle.bodyMediumMedium,
        ),
        const SizedBox(height: 10),
        TextFormField(
          controller: controller,
          keyboardType: TextInputType.emailAddress,
          style: context.textStyle.bodyMediumMedium
              .copyWith(color: hasError ? BrandTones.red : BrandTones.grey100),
          decoration: InputDecoration(
            hintText: hint ?? context.loc.emailAddress,
            hintStyle: context.textStyle.bodyMediumMedium
                .copyWith(color: hasError ? BrandTones.red : BrandTones.grey50),
            filled: !hasError,
            fillColor: BrandTones.grey10,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(color: BrandTones.grey20),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(
                color: hasError ? BrandTones.red : BrandTones.grey20,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(
                color: hasError ? BrandTones.red : BrandTones.grey20,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(color: BrandTones.info),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(
                color: BrandTones.info,
              ),
            ),
          ),
          onChanged: onChanged,
        ),
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 180),
          switchInCurve: Curves.easeOut,
          switchOutCurve: Curves.easeIn,
          child: hasError
              ? Padding(
                  key: const ValueKey('error'),
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    errorText!,
                    style: TextStyle(
                      color: Colors.red.shade400,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )
              : const SizedBox.shrink(key: ValueKey('no-error')),
        ),
      ],
    );
  }
}
