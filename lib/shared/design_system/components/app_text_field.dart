import 'package:flutter/material.dart';
import '../theme/context_ext.dart';

enum FieldVariant { outlined, filled }

class AppTextField extends StatefulWidget {
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

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  late final FocusNode _focusNode = widget.focusNode ?? FocusNode();
  bool _hovered = false;

  OutlineInputBorder _border(Color color, BuildContext context) =>
      OutlineInputBorder(
        borderRadius: BorderRadius.circular(context.radii.lg),
        borderSide: BorderSide(color: color, width: 1.6),
      );

  @override
  void dispose() {
    if (widget.focusNode == null) _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cs = context.colors;
    final textTheme = context.textStyles;
    final isDisabled = !widget.enabled;
    final hasError = (widget.errorText != null && widget.errorText!.isNotEmpty);
    final isFocused = _focusNode.hasFocus;

    final Color outlineDefault = cs.outline;
    final Color outlineHover   = cs.primary.withOpacity(.50);
    final Color outlineFocus   = cs.primary;
    final Color outlineError   = cs.error;
    final Color outlineSuccess = context.status.success;
    final Color fillDefault    = cs.surface;

    Color currentOutline = outlineDefault;
    if (hasError) currentOutline = outlineError;
    else if (widget.success) currentOutline = outlineSuccess;
    else if (isFocused) currentOutline = outlineFocus;
    else if (_hovered) currentOutline = outlineHover;

    final Color labelColor = isDisabled
        ? cs.onSurface.withOpacity(.38)
        : (hasError ? outlineError : (widget.success ? outlineSuccess : cs.onSurface));

    final Color hintColor = cs.onSurface.withOpacity(.45);

    final bool isFilledVariant = widget.variant == FieldVariant.filled;
    final Color? fillColor = isFilledVariant
        ? (isDisabled ? cs.onSurface.withOpacity(.06) : fillDefault)
        : null;

    return MouseRegion(
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_)  => setState(() => _hovered = false),
      child: TextField(
        controller: widget.controller,
        focusNode: _focusNode,
        enabled: widget.enabled,
        keyboardType: widget.keyboardType,
        maxLines: widget.maxLines,
        style: textTheme.bodyLarge,
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          isDense: true,
          labelText: widget.label,
          labelStyle: textTheme.bodyMedium!.copyWith(color: labelColor),
          hintText: widget.hint,
          hintStyle: textTheme.bodyMedium!.copyWith(color: hintColor),
          prefixIcon: widget.prefix == null ? null : Padding(
            padding: EdgeInsets.only(left: context.gaps.sm, right: context.gaps.xs),
            child: widget.prefix,
          ),
          prefixIconConstraints: const BoxConstraints(minWidth: 0, minHeight: 0),
          suffixIcon: widget.suffix == null ? null : Padding(
            padding: EdgeInsets.only(right: context.gaps.sm, left: context.gaps.xs),
            child: widget.suffix,
          ),
          suffixIconConstraints: const BoxConstraints(minWidth: 0, minHeight: 0),

          contentPadding: EdgeInsets.symmetric(
            horizontal: context.gaps.lg,
            vertical: context.gaps.md,
          ),
          enabledBorder: _border(currentOutline, context),
          focusedBorder: _border(currentOutline, context),
          disabledBorder: _border(cs.onSurface.withOpacity(.12), context),
          errorBorder: _border(outlineError, context),
          focusedErrorBorder: _border(outlineError, context),

          filled: isFilledVariant,
          fillColor: fillColor,

          errorText: widget.errorText,
          errorStyle: textTheme.bodySmall!.copyWith(color: outlineError),
        ),
      ),
    );
  }
}
