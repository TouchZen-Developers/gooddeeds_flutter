// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_impact_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegisterImpactEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RegisterImpactEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RegisterImpactEvent()';
  }
}

/// @nodoc
class $RegisterImpactEventCopyWith<$Res> {
  $RegisterImpactEventCopyWith(
      RegisterImpactEvent _, $Res Function(RegisterImpactEvent) __);
}

/// Adds pattern-matching-related methods to [RegisterImpactEvent].
extension RegisterImpactEventPatterns on RegisterImpactEvent {
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
    TResult Function(_EventChanged value)? eventChanged,
    TResult Function(_StatementChanged value)? statementChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EventChanged() when eventChanged != null:
        return eventChanged(_that);
      case _StatementChanged() when statementChanged != null:
        return statementChanged(_that);
      case _Submitted() when submitted != null:
        return submitted(_that);
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
    required TResult Function(_EventChanged value) eventChanged,
    required TResult Function(_StatementChanged value) statementChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    final _that = this;
    switch (_that) {
      case _EventChanged():
        return eventChanged(_that);
      case _StatementChanged():
        return statementChanged(_that);
      case _Submitted():
        return submitted(_that);
      case _:
        throw StateError('Unexpected subclass');
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
    TResult? Function(_EventChanged value)? eventChanged,
    TResult? Function(_StatementChanged value)? statementChanged,
    TResult? Function(_Submitted value)? submitted,
  }) {
    final _that = this;
    switch (_that) {
      case _EventChanged() when eventChanged != null:
        return eventChanged(_that);
      case _StatementChanged() when statementChanged != null:
        return statementChanged(_that);
      case _Submitted() when submitted != null:
        return submitted(_that);
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
    TResult Function(String? value)? eventChanged,
    TResult Function(String value)? statementChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EventChanged() when eventChanged != null:
        return eventChanged(_that.value);
      case _StatementChanged() when statementChanged != null:
        return statementChanged(_that.value);
      case _Submitted() when submitted != null:
        return submitted();
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
    required TResult Function(String? value) eventChanged,
    required TResult Function(String value) statementChanged,
    required TResult Function() submitted,
  }) {
    final _that = this;
    switch (_that) {
      case _EventChanged():
        return eventChanged(_that.value);
      case _StatementChanged():
        return statementChanged(_that.value);
      case _Submitted():
        return submitted();
      case _:
        throw StateError('Unexpected subclass');
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
    TResult? Function(String? value)? eventChanged,
    TResult? Function(String value)? statementChanged,
    TResult? Function()? submitted,
  }) {
    final _that = this;
    switch (_that) {
      case _EventChanged() when eventChanged != null:
        return eventChanged(_that.value);
      case _StatementChanged() when statementChanged != null:
        return statementChanged(_that.value);
      case _Submitted() when submitted != null:
        return submitted();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _EventChanged implements RegisterImpactEvent {
  const _EventChanged(this.value);

  final String? value;

  /// Create a copy of RegisterImpactEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EventChangedCopyWith<_EventChanged> get copyWith =>
      __$EventChangedCopyWithImpl<_EventChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EventChanged &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'RegisterImpactEvent.eventChanged(value: $value)';
  }
}

/// @nodoc
abstract mixin class _$EventChangedCopyWith<$Res>
    implements $RegisterImpactEventCopyWith<$Res> {
  factory _$EventChangedCopyWith(
          _EventChanged value, $Res Function(_EventChanged) _then) =
      __$EventChangedCopyWithImpl;
  @useResult
  $Res call({String? value});
}

/// @nodoc
class __$EventChangedCopyWithImpl<$Res>
    implements _$EventChangedCopyWith<$Res> {
  __$EventChangedCopyWithImpl(this._self, this._then);

  final _EventChanged _self;
  final $Res Function(_EventChanged) _then;

  /// Create a copy of RegisterImpactEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_EventChanged(
      freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _StatementChanged implements RegisterImpactEvent {
  const _StatementChanged(this.value);

  final String value;

  /// Create a copy of RegisterImpactEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StatementChangedCopyWith<_StatementChanged> get copyWith =>
      __$StatementChangedCopyWithImpl<_StatementChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StatementChanged &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'RegisterImpactEvent.statementChanged(value: $value)';
  }
}

/// @nodoc
abstract mixin class _$StatementChangedCopyWith<$Res>
    implements $RegisterImpactEventCopyWith<$Res> {
  factory _$StatementChangedCopyWith(
          _StatementChanged value, $Res Function(_StatementChanged) _then) =
      __$StatementChangedCopyWithImpl;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$StatementChangedCopyWithImpl<$Res>
    implements _$StatementChangedCopyWith<$Res> {
  __$StatementChangedCopyWithImpl(this._self, this._then);

  final _StatementChanged _self;
  final $Res Function(_StatementChanged) _then;

  /// Create a copy of RegisterImpactEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(_StatementChanged(
      null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _Submitted implements RegisterImpactEvent {
  const _Submitted();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Submitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RegisterImpactEvent.submitted()';
  }
}

/// @nodoc
mixin _$RegisterImpactState {
  String? get affectedEvent;
  String get statement;
  bool get showErrors;
  bool get isSubmitting;
  bool get completed;

  /// Create a copy of RegisterImpactState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RegisterImpactStateCopyWith<RegisterImpactState> get copyWith =>
      _$RegisterImpactStateCopyWithImpl<RegisterImpactState>(
          this as RegisterImpactState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegisterImpactState &&
            (identical(other.affectedEvent, affectedEvent) ||
                other.affectedEvent == affectedEvent) &&
            (identical(other.statement, statement) ||
                other.statement == statement) &&
            (identical(other.showErrors, showErrors) ||
                other.showErrors == showErrors) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.completed, completed) ||
                other.completed == completed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, affectedEvent, statement,
      showErrors, isSubmitting, completed);

  @override
  String toString() {
    return 'RegisterImpactState(affectedEvent: $affectedEvent, statement: $statement, showErrors: $showErrors, isSubmitting: $isSubmitting, completed: $completed)';
  }
}

/// @nodoc
abstract mixin class $RegisterImpactStateCopyWith<$Res> {
  factory $RegisterImpactStateCopyWith(
          RegisterImpactState value, $Res Function(RegisterImpactState) _then) =
      _$RegisterImpactStateCopyWithImpl;
  @useResult
  $Res call(
      {String? affectedEvent,
      String statement,
      bool showErrors,
      bool isSubmitting,
      bool completed});
}

/// @nodoc
class _$RegisterImpactStateCopyWithImpl<$Res>
    implements $RegisterImpactStateCopyWith<$Res> {
  _$RegisterImpactStateCopyWithImpl(this._self, this._then);

  final RegisterImpactState _self;
  final $Res Function(RegisterImpactState) _then;

  /// Create a copy of RegisterImpactState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? affectedEvent = freezed,
    Object? statement = null,
    Object? showErrors = null,
    Object? isSubmitting = null,
    Object? completed = null,
  }) {
    return _then(_self.copyWith(
      affectedEvent: freezed == affectedEvent
          ? _self.affectedEvent
          : affectedEvent // ignore: cast_nullable_to_non_nullable
              as String?,
      statement: null == statement
          ? _self.statement
          : statement // ignore: cast_nullable_to_non_nullable
              as String,
      showErrors: null == showErrors
          ? _self.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _self.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      completed: null == completed
          ? _self.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [RegisterImpactState].
extension RegisterImpactStatePatterns on RegisterImpactState {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_RegisterImpactState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RegisterImpactState() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_RegisterImpactState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RegisterImpactState():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_RegisterImpactState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RegisterImpactState() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? affectedEvent, String statement, bool showErrors,
            bool isSubmitting, bool completed)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RegisterImpactState() when $default != null:
        return $default(_that.affectedEvent, _that.statement, _that.showErrors,
            _that.isSubmitting, _that.completed);
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
  TResult when<TResult extends Object?>(
    TResult Function(String? affectedEvent, String statement, bool showErrors,
            bool isSubmitting, bool completed)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RegisterImpactState():
        return $default(_that.affectedEvent, _that.statement, _that.showErrors,
            _that.isSubmitting, _that.completed);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? affectedEvent, String statement, bool showErrors,
            bool isSubmitting, bool completed)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RegisterImpactState() when $default != null:
        return $default(_that.affectedEvent, _that.statement, _that.showErrors,
            _that.isSubmitting, _that.completed);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _RegisterImpactState implements RegisterImpactState {
  const _RegisterImpactState(
      {this.affectedEvent,
      this.statement = '',
      this.showErrors = false,
      this.isSubmitting = false,
      this.completed = false});

  @override
  final String? affectedEvent;
  @override
  @JsonKey()
  final String statement;
  @override
  @JsonKey()
  final bool showErrors;
  @override
  @JsonKey()
  final bool isSubmitting;
  @override
  @JsonKey()
  final bool completed;

  /// Create a copy of RegisterImpactState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RegisterImpactStateCopyWith<_RegisterImpactState> get copyWith =>
      __$RegisterImpactStateCopyWithImpl<_RegisterImpactState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterImpactState &&
            (identical(other.affectedEvent, affectedEvent) ||
                other.affectedEvent == affectedEvent) &&
            (identical(other.statement, statement) ||
                other.statement == statement) &&
            (identical(other.showErrors, showErrors) ||
                other.showErrors == showErrors) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.completed, completed) ||
                other.completed == completed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, affectedEvent, statement,
      showErrors, isSubmitting, completed);

  @override
  String toString() {
    return 'RegisterImpactState(affectedEvent: $affectedEvent, statement: $statement, showErrors: $showErrors, isSubmitting: $isSubmitting, completed: $completed)';
  }
}

/// @nodoc
abstract mixin class _$RegisterImpactStateCopyWith<$Res>
    implements $RegisterImpactStateCopyWith<$Res> {
  factory _$RegisterImpactStateCopyWith(_RegisterImpactState value,
          $Res Function(_RegisterImpactState) _then) =
      __$RegisterImpactStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? affectedEvent,
      String statement,
      bool showErrors,
      bool isSubmitting,
      bool completed});
}

/// @nodoc
class __$RegisterImpactStateCopyWithImpl<$Res>
    implements _$RegisterImpactStateCopyWith<$Res> {
  __$RegisterImpactStateCopyWithImpl(this._self, this._then);

  final _RegisterImpactState _self;
  final $Res Function(_RegisterImpactState) _then;

  /// Create a copy of RegisterImpactState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? affectedEvent = freezed,
    Object? statement = null,
    Object? showErrors = null,
    Object? isSubmitting = null,
    Object? completed = null,
  }) {
    return _then(_RegisterImpactState(
      affectedEvent: freezed == affectedEvent
          ? _self.affectedEvent
          : affectedEvent // ignore: cast_nullable_to_non_nullable
              as String?,
      statement: null == statement
          ? _self.statement
          : statement // ignore: cast_nullable_to_non_nullable
              as String,
      showErrors: null == showErrors
          ? _self.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _self.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      completed: null == completed
          ? _self.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
