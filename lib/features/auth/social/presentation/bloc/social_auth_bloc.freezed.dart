// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'social_auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SocialAuthEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SocialAuthEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SocialAuthEvent()';
  }
}

/// @nodoc
class $SocialAuthEventCopyWith<$Res> {
  $SocialAuthEventCopyWith(
      SocialAuthEvent _, $Res Function(SocialAuthEvent) __);
}

/// Adds pattern-matching-related methods to [SocialAuthEvent].
extension SocialAuthEventPatterns on SocialAuthEvent {
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
    TResult Function(_InitiateGoogleAuth value)? initiateGoogleAuth,
    TResult Function(_HandleCallback value)? handleCallback,
    TResult Function(_CompleteProfile value)? completeProfile,
    TResult Function(_ResetState value)? resetState,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _InitiateGoogleAuth() when initiateGoogleAuth != null:
        return initiateGoogleAuth(_that);
      case _HandleCallback() when handleCallback != null:
        return handleCallback(_that);
      case _CompleteProfile() when completeProfile != null:
        return completeProfile(_that);
      case _ResetState() when resetState != null:
        return resetState(_that);
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
    required TResult Function(_InitiateGoogleAuth value) initiateGoogleAuth,
    required TResult Function(_HandleCallback value) handleCallback,
    required TResult Function(_CompleteProfile value) completeProfile,
    required TResult Function(_ResetState value) resetState,
  }) {
    final _that = this;
    switch (_that) {
      case _InitiateGoogleAuth():
        return initiateGoogleAuth(_that);
      case _HandleCallback():
        return handleCallback(_that);
      case _CompleteProfile():
        return completeProfile(_that);
      case _ResetState():
        return resetState(_that);
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
    TResult? Function(_InitiateGoogleAuth value)? initiateGoogleAuth,
    TResult? Function(_HandleCallback value)? handleCallback,
    TResult? Function(_CompleteProfile value)? completeProfile,
    TResult? Function(_ResetState value)? resetState,
  }) {
    final _that = this;
    switch (_that) {
      case _InitiateGoogleAuth() when initiateGoogleAuth != null:
        return initiateGoogleAuth(_that);
      case _HandleCallback() when handleCallback != null:
        return handleCallback(_that);
      case _CompleteProfile() when completeProfile != null:
        return completeProfile(_that);
      case _ResetState() when resetState != null:
        return resetState(_that);
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
    TResult Function()? initiateGoogleAuth,
    TResult Function(String token, String nextStep, Map<String, dynamic>? user)?
        handleCallback,
    TResult Function(CompleteProfileRequestEntity profileData)? completeProfile,
    TResult Function()? resetState,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _InitiateGoogleAuth() when initiateGoogleAuth != null:
        return initiateGoogleAuth();
      case _HandleCallback() when handleCallback != null:
        return handleCallback(_that.token, _that.nextStep, _that.user);
      case _CompleteProfile() when completeProfile != null:
        return completeProfile(_that.profileData);
      case _ResetState() when resetState != null:
        return resetState();
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
    required TResult Function() initiateGoogleAuth,
    required TResult Function(
            String token, String nextStep, Map<String, dynamic>? user)
        handleCallback,
    required TResult Function(CompleteProfileRequestEntity profileData)
        completeProfile,
    required TResult Function() resetState,
  }) {
    final _that = this;
    switch (_that) {
      case _InitiateGoogleAuth():
        return initiateGoogleAuth();
      case _HandleCallback():
        return handleCallback(_that.token, _that.nextStep, _that.user);
      case _CompleteProfile():
        return completeProfile(_that.profileData);
      case _ResetState():
        return resetState();
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
    TResult? Function()? initiateGoogleAuth,
    TResult? Function(
            String token, String nextStep, Map<String, dynamic>? user)?
        handleCallback,
    TResult? Function(CompleteProfileRequestEntity profileData)?
        completeProfile,
    TResult? Function()? resetState,
  }) {
    final _that = this;
    switch (_that) {
      case _InitiateGoogleAuth() when initiateGoogleAuth != null:
        return initiateGoogleAuth();
      case _HandleCallback() when handleCallback != null:
        return handleCallback(_that.token, _that.nextStep, _that.user);
      case _CompleteProfile() when completeProfile != null:
        return completeProfile(_that.profileData);
      case _ResetState() when resetState != null:
        return resetState();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _InitiateGoogleAuth implements SocialAuthEvent {
  const _InitiateGoogleAuth();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _InitiateGoogleAuth);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SocialAuthEvent.initiateGoogleAuth()';
  }
}

/// @nodoc

class _HandleCallback implements SocialAuthEvent {
  const _HandleCallback(
      {required this.token,
      required this.nextStep,
      final Map<String, dynamic>? user})
      : _user = user;

  final String token;
  final String nextStep;
  final Map<String, dynamic>? _user;
  Map<String, dynamic>? get user {
    final value = _user;
    if (value == null) return null;
    if (_user is EqualUnmodifiableMapView) return _user;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of SocialAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HandleCallbackCopyWith<_HandleCallback> get copyWith =>
      __$HandleCallbackCopyWithImpl<_HandleCallback>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HandleCallback &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.nextStep, nextStep) ||
                other.nextStep == nextStep) &&
            const DeepCollectionEquality().equals(other._user, _user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, token, nextStep, const DeepCollectionEquality().hash(_user));

  @override
  String toString() {
    return 'SocialAuthEvent.handleCallback(token: $token, nextStep: $nextStep, user: $user)';
  }
}

/// @nodoc
abstract mixin class _$HandleCallbackCopyWith<$Res>
    implements $SocialAuthEventCopyWith<$Res> {
  factory _$HandleCallbackCopyWith(
          _HandleCallback value, $Res Function(_HandleCallback) _then) =
      __$HandleCallbackCopyWithImpl;
  @useResult
  $Res call({String token, String nextStep, Map<String, dynamic>? user});
}

/// @nodoc
class __$HandleCallbackCopyWithImpl<$Res>
    implements _$HandleCallbackCopyWith<$Res> {
  __$HandleCallbackCopyWithImpl(this._self, this._then);

  final _HandleCallback _self;
  final $Res Function(_HandleCallback) _then;

  /// Create a copy of SocialAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? token = null,
    Object? nextStep = null,
    Object? user = freezed,
  }) {
    return _then(_HandleCallback(
      token: null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      nextStep: null == nextStep
          ? _self.nextStep
          : nextStep // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _self._user
          : user // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc

class _CompleteProfile implements SocialAuthEvent {
  const _CompleteProfile({required this.profileData});

  final CompleteProfileRequestEntity profileData;

  /// Create a copy of SocialAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CompleteProfileCopyWith<_CompleteProfile> get copyWith =>
      __$CompleteProfileCopyWithImpl<_CompleteProfile>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CompleteProfile &&
            (identical(other.profileData, profileData) ||
                other.profileData == profileData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profileData);

  @override
  String toString() {
    return 'SocialAuthEvent.completeProfile(profileData: $profileData)';
  }
}

/// @nodoc
abstract mixin class _$CompleteProfileCopyWith<$Res>
    implements $SocialAuthEventCopyWith<$Res> {
  factory _$CompleteProfileCopyWith(
          _CompleteProfile value, $Res Function(_CompleteProfile) _then) =
      __$CompleteProfileCopyWithImpl;
  @useResult
  $Res call({CompleteProfileRequestEntity profileData});

  $CompleteProfileRequestEntityCopyWith<$Res> get profileData;
}

/// @nodoc
class __$CompleteProfileCopyWithImpl<$Res>
    implements _$CompleteProfileCopyWith<$Res> {
  __$CompleteProfileCopyWithImpl(this._self, this._then);

  final _CompleteProfile _self;
  final $Res Function(_CompleteProfile) _then;

  /// Create a copy of SocialAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? profileData = null,
  }) {
    return _then(_CompleteProfile(
      profileData: null == profileData
          ? _self.profileData
          : profileData // ignore: cast_nullable_to_non_nullable
              as CompleteProfileRequestEntity,
    ));
  }

  /// Create a copy of SocialAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CompleteProfileRequestEntityCopyWith<$Res> get profileData {
    return $CompleteProfileRequestEntityCopyWith<$Res>(_self.profileData,
        (value) {
      return _then(_self.copyWith(profileData: value));
    });
  }
}

/// @nodoc

class _ResetState implements SocialAuthEvent {
  const _ResetState();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ResetState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SocialAuthEvent.resetState()';
  }
}

/// @nodoc
mixin _$SocialAuthState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SocialAuthState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SocialAuthState()';
  }
}

/// @nodoc
class $SocialAuthStateCopyWith<$Res> {
  $SocialAuthStateCopyWith(
      SocialAuthState _, $Res Function(SocialAuthState) __);
}

/// Adds pattern-matching-related methods to [SocialAuthState].
extension SocialAuthStatePatterns on SocialAuthState {
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
    TResult Function(_Initial value)? initial,
    TResult Function(_AwaitingCallback value)? awaitingCallback,
    TResult Function(_Loading value)? loading,
    TResult Function(_NeedsProfileCompletion value)? needsProfileCompletion,
    TResult Function(_NeedsRoleBasedNavigation value)? needsRoleBasedNavigation,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case _AwaitingCallback() when awaitingCallback != null:
        return awaitingCallback(_that);
      case _Loading() when loading != null:
        return loading(_that);
      case _NeedsProfileCompletion() when needsProfileCompletion != null:
        return needsProfileCompletion(_that);
      case _NeedsRoleBasedNavigation() when needsRoleBasedNavigation != null:
        return needsRoleBasedNavigation(_that);
      case _Success() when success != null:
        return success(_that);
      case _Failure() when failure != null:
        return failure(_that);
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_AwaitingCallback value) awaitingCallback,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NeedsProfileCompletion value)
        needsProfileCompletion,
    required TResult Function(_NeedsRoleBasedNavigation value)
        needsRoleBasedNavigation,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial(_that);
      case _AwaitingCallback():
        return awaitingCallback(_that);
      case _Loading():
        return loading(_that);
      case _NeedsProfileCompletion():
        return needsProfileCompletion(_that);
      case _NeedsRoleBasedNavigation():
        return needsRoleBasedNavigation(_that);
      case _Success():
        return success(_that);
      case _Failure():
        return failure(_that);
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
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AwaitingCallback value)? awaitingCallback,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NeedsProfileCompletion value)? needsProfileCompletion,
    TResult? Function(_NeedsRoleBasedNavigation value)?
        needsRoleBasedNavigation,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case _AwaitingCallback() when awaitingCallback != null:
        return awaitingCallback(_that);
      case _Loading() when loading != null:
        return loading(_that);
      case _NeedsProfileCompletion() when needsProfileCompletion != null:
        return needsProfileCompletion(_that);
      case _NeedsRoleBasedNavigation() when needsRoleBasedNavigation != null:
        return needsRoleBasedNavigation(_that);
      case _Success() when success != null:
        return success(_that);
      case _Failure() when failure != null:
        return failure(_that);
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
    TResult Function()? initial,
    TResult Function()? awaitingCallback,
    TResult Function()? loading,
    TResult Function(Map<String, dynamic>? user)? needsProfileCompletion,
    TResult Function(String role)? needsRoleBasedNavigation,
    TResult Function()? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case _AwaitingCallback() when awaitingCallback != null:
        return awaitingCallback();
      case _Loading() when loading != null:
        return loading();
      case _NeedsProfileCompletion() when needsProfileCompletion != null:
        return needsProfileCompletion(_that.user);
      case _NeedsRoleBasedNavigation() when needsRoleBasedNavigation != null:
        return needsRoleBasedNavigation(_that.role);
      case _Success() when success != null:
        return success();
      case _Failure() when failure != null:
        return failure(_that.message);
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
    required TResult Function() initial,
    required TResult Function() awaitingCallback,
    required TResult Function() loading,
    required TResult Function(Map<String, dynamic>? user)
        needsProfileCompletion,
    required TResult Function(String role) needsRoleBasedNavigation,
    required TResult Function() success,
    required TResult Function(String message) failure,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial();
      case _AwaitingCallback():
        return awaitingCallback();
      case _Loading():
        return loading();
      case _NeedsProfileCompletion():
        return needsProfileCompletion(_that.user);
      case _NeedsRoleBasedNavigation():
        return needsRoleBasedNavigation(_that.role);
      case _Success():
        return success();
      case _Failure():
        return failure(_that.message);
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
    TResult? Function()? initial,
    TResult? Function()? awaitingCallback,
    TResult? Function()? loading,
    TResult? Function(Map<String, dynamic>? user)? needsProfileCompletion,
    TResult? Function(String role)? needsRoleBasedNavigation,
    TResult? Function()? success,
    TResult? Function(String message)? failure,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case _AwaitingCallback() when awaitingCallback != null:
        return awaitingCallback();
      case _Loading() when loading != null:
        return loading();
      case _NeedsProfileCompletion() when needsProfileCompletion != null:
        return needsProfileCompletion(_that.user);
      case _NeedsRoleBasedNavigation() when needsRoleBasedNavigation != null:
        return needsRoleBasedNavigation(_that.role);
      case _Success() when success != null:
        return success();
      case _Failure() when failure != null:
        return failure(_that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initial implements SocialAuthState {
  const _Initial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SocialAuthState.initial()';
  }
}

/// @nodoc

class _AwaitingCallback implements SocialAuthState {
  const _AwaitingCallback();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AwaitingCallback);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SocialAuthState.awaitingCallback()';
  }
}

/// @nodoc

class _Loading implements SocialAuthState {
  const _Loading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SocialAuthState.loading()';
  }
}

/// @nodoc

class _NeedsProfileCompletion implements SocialAuthState {
  const _NeedsProfileCompletion({final Map<String, dynamic>? user})
      : _user = user;

  final Map<String, dynamic>? _user;
  Map<String, dynamic>? get user {
    final value = _user;
    if (value == null) return null;
    if (_user is EqualUnmodifiableMapView) return _user;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of SocialAuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NeedsProfileCompletionCopyWith<_NeedsProfileCompletion> get copyWith =>
      __$NeedsProfileCompletionCopyWithImpl<_NeedsProfileCompletion>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NeedsProfileCompletion &&
            const DeepCollectionEquality().equals(other._user, _user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_user));

  @override
  String toString() {
    return 'SocialAuthState.needsProfileCompletion(user: $user)';
  }
}

/// @nodoc
abstract mixin class _$NeedsProfileCompletionCopyWith<$Res>
    implements $SocialAuthStateCopyWith<$Res> {
  factory _$NeedsProfileCompletionCopyWith(_NeedsProfileCompletion value,
          $Res Function(_NeedsProfileCompletion) _then) =
      __$NeedsProfileCompletionCopyWithImpl;
  @useResult
  $Res call({Map<String, dynamic>? user});
}

/// @nodoc
class __$NeedsProfileCompletionCopyWithImpl<$Res>
    implements _$NeedsProfileCompletionCopyWith<$Res> {
  __$NeedsProfileCompletionCopyWithImpl(this._self, this._then);

  final _NeedsProfileCompletion _self;
  final $Res Function(_NeedsProfileCompletion) _then;

  /// Create a copy of SocialAuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_NeedsProfileCompletion(
      user: freezed == user
          ? _self._user
          : user // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc

class _NeedsRoleBasedNavigation implements SocialAuthState {
  const _NeedsRoleBasedNavigation({required this.role});

  final String role;

  /// Create a copy of SocialAuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NeedsRoleBasedNavigationCopyWith<_NeedsRoleBasedNavigation> get copyWith =>
      __$NeedsRoleBasedNavigationCopyWithImpl<_NeedsRoleBasedNavigation>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NeedsRoleBasedNavigation &&
            (identical(other.role, role) || other.role == role));
  }

  @override
  int get hashCode => Object.hash(runtimeType, role);

  @override
  String toString() {
    return 'SocialAuthState.needsRoleBasedNavigation(role: $role)';
  }
}

/// @nodoc
abstract mixin class _$NeedsRoleBasedNavigationCopyWith<$Res>
    implements $SocialAuthStateCopyWith<$Res> {
  factory _$NeedsRoleBasedNavigationCopyWith(_NeedsRoleBasedNavigation value,
          $Res Function(_NeedsRoleBasedNavigation) _then) =
      __$NeedsRoleBasedNavigationCopyWithImpl;
  @useResult
  $Res call({String role});
}

/// @nodoc
class __$NeedsRoleBasedNavigationCopyWithImpl<$Res>
    implements _$NeedsRoleBasedNavigationCopyWith<$Res> {
  __$NeedsRoleBasedNavigationCopyWithImpl(this._self, this._then);

  final _NeedsRoleBasedNavigation _self;
  final $Res Function(_NeedsRoleBasedNavigation) _then;

  /// Create a copy of SocialAuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? role = null,
  }) {
    return _then(_NeedsRoleBasedNavigation(
      role: null == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _Success implements SocialAuthState {
  const _Success();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Success);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SocialAuthState.success()';
  }
}

/// @nodoc

class _Failure implements SocialAuthState {
  const _Failure(this.message);

  final String message;

  /// Create a copy of SocialAuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Failure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'SocialAuthState.failure(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$FailureCopyWith<$Res>
    implements $SocialAuthStateCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) _then) =
      __$FailureCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(this._self, this._then);

  final _Failure _self;
  final $Res Function(_Failure) _then;

  /// Create a copy of SocialAuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_Failure(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
