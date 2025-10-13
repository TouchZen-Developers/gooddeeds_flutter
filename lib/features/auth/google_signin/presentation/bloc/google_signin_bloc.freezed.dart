// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'google_signin_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GoogleSignInEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GoogleSignInEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GoogleSignInEvent()';
  }
}

/// @nodoc
class $GoogleSignInEventCopyWith<$Res> {
  $GoogleSignInEventCopyWith(
      GoogleSignInEvent _, $Res Function(GoogleSignInEvent) __);
}

/// Adds pattern-matching-related methods to [GoogleSignInEvent].
extension GoogleSignInEventPatterns on GoogleSignInEvent {
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
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_CheckSignInStatus value)? checkSignInStatus,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SignInWithGoogle() when signInWithGoogle != null:
        return signInWithGoogle(_that);
      case _SignOut() when signOut != null:
        return signOut(_that);
      case _CheckSignInStatus() when checkSignInStatus != null:
        return checkSignInStatus(_that);
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
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_CheckSignInStatus value) checkSignInStatus,
  }) {
    final _that = this;
    switch (_that) {
      case _SignInWithGoogle():
        return signInWithGoogle(_that);
      case _SignOut():
        return signOut(_that);
      case _CheckSignInStatus():
        return checkSignInStatus(_that);
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
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_CheckSignInStatus value)? checkSignInStatus,
  }) {
    final _that = this;
    switch (_that) {
      case _SignInWithGoogle() when signInWithGoogle != null:
        return signInWithGoogle(_that);
      case _SignOut() when signOut != null:
        return signOut(_that);
      case _CheckSignInStatus() when checkSignInStatus != null:
        return checkSignInStatus(_that);
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
    TResult Function()? signInWithGoogle,
    TResult Function()? signOut,
    TResult Function()? checkSignInStatus,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SignInWithGoogle() when signInWithGoogle != null:
        return signInWithGoogle();
      case _SignOut() when signOut != null:
        return signOut();
      case _CheckSignInStatus() when checkSignInStatus != null:
        return checkSignInStatus();
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
    required TResult Function() signInWithGoogle,
    required TResult Function() signOut,
    required TResult Function() checkSignInStatus,
  }) {
    final _that = this;
    switch (_that) {
      case _SignInWithGoogle():
        return signInWithGoogle();
      case _SignOut():
        return signOut();
      case _CheckSignInStatus():
        return checkSignInStatus();
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
    TResult? Function()? signInWithGoogle,
    TResult? Function()? signOut,
    TResult? Function()? checkSignInStatus,
  }) {
    final _that = this;
    switch (_that) {
      case _SignInWithGoogle() when signInWithGoogle != null:
        return signInWithGoogle();
      case _SignOut() when signOut != null:
        return signOut();
      case _CheckSignInStatus() when checkSignInStatus != null:
        return checkSignInStatus();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SignInWithGoogle implements GoogleSignInEvent {
  const _SignInWithGoogle();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SignInWithGoogle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GoogleSignInEvent.signInWithGoogle()';
  }
}

/// @nodoc

class _SignOut implements GoogleSignInEvent {
  const _SignOut();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SignOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GoogleSignInEvent.signOut()';
  }
}

/// @nodoc

class _CheckSignInStatus implements GoogleSignInEvent {
  const _CheckSignInStatus();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CheckSignInStatus);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GoogleSignInEvent.checkSignInStatus()';
  }
}

/// @nodoc
mixin _$GoogleSignInState {
  bool get isLoading;
  bool get isSignedIn;
  GoogleSignInAccount? get user;
  String? get error;

  /// Create a copy of GoogleSignInState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GoogleSignInStateCopyWith<GoogleSignInState> get copyWith =>
      _$GoogleSignInStateCopyWithImpl<GoogleSignInState>(
          this as GoogleSignInState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GoogleSignInState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSignedIn, isSignedIn) ||
                other.isSignedIn == isSignedIn) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, isSignedIn, user, error);

  @override
  String toString() {
    return 'GoogleSignInState(isLoading: $isLoading, isSignedIn: $isSignedIn, user: $user, error: $error)';
  }
}

/// @nodoc
abstract mixin class $GoogleSignInStateCopyWith<$Res> {
  factory $GoogleSignInStateCopyWith(
          GoogleSignInState value, $Res Function(GoogleSignInState) _then) =
      _$GoogleSignInStateCopyWithImpl;
  @useResult
  $Res call(
      {bool isLoading,
      bool isSignedIn,
      GoogleSignInAccount? user,
      String? error});
}

/// @nodoc
class _$GoogleSignInStateCopyWithImpl<$Res>
    implements $GoogleSignInStateCopyWith<$Res> {
  _$GoogleSignInStateCopyWithImpl(this._self, this._then);

  final GoogleSignInState _self;
  final $Res Function(GoogleSignInState) _then;

  /// Create a copy of GoogleSignInState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isSignedIn = null,
    Object? user = freezed,
    Object? error = freezed,
  }) {
    return _then(_self.copyWith(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSignedIn: null == isSignedIn
          ? _self.isSignedIn
          : isSignedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as GoogleSignInAccount?,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [GoogleSignInState].
extension GoogleSignInStatePatterns on GoogleSignInState {
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
    TResult Function(_GoogleSignInState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GoogleSignInState() when $default != null:
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
    TResult Function(_GoogleSignInState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GoogleSignInState():
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
    TResult? Function(_GoogleSignInState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GoogleSignInState() when $default != null:
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
    TResult Function(bool isLoading, bool isSignedIn, GoogleSignInAccount? user,
            String? error)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GoogleSignInState() when $default != null:
        return $default(
            _that.isLoading, _that.isSignedIn, _that.user, _that.error);
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
    TResult Function(bool isLoading, bool isSignedIn, GoogleSignInAccount? user,
            String? error)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GoogleSignInState():
        return $default(
            _that.isLoading, _that.isSignedIn, _that.user, _that.error);
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
    TResult? Function(bool isLoading, bool isSignedIn,
            GoogleSignInAccount? user, String? error)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GoogleSignInState() when $default != null:
        return $default(
            _that.isLoading, _that.isSignedIn, _that.user, _that.error);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _GoogleSignInState implements GoogleSignInState {
  const _GoogleSignInState(
      {required this.isLoading,
      required this.isSignedIn,
      this.user,
      this.error});

  @override
  final bool isLoading;
  @override
  final bool isSignedIn;
  @override
  final GoogleSignInAccount? user;
  @override
  final String? error;

  /// Create a copy of GoogleSignInState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GoogleSignInStateCopyWith<_GoogleSignInState> get copyWith =>
      __$GoogleSignInStateCopyWithImpl<_GoogleSignInState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GoogleSignInState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSignedIn, isSignedIn) ||
                other.isSignedIn == isSignedIn) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, isSignedIn, user, error);

  @override
  String toString() {
    return 'GoogleSignInState(isLoading: $isLoading, isSignedIn: $isSignedIn, user: $user, error: $error)';
  }
}

/// @nodoc
abstract mixin class _$GoogleSignInStateCopyWith<$Res>
    implements $GoogleSignInStateCopyWith<$Res> {
  factory _$GoogleSignInStateCopyWith(
          _GoogleSignInState value, $Res Function(_GoogleSignInState) _then) =
      __$GoogleSignInStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isSignedIn,
      GoogleSignInAccount? user,
      String? error});
}

/// @nodoc
class __$GoogleSignInStateCopyWithImpl<$Res>
    implements _$GoogleSignInStateCopyWith<$Res> {
  __$GoogleSignInStateCopyWithImpl(this._self, this._then);

  final _GoogleSignInState _self;
  final $Res Function(_GoogleSignInState) _then;

  /// Create a copy of GoogleSignInState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isLoading = null,
    Object? isSignedIn = null,
    Object? user = freezed,
    Object? error = freezed,
  }) {
    return _then(_GoogleSignInState(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSignedIn: null == isSignedIn
          ? _self.isSignedIn
          : isSignedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as GoogleSignInAccount?,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
