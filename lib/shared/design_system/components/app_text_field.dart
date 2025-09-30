import 'package:flutter/material.dart';
import '../theme/context_ext.dart';

enum FieldVariant { outlined, filled }

class AppTextField extends StatefulWidget {
  const AppTextField({
    super.key,
    this.label,
    this.hint,
    this.controller,
    this.onChanged,
    this.enabled = true,
    this.errorText,
    this.success = false,
    this.variant = FieldVariant.outlined,
    this.keyboardType,
    this.maxLines = 1,
    this.prefix,
    this.suffix,
    this.focusNode,
  });
  final String? label;
  final String? hint;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final bool enabled;
  final String? errorText;
  final bool success;
  final FieldVariant variant;
  final TextInputType? keyboardType;
  final int? maxLines;
  final Widget? prefix;
  final Widget? suffix;
  final FocusNode? focusNode;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  late final FocusNode _focusNode = widget.focusNode ?? FocusNode();

  OutlineInputBorder _border(Color color, BuildContext context) =>
      OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: color, width: 1.6),
      );

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(
      () {
        setState(() {});
      },
    );
  }

  @override
  void dispose() {
    if (widget.focusNode != null) _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cs = context.colors;
    final textTheme = context.textStyles;
    final isDisabled = !widget.enabled;
    final hasError = widget.errorText != null && widget.errorText!.isNotEmpty;

    final Color outlineError = cs.error;
    final Color outlineSuccess = context.status.success;

    final Color labelColor = isDisabled
        ? cs.onSurface.withValues(alpha: .38)
        : (hasError
            ? outlineError
            : (widget.success ? outlineSuccess : cs.onSurface));

    final bool isFilledVariant = widget.variant == FieldVariant.filled;

    return TextField(
      controller: widget.controller,
      focusNode: _focusNode,
      enabled: widget.enabled,
      keyboardType: widget.keyboardType,
      maxLines: widget.maxLines,
      style: context.textStyle.bodyMediumRegular,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        isDense: true,
        labelText: widget.label,
        labelStyle: textTheme.bodyMedium!.copyWith(color: labelColor),
        hintText: widget.hint,
        hintStyle: context.textStyle.bodyMediumRegular.copyWith(
          color: context.onSurface.shade50,
        ),
        prefixIcon: widget.prefix == null
            ? null
            : Padding(
                padding: EdgeInsets.only(
                  left: context.gaps.sm,
                  right: context.gaps.xs,
                ),
                child: widget.prefix,
              ),
        suffixIcon: widget.suffix == null
            ? null
            : Padding(
                padding: EdgeInsets.only(
                  right: context.gaps.sm,
                  left: context.gaps.xs,
                ),
                child: widget.suffix,
              ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: context.gaps.md,
          vertical: context.gaps.sm,
        ),
        enabledBorder: _border(context.onSurface.shade20!, context),
        focusedBorder: _border(context.colors.primary, context),
        disabledBorder: _border(context.onSurface.shade20!, context),
        errorBorder: _border(context.colors.error, context),
        focusedErrorBorder: _border(context.onSurface.shade20!, context),
        filled: isFilledVariant ? (!_focusNode.hasFocus) : false,
        fillColor: context.onSurface.shade10,
        errorText: widget.errorText,
        errorStyle: textTheme.bodySmall!.copyWith(color: outlineError),
      ),
    );
  }
}
