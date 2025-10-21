// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginResponseEntity {
  UserEntity get user;
  String get token;

  /// Create a copy of LoginResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginResponseEntityCopyWith<LoginResponseEntity> get copyWith =>
      _$LoginResponseEntityCopyWithImpl<LoginResponseEntity>(
          this as LoginResponseEntity, _$identity);

  /// Serializes this LoginResponseEntity to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginResponseEntity &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user, token);

  @override
  String toString() {
    return 'LoginResponseEntity(user: $user, token: $token)';
  }
}

/// @nodoc
abstract mixin class $LoginResponseEntityCopyWith<$Res> {
  factory $LoginResponseEntityCopyWith(
          LoginResponseEntity value, $Res Function(LoginResponseEntity) _then) =
      _$LoginResponseEntityCopyWithImpl;
  @useResult
  $Res call({UserEntity user, String token});

  $UserEntityCopyWith<$Res> get user;
}

/// @nodoc
class _$LoginResponseEntityCopyWithImpl<$Res>
    implements $LoginResponseEntityCopyWith<$Res> {
  _$LoginResponseEntityCopyWithImpl(this._self, this._then);

  final LoginResponseEntity _self;
  final $Res Function(LoginResponseEntity) _then;

  /// Create a copy of LoginResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? token = null,
  }) {
    return _then(_self.copyWith(
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
      token: null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of LoginResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res> get user {
    return $UserEntityCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// Adds pattern-matching-related methods to [LoginResponseEntity].
extension LoginResponseEntityPatterns on LoginResponseEntity {
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
    TResult Function(_LoginResponseEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LoginResponseEntity() when $default != null:
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
    TResult Function(_LoginResponseEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoginResponseEntity():
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
    TResult? Function(_LoginResponseEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoginResponseEntity() when $default != null:
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
    TResult Function(UserEntity user, String token)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LoginResponseEntity() when $default != null:
        return $default(_that.user, _that.token);
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
    TResult Function(UserEntity user, String token) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoginResponseEntity():
        return $default(_that.user, _that.token);
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
    TResult? Function(UserEntity user, String token)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoginResponseEntity() when $default != null:
        return $default(_that.user, _that.token);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _LoginResponseEntity implements LoginResponseEntity {
  const _LoginResponseEntity({required this.user, required this.token});
  factory _LoginResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseEntityFromJson(json);

  @override
  final UserEntity user;
  @override
  final String token;

  /// Create a copy of LoginResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LoginResponseEntityCopyWith<_LoginResponseEntity> get copyWith =>
      __$LoginResponseEntityCopyWithImpl<_LoginResponseEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LoginResponseEntityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginResponseEntity &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user, token);

  @override
  String toString() {
    return 'LoginResponseEntity(user: $user, token: $token)';
  }
}

/// @nodoc
abstract mixin class _$LoginResponseEntityCopyWith<$Res>
    implements $LoginResponseEntityCopyWith<$Res> {
  factory _$LoginResponseEntityCopyWith(_LoginResponseEntity value,
          $Res Function(_LoginResponseEntity) _then) =
      __$LoginResponseEntityCopyWithImpl;
  @override
  @useResult
  $Res call({UserEntity user, String token});

  @override
  $UserEntityCopyWith<$Res> get user;
}

/// @nodoc
class __$LoginResponseEntityCopyWithImpl<$Res>
    implements _$LoginResponseEntityCopyWith<$Res> {
  __$LoginResponseEntityCopyWithImpl(this._self, this._then);

  final _LoginResponseEntity _self;
  final $Res Function(_LoginResponseEntity) _then;

  /// Create a copy of LoginResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? user = null,
    Object? token = null,
  }) {
    return _then(_LoginResponseEntity(
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
      token: null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of LoginResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res> get user {
    return $UserEntityCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

// dart format on
