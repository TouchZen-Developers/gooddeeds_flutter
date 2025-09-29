// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_choice_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegisterChoiceEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RegisterChoiceEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RegisterChoiceEvent()';
  }
}

/// @nodoc
class $RegisterChoiceEventCopyWith<$Res> {
  $RegisterChoiceEventCopyWith(
      RegisterChoiceEvent _, $Res Function(RegisterChoiceEvent) __);
}

/// Adds pattern-matching-related methods to [RegisterChoiceEvent].
extension RegisterChoiceEventPatterns on RegisterChoiceEvent {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NeedDonationsPressed value)? needDonationsPressed,
    TResult Function(_HelpFamiliesPressed value)? helpFamiliesPressed,
    TResult Function(_LoginPressed value)? loginPressed,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NeedDonationsPressed() when needDonationsPressed != null:
        return needDonationsPressed(_that);
      case _HelpFamiliesPressed() when helpFamiliesPressed != null:
        return helpFamiliesPressed(_that);
      case _LoginPressed() when loginPressed != null:
        return loginPressed(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NeedDonationsPressed value) needDonationsPressed,
    required TResult Function(_HelpFamiliesPressed value) helpFamiliesPressed,
    required TResult Function(_LoginPressed value) loginPressed,
  }) {
    final _that = this;
    switch (_that) {
      case _NeedDonationsPressed():
        return needDonationsPressed(_that);
      case _HelpFamiliesPressed():
        return helpFamiliesPressed(_that);
      case _LoginPressed():
        return loginPressed(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NeedDonationsPressed value)? needDonationsPressed,
    TResult? Function(_HelpFamiliesPressed value)? helpFamiliesPressed,
    TResult? Function(_LoginPressed value)? loginPressed,
  }) {
    final _that = this;
    switch (_that) {
      case _NeedDonationsPressed() when needDonationsPressed != null:
        return needDonationsPressed(_that);
      case _HelpFamiliesPressed() when helpFamiliesPressed != null:
        return helpFamiliesPressed(_that);
      case _LoginPressed() when loginPressed != null:
        return loginPressed(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? needDonationsPressed,
    TResult Function()? helpFamiliesPressed,
    TResult Function()? loginPressed,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NeedDonationsPressed() when needDonationsPressed != null:
        return needDonationsPressed();
      case _HelpFamiliesPressed() when helpFamiliesPressed != null:
        return helpFamiliesPressed();
      case _LoginPressed() when loginPressed != null:
        return loginPressed();
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() needDonationsPressed,
    required TResult Function() helpFamiliesPressed,
    required TResult Function() loginPressed,
  }) {
    final _that = this;
    switch (_that) {
      case _NeedDonationsPressed():
        return needDonationsPressed();
      case _HelpFamiliesPressed():
        return helpFamiliesPressed();
      case _LoginPressed():
        return loginPressed();
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? needDonationsPressed,
    TResult? Function()? helpFamiliesPressed,
    TResult? Function()? loginPressed,
  }) {
    final _that = this;
    switch (_that) {
      case _NeedDonationsPressed() when needDonationsPressed != null:
        return needDonationsPressed();
      case _HelpFamiliesPressed() when helpFamiliesPressed != null:
        return helpFamiliesPressed();
      case _LoginPressed() when loginPressed != null:
        return loginPressed();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _NeedDonationsPressed implements RegisterChoiceEvent {
  const _NeedDonationsPressed();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _NeedDonationsPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RegisterChoiceEvent.needDonationsPressed()';
  }
}

/// @nodoc

class _HelpFamiliesPressed implements RegisterChoiceEvent {
  const _HelpFamiliesPressed();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _HelpFamiliesPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RegisterChoiceEvent.helpFamiliesPressed()';
  }
}

/// @nodoc

class _LoginPressed implements RegisterChoiceEvent {
  const _LoginPressed();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoginPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RegisterChoiceEvent.loginPressed()';
  }
}

// dart format on
