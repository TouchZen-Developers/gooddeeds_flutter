import 'package:flutter/material.dart';
import 'package:gooddeeds/shared/design_system/theme/typography_ext.dart';
import '../theme/context_ext.dart';

enum RadioSize { small, medium }

class AppRadio<T> extends StatefulWidget {
  final T value;
  final T? groupValue;
  final ValueChanged<T?>? onChanged;
  final String? label;
  final RadioSize size;
  final bool error;
  final bool showCenterDot;

  const AppRadio({
    super.key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    this.label,
    this.size = RadioSize.medium,
    this.error = false,
    this.showCenterDot = false,
  });

  @override
  State<AppRadio<T>> createState() => _AppRadioState<T>();
}

class _AppRadioState<T> extends State<AppRadio<T>> {
  bool _hovered = false;
  bool _focused = false;

  double get _side => switch (widget.size) {
    RadioSize.small => 18.0,
    RadioSize.medium => 20.0,
  };

  bool get _selected => widget.groupValue != null && widget.value == widget.groupValue;

  @override
  Widget build(BuildContext context) {
    final cs = context.colors;
    final isDisabled = widget.onChanged == null;

    Color border = cs.outline;
    Color bg = cs.surface;
    Color ring = _selected ? (widget.error ? cs.error : cs.primary) : border;

    final double ringWidth = _selected ? 3.0 : 1.5;

    // Disabled
    if (isDisabled) {
      ring = cs.onSurface.withOpacity(.12);
      bg   = cs.surface;
    } else {
      if (_hovered && !_selected) {
        bg = cs.primary.withOpacity(.06);
      }
    }

    final Color focusRing = (_focused && !isDisabled)
        ? (widget.error ? cs.error : cs.primary).withOpacity(.24)
        : Colors.transparent;

    final radioVisual = AnimatedContainer(
      duration: const Duration(milliseconds: 120),
      width: _side,
      height: _side,
      decoration: BoxDecoration(
        color: bg,
        shape: BoxShape.circle,
        border: Border.all(color: ring, width: ringWidth),
        boxShadow: [BoxShadow(color: focusRing, blurRadius: 0, spreadRadius: 4)],
      ),
      child: _selected && widget.showCenterDot
          ? Center(
        child: Container(
          width: _side / 2.6,
          height: _side / 2.6,
          decoration: BoxDecoration(
            color: isDisabled
                ? cs.onSurface.withOpacity(.38)
                : (widget.error ? cs.error : cs.primary),
            shape: BoxShape.circle,
          ),
        ),
      )
          : null,
    );

    final textColor = isDisabled
        ? cs.onSurface.withOpacity(.38)
        : cs.onSurface;

    final row = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        radioVisual,
        if (widget.label != null) ...[
          SizedBox(width: context.gaps.sm),
          Text(widget.label!, style: context.typo.bodyMedium.copyWith(color: textColor)),
        ]
      ],
    );

    return FocusableActionDetector(
      onShowHoverHighlight: (v) => setState(() => _hovered = v),
      onShowFocusHighlight: (v) => setState(() => _focused = v),
      child: Semantics(
        inMutuallyExclusiveGroup: true,
        selected: _selected,
        enabled: !isDisabled,
        label: widget.label,
        child: InkWell(
          customBorder: const CircleBorder(),
          onTap: isDisabled ? null : () => widget.onChanged?.call(widget.value),
          child: Padding(
            padding: EdgeInsets.all(((40 - _side) / 2).clamp(0, 20)),
            child: row,
          ),
        ),
      ),
    );
  }
}
