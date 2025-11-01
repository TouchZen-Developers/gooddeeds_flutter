// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'social_auth_callback_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SocialAuthCallbackEntity {
  String get token;
  SocialAuthNextStep get nextStep;
  Map<String, dynamic>? get user;

  /// Create a copy of SocialAuthCallbackEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SocialAuthCallbackEntityCopyWith<SocialAuthCallbackEntity> get copyWith =>
      _$SocialAuthCallbackEntityCopyWithImpl<SocialAuthCallbackEntity>(
          this as SocialAuthCallbackEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SocialAuthCallbackEntity &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.nextStep, nextStep) ||
                other.nextStep == nextStep) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, token, nextStep, const DeepCollectionEquality().hash(user));

  @override
  String toString() {
    return 'SocialAuthCallbackEntity(token: $token, nextStep: $nextStep, user: $user)';
  }
}

/// @nodoc
abstract mixin class $SocialAuthCallbackEntityCopyWith<$Res> {
  factory $SocialAuthCallbackEntityCopyWith(SocialAuthCallbackEntity value,
          $Res Function(SocialAuthCallbackEntity) _then) =
      _$SocialAuthCallbackEntityCopyWithImpl;
  @useResult
  $Res call(
      {String token, SocialAuthNextStep nextStep, Map<String, dynamic>? user});
}

/// @nodoc
class _$SocialAuthCallbackEntityCopyWithImpl<$Res>
    implements $SocialAuthCallbackEntityCopyWith<$Res> {
  _$SocialAuthCallbackEntityCopyWithImpl(this._self, this._then);

  final SocialAuthCallbackEntity _self;
  final $Res Function(SocialAuthCallbackEntity) _then;

  /// Create a copy of SocialAuthCallbackEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? nextStep = null,
    Object? user = freezed,
  }) {
    return _then(_self.copyWith(
      token: null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      nextStep: null == nextStep
          ? _self.nextStep
          : nextStep // ignore: cast_nullable_to_non_nullable
              as SocialAuthNextStep,
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SocialAuthCallbackEntity].
extension SocialAuthCallbackEntityPatterns on SocialAuthCallbackEntity {
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
    TResult Function(_SocialAuthCallbackEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SocialAuthCallbackEntity() when $default != null:
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
    TResult Function(_SocialAuthCallbackEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SocialAuthCallbackEntity():
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
    TResult? Function(_SocialAuthCallbackEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SocialAuthCallbackEntity() when $default != null:
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
    TResult Function(String token, SocialAuthNextStep nextStep,
            Map<String, dynamic>? user)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SocialAuthCallbackEntity() when $default != null:
        return $default(_that.token, _that.nextStep, _that.user);
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
    TResult Function(String token, SocialAuthNextStep nextStep,
            Map<String, dynamic>? user)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SocialAuthCallbackEntity():
        return $default(_that.token, _that.nextStep, _that.user);
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
    TResult? Function(String token, SocialAuthNextStep nextStep,
            Map<String, dynamic>? user)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SocialAuthCallbackEntity() when $default != null:
        return $default(_that.token, _that.nextStep, _that.user);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SocialAuthCallbackEntity implements SocialAuthCallbackEntity {
  const _SocialAuthCallbackEntity(
      {required this.token,
      required this.nextStep,
      final Map<String, dynamic>? user})
      : _user = user;

  @override
  final String token;
  @override
  final SocialAuthNextStep nextStep;
  final Map<String, dynamic>? _user;
  @override
  Map<String, dynamic>? get user {
    final value = _user;
    if (value == null) return null;
    if (_user is EqualUnmodifiableMapView) return _user;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of SocialAuthCallbackEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SocialAuthCallbackEntityCopyWith<_SocialAuthCallbackEntity> get copyWith =>
      __$SocialAuthCallbackEntityCopyWithImpl<_SocialAuthCallbackEntity>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SocialAuthCallbackEntity &&
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
    return 'SocialAuthCallbackEntity(token: $token, nextStep: $nextStep, user: $user)';
  }
}

/// @nodoc
abstract mixin class _$SocialAuthCallbackEntityCopyWith<$Res>
    implements $SocialAuthCallbackEntityCopyWith<$Res> {
  factory _$SocialAuthCallbackEntityCopyWith(_SocialAuthCallbackEntity value,
          $Res Function(_SocialAuthCallbackEntity) _then) =
      __$SocialAuthCallbackEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String token, SocialAuthNextStep nextStep, Map<String, dynamic>? user});
}

/// @nodoc
class __$SocialAuthCallbackEntityCopyWithImpl<$Res>
    implements _$SocialAuthCallbackEntityCopyWith<$Res> {
  __$SocialAuthCallbackEntityCopyWithImpl(this._self, this._then);

  final _SocialAuthCallbackEntity _self;
  final $Res Function(_SocialAuthCallbackEntity) _then;

  /// Create a copy of SocialAuthCallbackEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? token = null,
    Object? nextStep = null,
    Object? user = freezed,
  }) {
    return _then(_SocialAuthCallbackEntity(
      token: null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      nextStep: null == nextStep
          ? _self.nextStep
          : nextStep // ignore: cast_nullable_to_non_nullable
              as SocialAuthNextStep,
      user: freezed == user
          ? _self._user
          : user // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

// dart format on
