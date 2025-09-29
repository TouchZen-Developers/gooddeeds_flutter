import 'package:flutter/material.dart';
import 'package:gooddeeds/shared/design_system/theme/typography_ext.dart';
import '../theme/context_ext.dart';

enum CheckboxSize { small, medium }

class AppCheckbox extends StatefulWidget {
  final bool value;
  final ValueChanged<bool>? onChanged;
  final String? label;
  final CheckboxSize size;
  final bool error;
  final bool tristate;

  const AppCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
    this.label,
    this.size = CheckboxSize.medium,
    this.error = false,
    this.tristate = false,
  });

  @override
  State<AppCheckbox> createState() => _AppCheckboxState();
}

class _AppCheckboxState extends State<AppCheckbox> {
  bool _hovered = false;
  bool _focused = false;

  double get _boxSide => switch (widget.size) {
        CheckboxSize.small => 18.0,
        CheckboxSize.medium => 20.0,
      };

  @override
  Widget build(BuildContext context) {
    final cs = context.colors;
    final isDisabled = widget.onChanged == null;

    Color border = cs.outline;
    Color bg = cs.surface;
    Color iconColor = cs.onPrimary;

    if (widget.value) {
      border = cs.primary;
      bg = cs.primary;
    }

    if (widget.error) {
      border = cs.error;
      if (widget.value) bg = cs.error;
    }

    // Disabled
    if (isDisabled) {
      final o12 = cs.onSurface.withOpacity(.12);
      final o38 = cs.onSurface.withOpacity(.38);
      border = widget.value ? o12 : o12;
      bg = widget.value ? o12 : cs.surface;
      iconColor = o38;
    } else {
      // Hover overlay
      if (_hovered && !widget.value) {
        bg = cs.primary.withOpacity(.08);
      }
    }

    // Focus ring (outer shadow)
    final ringColor = (_focused && !isDisabled)
        ? (widget.error ? cs.error : cs.primary).withOpacity(.24)
        : Colors.transparent;

    final box = AnimatedContainer(
      duration: const Duration(milliseconds: 120),
      width: _boxSide,
      height: _boxSide,
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(context.radii.sm),
        border: Border.all(color: border, width: 1.5),
        boxShadow: [
          BoxShadow(color: ringColor, blurRadius: 0, spreadRadius: 4),
        ],
      ),
      child: widget.value
          ? Icon(Icons.check, size: _boxSide - 3, color: iconColor)
          : null,
    );

    final content = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        box,
        if (widget.label != null) ...[
          SizedBox(width: context.gaps.sm),
          Text(
            widget.label!,
            style: context.typo.bodyMedium.copyWith(
              color: isDisabled ? cs.onSurface.withOpacity(.38) : cs.onSurface,
            ),
          ),
        ],
      ],
    );

    return FocusableActionDetector(
      onShowFocusHighlight: (v) => setState(() => _focused = v),
      onShowHoverHighlight: (v) => setState(() => _hovered = v),
      child: Semantics(
        checked: widget.value,
        enabled: !isDisabled,
        label: widget.label,
        child: InkWell(
          borderRadius: BorderRadius.circular(context.radii.md),
          onTap: isDisabled
              ? null
              : () {
                  final next = !widget.value;
                  widget.onChanged?.call(next);
                },
          child: Padding(
            padding: EdgeInsets.all(
              (40 - _boxSide).clamp(0, 40).toDouble() / 2,
            ),
            child: content,
          ),
        ),
      ),
    );
  }
}
