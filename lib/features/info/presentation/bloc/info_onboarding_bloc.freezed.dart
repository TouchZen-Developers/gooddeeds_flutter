// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'info_onboarding_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InfoOnboardingEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InfoOnboardingEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'InfoOnboardingEvent()';
  }
}

/// @nodoc
class $InfoOnboardingEventCopyWith<$Res> {
  $InfoOnboardingEventCopyWith(
      InfoOnboardingEvent _, $Res Function(InfoOnboardingEvent) __);
}

/// Adds pattern-matching-related methods to [InfoOnboardingEvent].
extension InfoOnboardingEventPatterns on InfoOnboardingEvent {
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
    TResult Function(_Started value)? started,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_NextPressed value)? nextPressed,
    TResult Function(_SkipPressed value)? skipPressed,
    TResult Function(_LoginPressed value)? loginPressed,
    TResult Function(_RegisterPressed value)? registerPressed,
    TResult Function(_Finished value)? finished,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started(_that);
      case _PageChanged() when pageChanged != null:
        return pageChanged(_that);
      case _NextPressed() when nextPressed != null:
        return nextPressed(_that);
      case _SkipPressed() when skipPressed != null:
        return skipPressed(_that);
      case _LoginPressed() when loginPressed != null:
        return loginPressed(_that);
      case _RegisterPressed() when registerPressed != null:
        return registerPressed(_that);
      case _Finished() when finished != null:
        return finished(_that);
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
    required TResult Function(_Started value) started,
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_NextPressed value) nextPressed,
    required TResult Function(_SkipPressed value) skipPressed,
    required TResult Function(_LoginPressed value) loginPressed,
    required TResult Function(_RegisterPressed value) registerPressed,
    required TResult Function(_Finished value) finished,
  }) {
    final _that = this;
    switch (_that) {
      case _Started():
        return started(_that);
      case _PageChanged():
        return pageChanged(_that);
      case _NextPressed():
        return nextPressed(_that);
      case _SkipPressed():
        return skipPressed(_that);
      case _LoginPressed():
        return loginPressed(_that);
      case _RegisterPressed():
        return registerPressed(_that);
      case _Finished():
        return finished(_that);
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
    TResult? Function(_Started value)? started,
    TResult? Function(_PageChanged value)? pageChanged,
    TResult? Function(_NextPressed value)? nextPressed,
    TResult? Function(_SkipPressed value)? skipPressed,
    TResult? Function(_LoginPressed value)? loginPressed,
    TResult? Function(_RegisterPressed value)? registerPressed,
    TResult? Function(_Finished value)? finished,
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started(_that);
      case _PageChanged() when pageChanged != null:
        return pageChanged(_that);
      case _NextPressed() when nextPressed != null:
        return nextPressed(_that);
      case _SkipPressed() when skipPressed != null:
        return skipPressed(_that);
      case _LoginPressed() when loginPressed != null:
        return loginPressed(_that);
      case _RegisterPressed() when registerPressed != null:
        return registerPressed(_that);
      case _Finished() when finished != null:
        return finished(_that);
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
    TResult Function()? started,
    TResult Function(int index)? pageChanged,
    TResult Function()? nextPressed,
    TResult Function()? skipPressed,
    TResult Function()? loginPressed,
    TResult Function()? registerPressed,
    TResult Function()? finished,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started();
      case _PageChanged() when pageChanged != null:
        return pageChanged(_that.index);
      case _NextPressed() when nextPressed != null:
        return nextPressed();
      case _SkipPressed() when skipPressed != null:
        return skipPressed();
      case _LoginPressed() when loginPressed != null:
        return loginPressed();
      case _RegisterPressed() when registerPressed != null:
        return registerPressed();
      case _Finished() when finished != null:
        return finished();
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
    required TResult Function() started,
    required TResult Function(int index) pageChanged,
    required TResult Function() nextPressed,
    required TResult Function() skipPressed,
    required TResult Function() loginPressed,
    required TResult Function() registerPressed,
    required TResult Function() finished,
  }) {
    final _that = this;
    switch (_that) {
      case _Started():
        return started();
      case _PageChanged():
        return pageChanged(_that.index);
      case _NextPressed():
        return nextPressed();
      case _SkipPressed():
        return skipPressed();
      case _LoginPressed():
        return loginPressed();
      case _RegisterPressed():
        return registerPressed();
      case _Finished():
        return finished();
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
    TResult? Function()? started,
    TResult? Function(int index)? pageChanged,
    TResult? Function()? nextPressed,
    TResult? Function()? skipPressed,
    TResult? Function()? loginPressed,
    TResult? Function()? registerPressed,
    TResult? Function()? finished,
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started();
      case _PageChanged() when pageChanged != null:
        return pageChanged(_that.index);
      case _NextPressed() when nextPressed != null:
        return nextPressed();
      case _SkipPressed() when skipPressed != null:
        return skipPressed();
      case _LoginPressed() when loginPressed != null:
        return loginPressed();
      case _RegisterPressed() when registerPressed != null:
        return registerPressed();
      case _Finished() when finished != null:
        return finished();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Started implements InfoOnboardingEvent {
  const _Started();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'InfoOnboardingEvent.started()';
  }
}

/// @nodoc

class _PageChanged implements InfoOnboardingEvent {
  const _PageChanged(this.index);

  final int index;

  /// Create a copy of InfoOnboardingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PageChangedCopyWith<_PageChanged> get copyWith =>
      __$PageChangedCopyWithImpl<_PageChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PageChanged &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @override
  String toString() {
    return 'InfoOnboardingEvent.pageChanged(index: $index)';
  }
}

/// @nodoc
abstract mixin class _$PageChangedCopyWith<$Res>
    implements $InfoOnboardingEventCopyWith<$Res> {
  factory _$PageChangedCopyWith(
          _PageChanged value, $Res Function(_PageChanged) _then) =
      __$PageChangedCopyWithImpl;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$PageChangedCopyWithImpl<$Res> implements _$PageChangedCopyWith<$Res> {
  __$PageChangedCopyWithImpl(this._self, this._then);

  final _PageChanged _self;
  final $Res Function(_PageChanged) _then;

  /// Create a copy of InfoOnboardingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? index = null,
  }) {
    return _then(_PageChanged(
      null == index
          ? _self.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _NextPressed implements InfoOnboardingEvent {
  const _NextPressed();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _NextPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'InfoOnboardingEvent.nextPressed()';
  }
}

/// @nodoc

class _SkipPressed implements InfoOnboardingEvent {
  const _SkipPressed();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SkipPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'InfoOnboardingEvent.skipPressed()';
  }
}

/// @nodoc

class _LoginPressed implements InfoOnboardingEvent {
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
    return 'InfoOnboardingEvent.loginPressed()';
  }
}

/// @nodoc

class _RegisterPressed implements InfoOnboardingEvent {
  const _RegisterPressed();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _RegisterPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'InfoOnboardingEvent.registerPressed()';
  }
}

/// @nodoc

class _Finished implements InfoOnboardingEvent {
  const _Finished();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Finished);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'InfoOnboardingEvent.finished()';
  }
}

/// @nodoc
mixin _$InfoOnboardingBlocState {
  int get pageIndex;
  int get totalPages;
  String? get navigateTo;

  /// Create a copy of InfoOnboardingBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InfoOnboardingBlocStateCopyWith<InfoOnboardingBlocState> get copyWith =>
      _$InfoOnboardingBlocStateCopyWithImpl<InfoOnboardingBlocState>(
          this as InfoOnboardingBlocState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InfoOnboardingBlocState &&
            (identical(other.pageIndex, pageIndex) ||
                other.pageIndex == pageIndex) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.navigateTo, navigateTo) ||
                other.navigateTo == navigateTo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, pageIndex, totalPages, navigateTo);

  @override
  String toString() {
    return 'InfoOnboardingBlocState(pageIndex: $pageIndex, totalPages: $totalPages, navigateTo: $navigateTo)';
  }
}

/// @nodoc
abstract mixin class $InfoOnboardingBlocStateCopyWith<$Res> {
  factory $InfoOnboardingBlocStateCopyWith(InfoOnboardingBlocState value,
          $Res Function(InfoOnboardingBlocState) _then) =
      _$InfoOnboardingBlocStateCopyWithImpl;
  @useResult
  $Res call({int pageIndex, int totalPages, String? navigateTo});
}

/// @nodoc
class _$InfoOnboardingBlocStateCopyWithImpl<$Res>
    implements $InfoOnboardingBlocStateCopyWith<$Res> {
  _$InfoOnboardingBlocStateCopyWithImpl(this._self, this._then);

  final InfoOnboardingBlocState _self;
  final $Res Function(InfoOnboardingBlocState) _then;

  /// Create a copy of InfoOnboardingBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageIndex = null,
    Object? totalPages = null,
    Object? navigateTo = freezed,
  }) {
    return _then(_self.copyWith(
      pageIndex: null == pageIndex
          ? _self.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _self.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      navigateTo: freezed == navigateTo
          ? _self.navigateTo
          : navigateTo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [InfoOnboardingBlocState].
extension InfoOnboardingBlocStatePatterns on InfoOnboardingBlocState {
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
    TResult Function(_InfoOnboardingBlocState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _InfoOnboardingBlocState() when $default != null:
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
    TResult Function(_InfoOnboardingBlocState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InfoOnboardingBlocState():
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
    TResult? Function(_InfoOnboardingBlocState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InfoOnboardingBlocState() when $default != null:
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
    TResult Function(int pageIndex, int totalPages, String? navigateTo)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _InfoOnboardingBlocState() when $default != null:
        return $default(_that.pageIndex, _that.totalPages, _that.navigateTo);
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
    TResult Function(int pageIndex, int totalPages, String? navigateTo)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InfoOnboardingBlocState():
        return $default(_that.pageIndex, _that.totalPages, _that.navigateTo);
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
    TResult? Function(int pageIndex, int totalPages, String? navigateTo)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InfoOnboardingBlocState() when $default != null:
        return $default(_that.pageIndex, _that.totalPages, _that.navigateTo);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _InfoOnboardingBlocState implements InfoOnboardingBlocState {
  const _InfoOnboardingBlocState(
      {this.pageIndex = 0, this.totalPages = kTotalPages, this.navigateTo});

  @override
  @JsonKey()
  final int pageIndex;
  @override
  @JsonKey()
  final int totalPages;
  @override
  final String? navigateTo;

  /// Create a copy of InfoOnboardingBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InfoOnboardingBlocStateCopyWith<_InfoOnboardingBlocState> get copyWith =>
      __$InfoOnboardingBlocStateCopyWithImpl<_InfoOnboardingBlocState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InfoOnboardingBlocState &&
            (identical(other.pageIndex, pageIndex) ||
                other.pageIndex == pageIndex) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.navigateTo, navigateTo) ||
                other.navigateTo == navigateTo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, pageIndex, totalPages, navigateTo);

  @override
  String toString() {
    return 'InfoOnboardingBlocState(pageIndex: $pageIndex, totalPages: $totalPages, navigateTo: $navigateTo)';
  }
}

/// @nodoc
abstract mixin class _$InfoOnboardingBlocStateCopyWith<$Res>
    implements $InfoOnboardingBlocStateCopyWith<$Res> {
  factory _$InfoOnboardingBlocStateCopyWith(_InfoOnboardingBlocState value,
          $Res Function(_InfoOnboardingBlocState) _then) =
      __$InfoOnboardingBlocStateCopyWithImpl;
  @override
  @useResult
  $Res call({int pageIndex, int totalPages, String? navigateTo});
}

/// @nodoc
class __$InfoOnboardingBlocStateCopyWithImpl<$Res>
    implements _$InfoOnboardingBlocStateCopyWith<$Res> {
  __$InfoOnboardingBlocStateCopyWithImpl(this._self, this._then);

  final _InfoOnboardingBlocState _self;
  final $Res Function(_InfoOnboardingBlocState) _then;

  /// Create a copy of InfoOnboardingBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? pageIndex = null,
    Object? totalPages = null,
    Object? navigateTo = freezed,
  }) {
    return _then(_InfoOnboardingBlocState(
      pageIndex: null == pageIndex
          ? _self.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _self.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      navigateTo: freezed == navigateTo
          ? _self.navigateTo
          : navigateTo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
