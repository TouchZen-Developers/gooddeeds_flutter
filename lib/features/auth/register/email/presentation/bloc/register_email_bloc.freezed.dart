// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_email_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegisterEmailEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RegisterEmailEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RegisterEmailEvent()';
  }
}

/// @nodoc
class $RegisterEmailEventCopyWith<$Res> {
  $RegisterEmailEventCopyWith(
      RegisterEmailEvent _, $Res Function(RegisterEmailEvent) __);
}

/// Adds pattern-matching-related methods to [RegisterEmailEvent].
extension RegisterEmailEventPatterns on RegisterEmailEvent {
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
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EmailChanged() when emailChanged != null:
        return emailChanged(_that);
      case _PasswordChanged() when passwordChanged != null:
        return passwordChanged(_that);
      case _ConfirmPasswordChanged() when confirmPasswordChanged != null:
        return confirmPasswordChanged(_that);
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
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    final _that = this;
    switch (_that) {
      case _EmailChanged():
        return emailChanged(_that);
      case _PasswordChanged():
        return passwordChanged(_that);
      case _ConfirmPasswordChanged():
        return confirmPasswordChanged(_that);
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
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_Submitted value)? submitted,
  }) {
    final _that = this;
    switch (_that) {
      case _EmailChanged() when emailChanged != null:
        return emailChanged(_that);
      case _PasswordChanged() when passwordChanged != null:
        return passwordChanged(_that);
      case _ConfirmPasswordChanged() when confirmPasswordChanged != null:
        return confirmPasswordChanged(_that);
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
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EmailChanged() when emailChanged != null:
        return emailChanged(_that.email);
      case _PasswordChanged() when passwordChanged != null:
        return passwordChanged(_that.password);
      case _ConfirmPasswordChanged() when confirmPasswordChanged != null:
        return confirmPasswordChanged(_that.confirmPassword);
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
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() submitted,
  }) {
    final _that = this;
    switch (_that) {
      case _EmailChanged():
        return emailChanged(_that.email);
      case _PasswordChanged():
        return passwordChanged(_that.password);
      case _ConfirmPasswordChanged():
        return confirmPasswordChanged(_that.confirmPassword);
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
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? submitted,
  }) {
    final _that = this;
    switch (_that) {
      case _EmailChanged() when emailChanged != null:
        return emailChanged(_that.email);
      case _PasswordChanged() when passwordChanged != null:
        return passwordChanged(_that.password);
      case _ConfirmPasswordChanged() when confirmPasswordChanged != null:
        return confirmPasswordChanged(_that.confirmPassword);
      case _Submitted() when submitted != null:
        return submitted();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _EmailChanged implements RegisterEmailEvent {
  const _EmailChanged(this.email);

  final String email;

  /// Create a copy of RegisterEmailEvent
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
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @override
  String toString() {
    return 'RegisterEmailEvent.emailChanged(email: $email)';
  }
}

/// @nodoc
abstract mixin class _$EmailChangedCopyWith<$Res>
    implements $RegisterEmailEventCopyWith<$Res> {
  factory _$EmailChangedCopyWith(
          _EmailChanged value, $Res Function(_EmailChanged) _then) =
      __$EmailChangedCopyWithImpl;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$EmailChangedCopyWithImpl<$Res>
    implements _$EmailChangedCopyWith<$Res> {
  __$EmailChangedCopyWithImpl(this._self, this._then);

  final _EmailChanged _self;
  final $Res Function(_EmailChanged) _then;

  /// Create a copy of RegisterEmailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
  }) {
    return _then(_EmailChanged(
      null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _PasswordChanged implements RegisterEmailEvent {
  const _PasswordChanged(this.password);

  final String password;

  /// Create a copy of RegisterEmailEvent
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
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @override
  String toString() {
    return 'RegisterEmailEvent.passwordChanged(password: $password)';
  }
}

/// @nodoc
abstract mixin class _$PasswordChangedCopyWith<$Res>
    implements $RegisterEmailEventCopyWith<$Res> {
  factory _$PasswordChangedCopyWith(
          _PasswordChanged value, $Res Function(_PasswordChanged) _then) =
      __$PasswordChangedCopyWithImpl;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$PasswordChangedCopyWithImpl<$Res>
    implements _$PasswordChangedCopyWith<$Res> {
  __$PasswordChangedCopyWithImpl(this._self, this._then);

  final _PasswordChanged _self;
  final $Res Function(_PasswordChanged) _then;

  /// Create a copy of RegisterEmailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? password = null,
  }) {
    return _then(_PasswordChanged(
      null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _ConfirmPasswordChanged implements RegisterEmailEvent {
  const _ConfirmPasswordChanged(this.confirmPassword);

  final String confirmPassword;

  /// Create a copy of RegisterEmailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ConfirmPasswordChangedCopyWith<_ConfirmPasswordChanged> get copyWith =>
      __$ConfirmPasswordChangedCopyWithImpl<_ConfirmPasswordChanged>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ConfirmPasswordChanged &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, confirmPassword);

  @override
  String toString() {
    return 'RegisterEmailEvent.confirmPasswordChanged(confirmPassword: $confirmPassword)';
  }
}

/// @nodoc
abstract mixin class _$ConfirmPasswordChangedCopyWith<$Res>
    implements $RegisterEmailEventCopyWith<$Res> {
  factory _$ConfirmPasswordChangedCopyWith(_ConfirmPasswordChanged value,
          $Res Function(_ConfirmPasswordChanged) _then) =
      __$ConfirmPasswordChangedCopyWithImpl;
  @useResult
  $Res call({String confirmPassword});
}

/// @nodoc
class __$ConfirmPasswordChangedCopyWithImpl<$Res>
    implements _$ConfirmPasswordChangedCopyWith<$Res> {
  __$ConfirmPasswordChangedCopyWithImpl(this._self, this._then);

  final _ConfirmPasswordChanged _self;
  final $Res Function(_ConfirmPasswordChanged) _then;

  /// Create a copy of RegisterEmailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? confirmPassword = null,
  }) {
    return _then(_ConfirmPasswordChanged(
      null == confirmPassword
          ? _self.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _Submitted implements RegisterEmailEvent {
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
    return 'RegisterEmailEvent.submitted()';
  }
}

/// @nodoc
mixin _$RegisterEmailState {
  String get email;
  String get password;
  String get confirmPassword;
  bool get isSubmitting;
  bool get showErrorMessages;

  /// Create a copy of RegisterEmailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RegisterEmailStateCopyWith<RegisterEmailState> get copyWith =>
      _$RegisterEmailStateCopyWithImpl<RegisterEmailState>(
          this as RegisterEmailState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegisterEmailState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, confirmPassword,
      isSubmitting, showErrorMessages);

  @override
  String toString() {
    return 'RegisterEmailState(email: $email, password: $password, confirmPassword: $confirmPassword, isSubmitting: $isSubmitting, showErrorMessages: $showErrorMessages)';
  }
}

/// @nodoc
abstract mixin class $RegisterEmailStateCopyWith<$Res> {
  factory $RegisterEmailStateCopyWith(
          RegisterEmailState value, $Res Function(RegisterEmailState) _then) =
      _$RegisterEmailStateCopyWithImpl;
  @useResult
  $Res call(
      {String email,
      String password,
      String confirmPassword,
      bool isSubmitting,
      bool showErrorMessages});
}

/// @nodoc
class _$RegisterEmailStateCopyWithImpl<$Res>
    implements $RegisterEmailStateCopyWith<$Res> {
  _$RegisterEmailStateCopyWithImpl(this._self, this._then);

  final RegisterEmailState _self;
  final $Res Function(RegisterEmailState) _then;

  /// Create a copy of RegisterEmailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? isSubmitting = null,
    Object? showErrorMessages = null,
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
      confirmPassword: null == confirmPassword
          ? _self.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: null == isSubmitting
          ? _self.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: null == showErrorMessages
          ? _self.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [RegisterEmailState].
extension RegisterEmailStatePatterns on RegisterEmailState {
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
    TResult Function(_RegisterEmailState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RegisterEmailState() when $default != null:
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
    TResult Function(_RegisterEmailState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RegisterEmailState():
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
    TResult? Function(_RegisterEmailState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RegisterEmailState() when $default != null:
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
    TResult Function(String email, String password, String confirmPassword,
            bool isSubmitting, bool showErrorMessages)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RegisterEmailState() when $default != null:
        return $default(_that.email, _that.password, _that.confirmPassword,
            _that.isSubmitting, _that.showErrorMessages);
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
    TResult Function(String email, String password, String confirmPassword,
            bool isSubmitting, bool showErrorMessages)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RegisterEmailState():
        return $default(_that.email, _that.password, _that.confirmPassword,
            _that.isSubmitting, _that.showErrorMessages);
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
    TResult? Function(String email, String password, String confirmPassword,
            bool isSubmitting, bool showErrorMessages)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RegisterEmailState() when $default != null:
        return $default(_that.email, _that.password, _that.confirmPassword,
            _that.isSubmitting, _that.showErrorMessages);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _RegisterEmailState implements RegisterEmailState {
  const _RegisterEmailState(
      {this.email = '',
      this.password = '',
      this.confirmPassword = '',
      this.isSubmitting = false,
      this.showErrorMessages = false});

  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final String confirmPassword;
  @override
  @JsonKey()
  final bool isSubmitting;
  @override
  @JsonKey()
  final bool showErrorMessages;

  /// Create a copy of RegisterEmailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RegisterEmailStateCopyWith<_RegisterEmailState> get copyWith =>
      __$RegisterEmailStateCopyWithImpl<_RegisterEmailState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterEmailState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, confirmPassword,
      isSubmitting, showErrorMessages);

  @override
  String toString() {
    return 'RegisterEmailState(email: $email, password: $password, confirmPassword: $confirmPassword, isSubmitting: $isSubmitting, showErrorMessages: $showErrorMessages)';
  }
}

/// @nodoc
abstract mixin class _$RegisterEmailStateCopyWith<$Res>
    implements $RegisterEmailStateCopyWith<$Res> {
  factory _$RegisterEmailStateCopyWith(
          _RegisterEmailState value, $Res Function(_RegisterEmailState) _then) =
      __$RegisterEmailStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String email,
      String password,
      String confirmPassword,
      bool isSubmitting,
      bool showErrorMessages});
}

/// @nodoc
class __$RegisterEmailStateCopyWithImpl<$Res>
    implements _$RegisterEmailStateCopyWith<$Res> {
  __$RegisterEmailStateCopyWithImpl(this._self, this._then);

  final _RegisterEmailState _self;
  final $Res Function(_RegisterEmailState) _then;

  /// Create a copy of RegisterEmailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? isSubmitting = null,
    Object? showErrorMessages = null,
  }) {
    return _then(_RegisterEmailState(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _self.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: null == isSubmitting
          ? _self.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: null == showErrorMessages
          ? _self.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
