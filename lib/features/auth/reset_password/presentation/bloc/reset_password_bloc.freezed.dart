// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reset_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResetPasswordEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ResetPasswordEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ResetPasswordEvent()';
  }
}

/// @nodoc
class $ResetPasswordEventCopyWith<$Res> {
  $ResetPasswordEventCopyWith(
      ResetPasswordEvent _, $Res Function(ResetPasswordEvent) __);
}

/// Adds pattern-matching-related methods to [ResetPasswordEvent].
extension ResetPasswordEventPatterns on ResetPasswordEvent {
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
    TResult Function(_NewPasswordChanged value)? newPasswordChanged,
    TResult Function(_ConfirmChanged value)? confirmChanged,
    TResult Function(_VerificationTokenChanged value)? verificationTokenChanged,
    TResult Function(_MarkShowErrors value)? markShowErrors,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NewPasswordChanged() when newPasswordChanged != null:
        return newPasswordChanged(_that);
      case _ConfirmChanged() when confirmChanged != null:
        return confirmChanged(_that);
      case _VerificationTokenChanged() when verificationTokenChanged != null:
        return verificationTokenChanged(_that);
      case _MarkShowErrors() when markShowErrors != null:
        return markShowErrors(_that);
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
    required TResult Function(_NewPasswordChanged value) newPasswordChanged,
    required TResult Function(_ConfirmChanged value) confirmChanged,
    required TResult Function(_VerificationTokenChanged value)
        verificationTokenChanged,
    required TResult Function(_MarkShowErrors value) markShowErrors,
    required TResult Function(_Submitted value) submitted,
  }) {
    final _that = this;
    switch (_that) {
      case _NewPasswordChanged():
        return newPasswordChanged(_that);
      case _ConfirmChanged():
        return confirmChanged(_that);
      case _VerificationTokenChanged():
        return verificationTokenChanged(_that);
      case _MarkShowErrors():
        return markShowErrors(_that);
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
    TResult? Function(_NewPasswordChanged value)? newPasswordChanged,
    TResult? Function(_ConfirmChanged value)? confirmChanged,
    TResult? Function(_VerificationTokenChanged value)?
        verificationTokenChanged,
    TResult? Function(_MarkShowErrors value)? markShowErrors,
    TResult? Function(_Submitted value)? submitted,
  }) {
    final _that = this;
    switch (_that) {
      case _NewPasswordChanged() when newPasswordChanged != null:
        return newPasswordChanged(_that);
      case _ConfirmChanged() when confirmChanged != null:
        return confirmChanged(_that);
      case _VerificationTokenChanged() when verificationTokenChanged != null:
        return verificationTokenChanged(_that);
      case _MarkShowErrors() when markShowErrors != null:
        return markShowErrors(_that);
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
    TResult Function(String value)? newPasswordChanged,
    TResult Function(String value)? confirmChanged,
    TResult Function(String value)? verificationTokenChanged,
    TResult Function()? markShowErrors,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NewPasswordChanged() when newPasswordChanged != null:
        return newPasswordChanged(_that.value);
      case _ConfirmChanged() when confirmChanged != null:
        return confirmChanged(_that.value);
      case _VerificationTokenChanged() when verificationTokenChanged != null:
        return verificationTokenChanged(_that.value);
      case _MarkShowErrors() when markShowErrors != null:
        return markShowErrors();
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
    required TResult Function(String value) newPasswordChanged,
    required TResult Function(String value) confirmChanged,
    required TResult Function(String value) verificationTokenChanged,
    required TResult Function() markShowErrors,
    required TResult Function() submitted,
  }) {
    final _that = this;
    switch (_that) {
      case _NewPasswordChanged():
        return newPasswordChanged(_that.value);
      case _ConfirmChanged():
        return confirmChanged(_that.value);
      case _VerificationTokenChanged():
        return verificationTokenChanged(_that.value);
      case _MarkShowErrors():
        return markShowErrors();
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
    TResult? Function(String value)? newPasswordChanged,
    TResult? Function(String value)? confirmChanged,
    TResult? Function(String value)? verificationTokenChanged,
    TResult? Function()? markShowErrors,
    TResult? Function()? submitted,
  }) {
    final _that = this;
    switch (_that) {
      case _NewPasswordChanged() when newPasswordChanged != null:
        return newPasswordChanged(_that.value);
      case _ConfirmChanged() when confirmChanged != null:
        return confirmChanged(_that.value);
      case _VerificationTokenChanged() when verificationTokenChanged != null:
        return verificationTokenChanged(_that.value);
      case _MarkShowErrors() when markShowErrors != null:
        return markShowErrors();
      case _Submitted() when submitted != null:
        return submitted();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _NewPasswordChanged implements ResetPasswordEvent {
  const _NewPasswordChanged(this.value);

  final String value;

  /// Create a copy of ResetPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NewPasswordChangedCopyWith<_NewPasswordChanged> get copyWith =>
      __$NewPasswordChangedCopyWithImpl<_NewPasswordChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NewPasswordChanged &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'ResetPasswordEvent.newPasswordChanged(value: $value)';
  }
}

/// @nodoc
abstract mixin class _$NewPasswordChangedCopyWith<$Res>
    implements $ResetPasswordEventCopyWith<$Res> {
  factory _$NewPasswordChangedCopyWith(
          _NewPasswordChanged value, $Res Function(_NewPasswordChanged) _then) =
      __$NewPasswordChangedCopyWithImpl;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$NewPasswordChangedCopyWithImpl<$Res>
    implements _$NewPasswordChangedCopyWith<$Res> {
  __$NewPasswordChangedCopyWithImpl(this._self, this._then);

  final _NewPasswordChanged _self;
  final $Res Function(_NewPasswordChanged) _then;

  /// Create a copy of ResetPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(_NewPasswordChanged(
      null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _ConfirmChanged implements ResetPasswordEvent {
  const _ConfirmChanged(this.value);

  final String value;

  /// Create a copy of ResetPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ConfirmChangedCopyWith<_ConfirmChanged> get copyWith =>
      __$ConfirmChangedCopyWithImpl<_ConfirmChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ConfirmChanged &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'ResetPasswordEvent.confirmChanged(value: $value)';
  }
}

/// @nodoc
abstract mixin class _$ConfirmChangedCopyWith<$Res>
    implements $ResetPasswordEventCopyWith<$Res> {
  factory _$ConfirmChangedCopyWith(
          _ConfirmChanged value, $Res Function(_ConfirmChanged) _then) =
      __$ConfirmChangedCopyWithImpl;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$ConfirmChangedCopyWithImpl<$Res>
    implements _$ConfirmChangedCopyWith<$Res> {
  __$ConfirmChangedCopyWithImpl(this._self, this._then);

  final _ConfirmChanged _self;
  final $Res Function(_ConfirmChanged) _then;

  /// Create a copy of ResetPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(_ConfirmChanged(
      null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _VerificationTokenChanged implements ResetPasswordEvent {
  const _VerificationTokenChanged(this.value);

  final String value;

  /// Create a copy of ResetPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VerificationTokenChangedCopyWith<_VerificationTokenChanged> get copyWith =>
      __$VerificationTokenChangedCopyWithImpl<_VerificationTokenChanged>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VerificationTokenChanged &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'ResetPasswordEvent.verificationTokenChanged(value: $value)';
  }
}

/// @nodoc
abstract mixin class _$VerificationTokenChangedCopyWith<$Res>
    implements $ResetPasswordEventCopyWith<$Res> {
  factory _$VerificationTokenChangedCopyWith(_VerificationTokenChanged value,
          $Res Function(_VerificationTokenChanged) _then) =
      __$VerificationTokenChangedCopyWithImpl;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$VerificationTokenChangedCopyWithImpl<$Res>
    implements _$VerificationTokenChangedCopyWith<$Res> {
  __$VerificationTokenChangedCopyWithImpl(this._self, this._then);

  final _VerificationTokenChanged _self;
  final $Res Function(_VerificationTokenChanged) _then;

  /// Create a copy of ResetPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(_VerificationTokenChanged(
      null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _MarkShowErrors implements ResetPasswordEvent {
  const _MarkShowErrors();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _MarkShowErrors);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ResetPasswordEvent.markShowErrors()';
  }
}

/// @nodoc

class _Submitted implements ResetPasswordEvent {
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
    return 'ResetPasswordEvent.submitted()';
  }
}

/// @nodoc
mixin _$ResetPasswordState {
  String get newPassword;
  String get confirmPassword;
  String get verificationToken;
  bool get isSubmitting;
  bool get showErrors;
  String? get apiError;
  bool? get success;

  /// Create a copy of ResetPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResetPasswordStateCopyWith<ResetPasswordState> get copyWith =>
      _$ResetPasswordStateCopyWithImpl<ResetPasswordState>(
          this as ResetPasswordState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResetPasswordState &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.verificationToken, verificationToken) ||
                other.verificationToken == verificationToken) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.showErrors, showErrors) ||
                other.showErrors == showErrors) &&
            (identical(other.apiError, apiError) ||
                other.apiError == apiError) &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newPassword, confirmPassword,
      verificationToken, isSubmitting, showErrors, apiError, success);

  @override
  String toString() {
    return 'ResetPasswordState(newPassword: $newPassword, confirmPassword: $confirmPassword, verificationToken: $verificationToken, isSubmitting: $isSubmitting, showErrors: $showErrors, apiError: $apiError, success: $success)';
  }
}

/// @nodoc
abstract mixin class $ResetPasswordStateCopyWith<$Res> {
  factory $ResetPasswordStateCopyWith(
          ResetPasswordState value, $Res Function(ResetPasswordState) _then) =
      _$ResetPasswordStateCopyWithImpl;
  @useResult
  $Res call(
      {String newPassword,
      String confirmPassword,
      String verificationToken,
      bool isSubmitting,
      bool showErrors,
      String? apiError,
      bool? success});
}

/// @nodoc
class _$ResetPasswordStateCopyWithImpl<$Res>
    implements $ResetPasswordStateCopyWith<$Res> {
  _$ResetPasswordStateCopyWithImpl(this._self, this._then);

  final ResetPasswordState _self;
  final $Res Function(ResetPasswordState) _then;

  /// Create a copy of ResetPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newPassword = null,
    Object? confirmPassword = null,
    Object? verificationToken = null,
    Object? isSubmitting = null,
    Object? showErrors = null,
    Object? apiError = freezed,
    Object? success = freezed,
  }) {
    return _then(_self.copyWith(
      newPassword: null == newPassword
          ? _self.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _self.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      verificationToken: null == verificationToken
          ? _self.verificationToken
          : verificationToken // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: null == isSubmitting
          ? _self.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrors: null == showErrors
          ? _self.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      apiError: freezed == apiError
          ? _self.apiError
          : apiError // ignore: cast_nullable_to_non_nullable
              as String?,
      success: freezed == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ResetPasswordState].
extension ResetPasswordStatePatterns on ResetPasswordState {
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
    TResult Function(_ResetPasswordState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ResetPasswordState() when $default != null:
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
    TResult Function(_ResetPasswordState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResetPasswordState():
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
    TResult? Function(_ResetPasswordState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResetPasswordState() when $default != null:
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
            String newPassword,
            String confirmPassword,
            String verificationToken,
            bool isSubmitting,
            bool showErrors,
            String? apiError,
            bool? success)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ResetPasswordState() when $default != null:
        return $default(
            _that.newPassword,
            _that.confirmPassword,
            _that.verificationToken,
            _that.isSubmitting,
            _that.showErrors,
            _that.apiError,
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
            String newPassword,
            String confirmPassword,
            String verificationToken,
            bool isSubmitting,
            bool showErrors,
            String? apiError,
            bool? success)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResetPasswordState():
        return $default(
            _that.newPassword,
            _that.confirmPassword,
            _that.verificationToken,
            _that.isSubmitting,
            _that.showErrors,
            _that.apiError,
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
            String newPassword,
            String confirmPassword,
            String verificationToken,
            bool isSubmitting,
            bool showErrors,
            String? apiError,
            bool? success)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResetPasswordState() when $default != null:
        return $default(
            _that.newPassword,
            _that.confirmPassword,
            _that.verificationToken,
            _that.isSubmitting,
            _that.showErrors,
            _that.apiError,
            _that.success);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ResetPasswordState implements ResetPasswordState {
  const _ResetPasswordState(
      {required this.newPassword,
      required this.confirmPassword,
      required this.verificationToken,
      required this.isSubmitting,
      required this.showErrors,
      this.apiError,
      this.success});

  @override
  final String newPassword;
  @override
  final String confirmPassword;
  @override
  final String verificationToken;
  @override
  final bool isSubmitting;
  @override
  final bool showErrors;
  @override
  final String? apiError;
  @override
  final bool? success;

  /// Create a copy of ResetPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ResetPasswordStateCopyWith<_ResetPasswordState> get copyWith =>
      __$ResetPasswordStateCopyWithImpl<_ResetPasswordState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResetPasswordState &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.verificationToken, verificationToken) ||
                other.verificationToken == verificationToken) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.showErrors, showErrors) ||
                other.showErrors == showErrors) &&
            (identical(other.apiError, apiError) ||
                other.apiError == apiError) &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newPassword, confirmPassword,
      verificationToken, isSubmitting, showErrors, apiError, success);

  @override
  String toString() {
    return 'ResetPasswordState(newPassword: $newPassword, confirmPassword: $confirmPassword, verificationToken: $verificationToken, isSubmitting: $isSubmitting, showErrors: $showErrors, apiError: $apiError, success: $success)';
  }
}

/// @nodoc
abstract mixin class _$ResetPasswordStateCopyWith<$Res>
    implements $ResetPasswordStateCopyWith<$Res> {
  factory _$ResetPasswordStateCopyWith(
          _ResetPasswordState value, $Res Function(_ResetPasswordState) _then) =
      __$ResetPasswordStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String newPassword,
      String confirmPassword,
      String verificationToken,
      bool isSubmitting,
      bool showErrors,
      String? apiError,
      bool? success});
}

/// @nodoc
class __$ResetPasswordStateCopyWithImpl<$Res>
    implements _$ResetPasswordStateCopyWith<$Res> {
  __$ResetPasswordStateCopyWithImpl(this._self, this._then);

  final _ResetPasswordState _self;
  final $Res Function(_ResetPasswordState) _then;

  /// Create a copy of ResetPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? newPassword = null,
    Object? confirmPassword = null,
    Object? verificationToken = null,
    Object? isSubmitting = null,
    Object? showErrors = null,
    Object? apiError = freezed,
    Object? success = freezed,
  }) {
    return _then(_ResetPasswordState(
      newPassword: null == newPassword
          ? _self.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _self.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      verificationToken: null == verificationToken
          ? _self.verificationToken
          : verificationToken // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: null == isSubmitting
          ? _self.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrors: null == showErrors
          ? _self.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      apiError: freezed == apiError
          ? _self.apiError
          : apiError // ignore: cast_nullable_to_non_nullable
              as String?,
      success: freezed == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

// dart format on
