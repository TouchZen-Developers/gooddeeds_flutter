// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginEvent()';
  }
}

/// @nodoc
class $LoginEventCopyWith<$Res> {
  $LoginEventCopyWith(LoginEvent _, $Res Function(LoginEvent) __);
}

/// Adds pattern-matching-related methods to [LoginEvent].
extension LoginEventPatterns on LoginEvent {
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
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_TogglePassword value)? togglePassword,
    TResult Function(_ClearErrors value)? clearErrors,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EmailChanged() when emailChanged != null:
        return emailChanged(_that);
      case _PasswordChanged() when passwordChanged != null:
        return passwordChanged(_that);
      case _TogglePassword() when togglePassword != null:
        return togglePassword(_that);
      case _ClearErrors() when clearErrors != null:
        return clearErrors(_that);
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
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_TogglePassword value) togglePassword,
    required TResult Function(_ClearErrors value) clearErrors,
    required TResult Function(_Submitted value) submitted,
  }) {
    final _that = this;
    switch (_that) {
      case _EmailChanged():
        return emailChanged(_that);
      case _PasswordChanged():
        return passwordChanged(_that);
      case _TogglePassword():
        return togglePassword(_that);
      case _ClearErrors():
        return clearErrors(_that);
      case _Submitted():
        return submitted(_that);
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
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_TogglePassword value)? togglePassword,
    TResult? Function(_ClearErrors value)? clearErrors,
    TResult? Function(_Submitted value)? submitted,
  }) {
    final _that = this;
    switch (_that) {
      case _EmailChanged() when emailChanged != null:
        return emailChanged(_that);
      case _PasswordChanged() when passwordChanged != null:
        return passwordChanged(_that);
      case _TogglePassword() when togglePassword != null:
        return togglePassword(_that);
      case _ClearErrors() when clearErrors != null:
        return clearErrors(_that);
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
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? togglePassword,
    TResult Function()? clearErrors,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EmailChanged() when emailChanged != null:
        return emailChanged(_that.value);
      case _PasswordChanged() when passwordChanged != null:
        return passwordChanged(_that.value);
      case _TogglePassword() when togglePassword != null:
        return togglePassword();
      case _ClearErrors() when clearErrors != null:
        return clearErrors();
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
    required TResult Function(String value) emailChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function() togglePassword,
    required TResult Function() clearErrors,
    required TResult Function() submitted,
  }) {
    final _that = this;
    switch (_that) {
      case _EmailChanged():
        return emailChanged(_that.value);
      case _PasswordChanged():
        return passwordChanged(_that.value);
      case _TogglePassword():
        return togglePassword();
      case _ClearErrors():
        return clearErrors();
      case _Submitted():
        return submitted();
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
    TResult? Function(String value)? emailChanged,
    TResult? Function(String value)? passwordChanged,
    TResult? Function()? togglePassword,
    TResult? Function()? clearErrors,
    TResult? Function()? submitted,
  }) {
    final _that = this;
    switch (_that) {
      case _EmailChanged() when emailChanged != null:
        return emailChanged(_that.value);
      case _PasswordChanged() when passwordChanged != null:
        return passwordChanged(_that.value);
      case _TogglePassword() when togglePassword != null:
        return togglePassword();
      case _ClearErrors() when clearErrors != null:
        return clearErrors();
      case _Submitted() when submitted != null:
        return submitted();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _EmailChanged implements LoginEvent {
  const _EmailChanged(this.value);

  final String value;

  /// Create a copy of LoginEvent
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
    return 'LoginEvent.emailChanged(value: $value)';
  }
}

/// @nodoc
abstract mixin class _$EmailChangedCopyWith<$Res>
    implements $LoginEventCopyWith<$Res> {
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

  /// Create a copy of LoginEvent
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

class _PasswordChanged implements LoginEvent {
  const _PasswordChanged(this.value);

  final String value;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith =>
      __$PasswordChangedCopyWithImpl<_PasswordChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PasswordChanged &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'LoginEvent.passwordChanged(value: $value)';
  }
}

/// @nodoc
abstract mixin class _$PasswordChangedCopyWith<$Res>
    implements $LoginEventCopyWith<$Res> {
  factory _$PasswordChangedCopyWith(
          _PasswordChanged value, $Res Function(_PasswordChanged) _then) =
      __$PasswordChangedCopyWithImpl;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$PasswordChangedCopyWithImpl<$Res>
    implements _$PasswordChangedCopyWith<$Res> {
  __$PasswordChangedCopyWithImpl(this._self, this._then);

  final _PasswordChanged _self;
  final $Res Function(_PasswordChanged) _then;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(_PasswordChanged(
      null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _TogglePassword implements LoginEvent {
  const _TogglePassword();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _TogglePassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginEvent.togglePassword()';
  }
}

/// @nodoc

class _ClearErrors implements LoginEvent {
  const _ClearErrors();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ClearErrors);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginEvent.clearErrors()';
  }
}

/// @nodoc

class _Submitted implements LoginEvent {
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
    return 'LoginEvent.submitted()';
  }
}

/// @nodoc
mixin _$LoginState {
  String get email;
  String get password;
  bool get showPassword;
  bool get isSubmitting;
  bool get showErrors;
  String? get emailError;
  String? get passwordError;
  bool? get success;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginStateCopyWith<LoginState> get copyWith =>
      _$LoginStateCopyWithImpl<LoginState>(this as LoginState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.showPassword, showPassword) ||
                other.showPassword == showPassword) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.showErrors, showErrors) ||
                other.showErrors == showErrors) &&
            (identical(other.emailError, emailError) ||
                other.emailError == emailError) &&
            (identical(other.passwordError, passwordError) ||
                other.passwordError == passwordError) &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, showPassword,
      isSubmitting, showErrors, emailError, passwordError, success);

  @override
  String toString() {
    return 'LoginState(email: $email, password: $password, showPassword: $showPassword, isSubmitting: $isSubmitting, showErrors: $showErrors, emailError: $emailError, passwordError: $passwordError, success: $success)';
  }
}

/// @nodoc
abstract mixin class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) _then) =
      _$LoginStateCopyWithImpl;
  @useResult
  $Res call(
      {String email,
      String password,
      bool showPassword,
      bool isSubmitting,
      bool showErrors,
      String? emailError,
      String? passwordError,
      bool? success});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._self, this._then);

  final LoginState _self;
  final $Res Function(LoginState) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? showPassword = null,
    Object? isSubmitting = null,
    Object? showErrors = null,
    Object? emailError = freezed,
    Object? passwordError = freezed,
    Object? success = freezed,
  }) {
    return _then(_self.copyWith(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      showPassword: null == showPassword
          ? _self.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _self.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrors: null == showErrors
          ? _self.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      emailError: freezed == emailError
          ? _self.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordError: freezed == passwordError
          ? _self.passwordError
          : passwordError // ignore: cast_nullable_to_non_nullable
              as String?,
      success: freezed == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// Adds pattern-matching-related methods to [LoginState].
extension LoginStatePatterns on LoginState {
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
    TResult Function(_LoginState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LoginState() when $default != null:
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
    TResult Function(_LoginState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoginState():
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
    TResult? Function(_LoginState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoginState() when $default != null:
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
            String email,
            String password,
            bool showPassword,
            bool isSubmitting,
            bool showErrors,
            String? emailError,
            String? passwordError,
            bool? success)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LoginState() when $default != null:
        return $default(
            _that.email,
            _that.password,
            _that.showPassword,
            _that.isSubmitting,
            _that.showErrors,
            _that.emailError,
            _that.passwordError,
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
            String email,
            String password,
            bool showPassword,
            bool isSubmitting,
            bool showErrors,
            String? emailError,
            String? passwordError,
            bool? success)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoginState():
        return $default(
            _that.email,
            _that.password,
            _that.showPassword,
            _that.isSubmitting,
            _that.showErrors,
            _that.emailError,
            _that.passwordError,
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
            String email,
            String password,
            bool showPassword,
            bool isSubmitting,
            bool showErrors,
            String? emailError,
            String? passwordError,
            bool? success)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoginState() when $default != null:
        return $default(
            _that.email,
            _that.password,
            _that.showPassword,
            _that.isSubmitting,
            _that.showErrors,
            _that.emailError,
            _that.passwordError,
            _that.success);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _LoginState implements LoginState {
  const _LoginState(
      {required this.email,
      required this.password,
      required this.showPassword,
      required this.isSubmitting,
      required this.showErrors,
      this.emailError,
      this.passwordError,
      this.success});

  @override
  final String email;
  @override
  final String password;
  @override
  final bool showPassword;
  @override
  final bool isSubmitting;
  @override
  final bool showErrors;
  @override
  final String? emailError;
  @override
  final String? passwordError;
  @override
  final bool? success;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.showPassword, showPassword) ||
                other.showPassword == showPassword) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.showErrors, showErrors) ||
                other.showErrors == showErrors) &&
            (identical(other.emailError, emailError) ||
                other.emailError == emailError) &&
            (identical(other.passwordError, passwordError) ||
                other.passwordError == passwordError) &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, showPassword,
      isSubmitting, showErrors, emailError, passwordError, success);

  @override
  String toString() {
    return 'LoginState(email: $email, password: $password, showPassword: $showPassword, isSubmitting: $isSubmitting, showErrors: $showErrors, emailError: $emailError, passwordError: $passwordError, success: $success)';
  }
}

/// @nodoc
abstract mixin class _$LoginStateCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(
          _LoginState value, $Res Function(_LoginState) _then) =
      __$LoginStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String email,
      String password,
      bool showPassword,
      bool isSubmitting,
      bool showErrors,
      String? emailError,
      String? passwordError,
      bool? success});
}

/// @nodoc
class __$LoginStateCopyWithImpl<$Res> implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(this._self, this._then);

  final _LoginState _self;
  final $Res Function(_LoginState) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? showPassword = null,
    Object? isSubmitting = null,
    Object? showErrors = null,
    Object? emailError = freezed,
    Object? passwordError = freezed,
    Object? success = freezed,
  }) {
    return _then(_LoginState(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      showPassword: null == showPassword
          ? _self.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _self.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrors: null == showErrors
          ? _self.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      emailError: freezed == emailError
          ? _self.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordError: freezed == passwordError
          ? _self.passwordError
          : passwordError // ignore: cast_nullable_to_non_nullable
              as String?,
      success: freezed == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

// dart format on
