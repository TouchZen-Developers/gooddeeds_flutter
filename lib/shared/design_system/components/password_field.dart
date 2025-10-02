import 'package:flutter/material.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/tokens/colors.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';

import '../../../gen/assets.gen.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({
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
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscure = true;

  @override
  Widget build(BuildContext context) {
    final hasError = widget.errorText != null && widget.errorText!.isNotEmpty;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Label
        Text(
          widget.label ?? context.loc.password,
          style: context.textStyle.bodyMediumMedium,
        ),
        const SizedBox(height: 10),

        // Input
        TextFormField(
          controller: widget.controller,
          obscureText: _obscure,
          keyboardType: TextInputType.visiblePassword,
          enableSuggestions: false,
          autocorrect: false,
          style: context.textStyle.bodyMediumMedium.copyWith(
            color: hasError ? BrandTones.red : BrandTones.grey100,
          ),
          decoration: InputDecoration(
            hintText: widget.hint ?? context.loc.password,
            // e.g. "Enter password"
            hintStyle: context.textStyle.bodyMediumMedium.copyWith(
              color: hasError ? BrandTones.red : BrandTones.grey50,
            ),

            // Fill & padding
            filled: !hasError,
            fillColor: BrandTones.grey10,
            contentPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),

            // Borders (consistent with EmailField)
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(color: BrandTones.grey20),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(color: BrandTones.grey20),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(color: BrandTones.grey20),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(color: BrandTones.red),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(color: BrandTones.red),
            ),

            // Toggle visibility
            suffixIcon: IconButton(
              splashRadius: 22,
              icon: Assets.icons.eye.svg(
                width: 16,
                height: 16,
                colorFilter: ColorFilter.mode(
                  hasError ? BrandTones.red : BrandTones.grey100,
                  BlendMode.srcIn,
                ),
              ),
              onPressed: () => setState(() => _obscure = !_obscure),
            ),

            // Let the external error text be handled below with AnimatedSwitcher
            errorText: null,
          ),
          onChanged: widget.onChanged,
        ),

        // Error text
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 180),
          switchInCurve: Curves.easeOut,
          switchOutCurve: Curves.easeIn,
          child: hasError
              ? Padding(
                  key: const ValueKey('pwd-error'),
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    widget.errorText!,
                    style: TextStyle(
                      color: Colors.red.shade400,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )
              : const SizedBox.shrink(key: ValueKey('pwd-no-error')),
        ),
      ],
    );
  }
}
