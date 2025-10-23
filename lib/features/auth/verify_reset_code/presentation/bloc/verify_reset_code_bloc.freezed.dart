// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_reset_code_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VerifyResetCodeEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is VerifyResetCodeEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'VerifyResetCodeEvent()';
  }
}

/// @nodoc
class $VerifyResetCodeEventCopyWith<$Res> {
  $VerifyResetCodeEventCopyWith(
      VerifyResetCodeEvent _, $Res Function(VerifyResetCodeEvent) __);
}

/// Adds pattern-matching-related methods to [VerifyResetCodeEvent].
extension VerifyResetCodeEventPatterns on VerifyResetCodeEvent {
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
    TResult Function(_CodeChanged value)? codeChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_ResendPressed value)? resendPressed,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CodeChanged() when codeChanged != null:
        return codeChanged(_that);
      case _EmailChanged() when emailChanged != null:
        return emailChanged(_that);
      case _ResendPressed() when resendPressed != null:
        return resendPressed(_that);
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
    required TResult Function(_CodeChanged value) codeChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_ResendPressed value) resendPressed,
    required TResult Function(_Submitted value) submitted,
  }) {
    final _that = this;
    switch (_that) {
      case _CodeChanged():
        return codeChanged(_that);
      case _EmailChanged():
        return emailChanged(_that);
      case _ResendPressed():
        return resendPressed(_that);
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
    TResult? Function(_CodeChanged value)? codeChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_ResendPressed value)? resendPressed,
    TResult? Function(_Submitted value)? submitted,
  }) {
    final _that = this;
    switch (_that) {
      case _CodeChanged() when codeChanged != null:
        return codeChanged(_that);
      case _EmailChanged() when emailChanged != null:
        return emailChanged(_that);
      case _ResendPressed() when resendPressed != null:
        return resendPressed(_that);
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
    TResult Function(String value)? codeChanged,
    TResult Function(String value)? emailChanged,
    TResult Function()? resendPressed,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CodeChanged() when codeChanged != null:
        return codeChanged(_that.value);
      case _EmailChanged() when emailChanged != null:
        return emailChanged(_that.value);
      case _ResendPressed() when resendPressed != null:
        return resendPressed();
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
    required TResult Function(String value) codeChanged,
    required TResult Function(String value) emailChanged,
    required TResult Function() resendPressed,
    required TResult Function() submitted,
  }) {
    final _that = this;
    switch (_that) {
      case _CodeChanged():
        return codeChanged(_that.value);
      case _EmailChanged():
        return emailChanged(_that.value);
      case _ResendPressed():
        return resendPressed();
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
    TResult? Function(String value)? codeChanged,
    TResult? Function(String value)? emailChanged,
    TResult? Function()? resendPressed,
    TResult? Function()? submitted,
  }) {
    final _that = this;
    switch (_that) {
      case _CodeChanged() when codeChanged != null:
        return codeChanged(_that.value);
      case _EmailChanged() when emailChanged != null:
        return emailChanged(_that.value);
      case _ResendPressed() when resendPressed != null:
        return resendPressed();
      case _Submitted() when submitted != null:
        return submitted();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _CodeChanged implements VerifyResetCodeEvent {
  const _CodeChanged(this.value);

  final String value;

  /// Create a copy of VerifyResetCodeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CodeChangedCopyWith<_CodeChanged> get copyWith =>
      __$CodeChangedCopyWithImpl<_CodeChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CodeChanged &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'VerifyResetCodeEvent.codeChanged(value: $value)';
  }
}

/// @nodoc
abstract mixin class _$CodeChangedCopyWith<$Res>
    implements $VerifyResetCodeEventCopyWith<$Res> {
  factory _$CodeChangedCopyWith(
          _CodeChanged value, $Res Function(_CodeChanged) _then) =
      __$CodeChangedCopyWithImpl;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$CodeChangedCopyWithImpl<$Res> implements _$CodeChangedCopyWith<$Res> {
  __$CodeChangedCopyWithImpl(this._self, this._then);

  final _CodeChanged _self;
  final $Res Function(_CodeChanged) _then;

  /// Create a copy of VerifyResetCodeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(_CodeChanged(
      null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _EmailChanged implements VerifyResetCodeEvent {
  const _EmailChanged(this.value);

  final String value;

  /// Create a copy of VerifyResetCodeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      __$EmailChangedCopyWithImpl<_EmailChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EmailChanged &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'VerifyResetCodeEvent.emailChanged(value: $value)';
  }
}

/// @nodoc
abstract mixin class _$EmailChangedCopyWith<$Res>
    implements $VerifyResetCodeEventCopyWith<$Res> {
  factory _$EmailChangedCopyWith(
          _EmailChanged value, $Res Function(_EmailChanged) _then) =
      __$EmailChangedCopyWithImpl;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$EmailChangedCopyWithImpl<$Res>
    implements _$EmailChangedCopyWith<$Res> {
  __$EmailChangedCopyWithImpl(this._self, this._then);

  final _EmailChanged _self;
  final $Res Function(_EmailChanged) _then;

  /// Create a copy of VerifyResetCodeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(_EmailChanged(
      null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _ResendPressed implements VerifyResetCodeEvent {
  const _ResendPressed();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ResendPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'VerifyResetCodeEvent.resendPressed()';
  }
}

/// @nodoc

class _Submitted implements VerifyResetCodeEvent {
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
    return 'VerifyResetCodeEvent.submitted()';
  }
}

/// @nodoc
mixin _$VerifyResetCodeState {
  String get code;
  String get email;
  bool get isSubmitting;
  bool get isResending;
  bool get showErrors;
  String? get apiError;
  String? get verificationToken;
  bool? get success;

  /// Create a copy of VerifyResetCodeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VerifyResetCodeStateCopyWith<VerifyResetCodeState> get copyWith =>
      _$VerifyResetCodeStateCopyWithImpl<VerifyResetCodeState>(
          this as VerifyResetCodeState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VerifyResetCodeState &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.isResending, isResending) ||
                other.isResending == isResending) &&
            (identical(other.showErrors, showErrors) ||
                other.showErrors == showErrors) &&
            (identical(other.apiError, apiError) ||
                other.apiError == apiError) &&
            (identical(other.verificationToken, verificationToken) ||
                other.verificationToken == verificationToken) &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, email, isSubmitting,
      isResending, showErrors, apiError, verificationToken, success);

  @override
  String toString() {
    return 'VerifyResetCodeState(code: $code, email: $email, isSubmitting: $isSubmitting, isResending: $isResending, showErrors: $showErrors, apiError: $apiError, verificationToken: $verificationToken, success: $success)';
  }
}

/// @nodoc
abstract mixin class $VerifyResetCodeStateCopyWith<$Res> {
  factory $VerifyResetCodeStateCopyWith(VerifyResetCodeState value,
          $Res Function(VerifyResetCodeState) _then) =
      _$VerifyResetCodeStateCopyWithImpl;
  @useResult
  $Res call(
      {String code,
      String email,
      bool isSubmitting,
      bool isResending,
      bool showErrors,
      String? apiError,
      String? verificationToken,
      bool? success});
}

/// @nodoc
class _$VerifyResetCodeStateCopyWithImpl<$Res>
    implements $VerifyResetCodeStateCopyWith<$Res> {
  _$VerifyResetCodeStateCopyWithImpl(this._self, this._then);

  final VerifyResetCodeState _self;
  final $Res Function(VerifyResetCodeState) _then;

  /// Create a copy of VerifyResetCodeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? email = null,
    Object? isSubmitting = null,
    Object? isResending = null,
    Object? showErrors = null,
    Object? apiError = freezed,
    Object? verificationToken = freezed,
    Object? success = freezed,
  }) {
    return _then(_self.copyWith(
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: null == isSubmitting
          ? _self.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isResending: null == isResending
          ? _self.isResending
          : isResending // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrors: null == showErrors
          ? _self.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      apiError: freezed == apiError
          ? _self.apiError
          : apiError // ignore: cast_nullable_to_non_nullable
              as String?,
      verificationToken: freezed == verificationToken
          ? _self.verificationToken
          : verificationToken // ignore: cast_nullable_to_non_nullable
              as String?,
      success: freezed == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// Adds pattern-matching-related methods to [VerifyResetCodeState].
extension VerifyResetCodeStatePatterns on VerifyResetCodeState {
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
    TResult Function(_VerifyResetCodeState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VerifyResetCodeState() when $default != null:
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
    TResult Function(_VerifyResetCodeState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerifyResetCodeState():
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
    TResult? Function(_VerifyResetCodeState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerifyResetCodeState() when $default != null:
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
    TResult Function(
            String code,
            String email,
            bool isSubmitting,
            bool isResending,
            bool showErrors,
            String? apiError,
            String? verificationToken,
            bool? success)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VerifyResetCodeState() when $default != null:
        return $default(
            _that.code,
            _that.email,
            _that.isSubmitting,
            _that.isResending,
            _that.showErrors,
            _that.apiError,
            _that.verificationToken,
            _that.success);
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
    TResult Function(
            String code,
            String email,
            bool isSubmitting,
            bool isResending,
            bool showErrors,
            String? apiError,
            String? verificationToken,
            bool? success)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerifyResetCodeState():
        return $default(
            _that.code,
            _that.email,
            _that.isSubmitting,
            _that.isResending,
            _that.showErrors,
            _that.apiError,
            _that.verificationToken,
            _that.success);
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
    TResult? Function(
            String code,
            String email,
            bool isSubmitting,
            bool isResending,
            bool showErrors,
            String? apiError,
            String? verificationToken,
            bool? success)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerifyResetCodeState() when $default != null:
        return $default(
            _that.code,
            _that.email,
            _that.isSubmitting,
            _that.isResending,
            _that.showErrors,
            _that.apiError,
            _that.verificationToken,
            _that.success);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _VerifyResetCodeState implements VerifyResetCodeState {
  const _VerifyResetCodeState(
      {required this.code,
      required this.email,
      required this.isSubmitting,
      required this.isResending,
      required this.showErrors,
      this.apiError,
      this.verificationToken,
      this.success});

  @override
  final String code;
  @override
  final String email;
  @override
  final bool isSubmitting;
  @override
  final bool isResending;
  @override
  final bool showErrors;
  @override
  final String? apiError;
  @override
  final String? verificationToken;
  @override
  final bool? success;

  /// Create a copy of VerifyResetCodeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VerifyResetCodeStateCopyWith<_VerifyResetCodeState> get copyWith =>
      __$VerifyResetCodeStateCopyWithImpl<_VerifyResetCodeState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VerifyResetCodeState &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.isResending, isResending) ||
                other.isResending == isResending) &&
            (identical(other.showErrors, showErrors) ||
                other.showErrors == showErrors) &&
            (identical(other.apiError, apiError) ||
                other.apiError == apiError) &&
            (identical(other.verificationToken, verificationToken) ||
                other.verificationToken == verificationToken) &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, email, isSubmitting,
      isResending, showErrors, apiError, verificationToken, success);

  @override
  String toString() {
    return 'VerifyResetCodeState(code: $code, email: $email, isSubmitting: $isSubmitting, isResending: $isResending, showErrors: $showErrors, apiError: $apiError, verificationToken: $verificationToken, success: $success)';
  }
}

/// @nodoc
abstract mixin class _$VerifyResetCodeStateCopyWith<$Res>
    implements $VerifyResetCodeStateCopyWith<$Res> {
  factory _$VerifyResetCodeStateCopyWith(_VerifyResetCodeState value,
          $Res Function(_VerifyResetCodeState) _then) =
      __$VerifyResetCodeStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String code,
      String email,
      bool isSubmitting,
      bool isResending,
      bool showErrors,
      String? apiError,
      String? verificationToken,
      bool? success});
}

/// @nodoc
class __$VerifyResetCodeStateCopyWithImpl<$Res>
    implements _$VerifyResetCodeStateCopyWith<$Res> {
  __$VerifyResetCodeStateCopyWithImpl(this._self, this._then);

  final _VerifyResetCodeState _self;
  final $Res Function(_VerifyResetCodeState) _then;

  /// Create a copy of VerifyResetCodeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? code = null,
    Object? email = null,
    Object? isSubmitting = null,
    Object? isResending = null,
    Object? showErrors = null,
    Object? apiError = freezed,
    Object? verificationToken = freezed,
    Object? success = freezed,
  }) {
    return _then(_VerifyResetCodeState(
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: null == isSubmitting
          ? _self.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isResending: null == isResending
          ? _self.isResending
          : isResending // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrors: null == showErrors
          ? _self.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      apiError: freezed == apiError
          ? _self.apiError
          : apiError // ignore: cast_nullable_to_non_nullable
              as String?,
      verificationToken: freezed == verificationToken
          ? _self.verificationToken
          : verificationToken // ignore: cast_nullable_to_non_nullable
              as String?,
      success: freezed == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

// dart format on
