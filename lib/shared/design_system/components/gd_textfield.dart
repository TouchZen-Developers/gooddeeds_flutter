import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/tokens/colors.dart';

class GDTextField extends StatelessWidget {
  const GDTextField({
    super.key,
    this.controller,
    this.label,
    this.hint,
    this.errorText,
    this.onChanged,
    this.prefix,
    this.suffix,
    this.prefixInline,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.next,
    this.obscureText = false,
    this.enabled = true,
    this.autofillHints,
    this.fomatter,
    this.lines,
  });

  final TextEditingController? controller;
  final String? label;
  final String? hint;
  final String? errorText;
  final ValueChanged<String>? onChanged;
  final List<TextInputFormatter>? fomatter;

  final Widget? prefix;
  final Widget? suffix;
  final Widget? prefixInline;

  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final bool obscureText;
  final bool enabled;
  final Iterable<String>? autofillHints;
  final int? lines;

  @override
  Widget build(BuildContext context) {
    final hasError = errorText != null && errorText!.isNotEmpty;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if ((label ?? '').isNotEmpty)
          Text(
            label!,
            style: context.textStyle.bodyMediumMedium,
          ),
        if ((label ?? '').isNotEmpty) const SizedBox(height: 10),
        TextFormField(
          controller: controller,
          enabled: enabled,
          keyboardType: keyboardType,
          textInputAction: textInputAction,
          obscureText: obscureText,
          autofillHints: autofillHints,
          inputFormatters: fomatter,
          maxLines: lines,
          style: context.textStyle.bodyMediumMedium
              .copyWith(color: hasError ? BrandTones.red : BrandTones.grey100),
          decoration: InputDecoration(
            hintText: hint ?? '',
            hintStyle: context.textStyle.bodyMediumMedium
                .copyWith(color: hasError ? BrandTones.red : BrandTones.grey50),
            filled: !hasError,
            fillColor: BrandTones.grey10,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
            prefixIcon: prefixInline ?? prefix,
            prefixIconConstraints: const BoxConstraints(),
            suffixIcon: suffix,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: const BorderSide(color: BrandTones.grey20),
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
              borderSide: const BorderSide(color: BrandTones.red),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: const BorderSide(color: BrandTones.red),
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
