import 'package:flutter/material.dart';

class EmailField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String hint;
  final String? errorText;
  final ValueChanged<String>? onChanged;

  const EmailField({
    super.key,
    required this.controller,
    this.label = "Email Address",
    this.hint = "Enter email",
    this.errorText,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final hasError = (errorText != null && errorText!.isNotEmpty);
    const greyFill = Color(0xFFF5F5F7);
    const labelColor = Color(0xFF0D0D26);
    const hintGrey = Color(0xFFB3B3BD);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: labelColor,
          ),
        ),
        const SizedBox(height: 10),

        TextFormField(
          controller: controller,
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: hasError ? Colors.red.shade600 : const Color(0xFF26263A),
          ),
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(
              fontSize: 16,
              color: hasError ? Colors.red.shade300 : hintGrey,
              fontWeight: FontWeight.w600,
            ),

            filled: !hasError,
            fillColor: greyFill,
            contentPadding:
            const EdgeInsets.symmetric(horizontal: 18, vertical: 18),

            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide.none,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide.none,
            ),

            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(color: Colors.red.shade400, width: 1.5),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(color: Colors.red.shade400, width: 1.5),
            ),

            errorText: null,
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
