import 'package:flutter/material.dart';
import 'package:gooddeeds/shared/design_system/theme/typography_ext.dart';
import '../theme/context_ext.dart';

enum SwitchSize { small, medium }

class AppSwitch extends StatefulWidget {
  final bool value;
  final ValueChanged<bool>? onChanged;
  final String? label;
  final SwitchSize size;

  const AppSwitch({
    super.key,
    required this.value,
    required this.onChanged,
    this.label,
    this.size = SwitchSize.medium,
  });

  @override
  State<AppSwitch> createState() => _AppSwitchState();
}

class _AppSwitchState extends State<AppSwitch> {
  bool _hovered = false;
  bool _focused = false;

  // metrics
  double get _trackH => widget.size == SwitchSize.small ? 22 : 26;
  double get _trackW => widget.size == SwitchSize.small ? 40 : 48;
  double get _thumb  => widget.size == SwitchSize.small ? 14 : 18;

  @override
  Widget build(BuildContext context) {
    final cs = context.colors;
    final isDisabled = widget.onChanged == null;


    final bool on = widget.value;
    Color trackColor = on ? cs.primary : cs.onSurface.withOpacity(.12);
    Color thumbColor = on ? cs.onPrimary : cs.onSurface.withOpacity(.60);
    Color borderColor = on ? cs.primary : cs.onSurface.withOpacity(.24);

    if (isDisabled) {
      trackColor = cs.onSurface.withOpacity(.08);
      thumbColor = cs.onSurface.withOpacity(.38);
      borderColor = Colors.transparent;
    } else if (_hovered) {
      trackColor = on ? cs.primary.withOpacity(.90) : cs.onSurface.withOpacity(.16);
    }

    final focusRing = (_focused && !isDisabled)
        ? (on ? cs.primary : cs.onSurface).withOpacity(.24)
        : Colors.transparent;

    final track = AnimatedContainer(
      duration: const Duration(milliseconds: 140),
      width: _trackW,
      height: _trackH,
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: trackColor,
        borderRadius: BorderRadius.circular(_trackH),
        border: Border.all(color: borderColor, width: on ? 0 : 1),
        boxShadow: [BoxShadow(color: focusRing, blurRadius: 0, spreadRadius: 4)],
      ),
      child: Align(
        alignment: on ? Alignment.centerRight : Alignment.centerLeft,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 140),
          width: _thumb,
          height: _thumb,
          decoration: BoxDecoration(
            color: thumbColor,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );

    final row = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        track,
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
      onShowHoverHighlight: (v) => setState(() => _hovered = v),
      onShowFocusHighlight: (v) => setState(() => _focused = v),
      child: Semantics(
        toggled: widget.value,
        enabled: !isDisabled,
        label: widget.label,
        child: InkWell(
          borderRadius: BorderRadius.circular(_trackH),
          onTap: isDisabled ? null : () => widget.onChanged?.call(!widget.value),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: ((40 - _trackH) / 2).clamp(0, 12),
              vertical: ((40 - _trackH) / 2).clamp(0, 12),
            ),
            child: row,
          ),
        ),
      ),
    );
  }
}
