// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'social_auth_callback_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SocialAuthCallbackDto {
  String get token;
  @JsonKey(name: 'next_step')
  String get nextStep;
  Map<String, dynamic>? get user;

  /// Create a copy of SocialAuthCallbackDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SocialAuthCallbackDtoCopyWith<SocialAuthCallbackDto> get copyWith =>
      _$SocialAuthCallbackDtoCopyWithImpl<SocialAuthCallbackDto>(
          this as SocialAuthCallbackDto, _$identity);

  /// Serializes this SocialAuthCallbackDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SocialAuthCallbackDto &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.nextStep, nextStep) ||
                other.nextStep == nextStep) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, token, nextStep, const DeepCollectionEquality().hash(user));

  @override
  String toString() {
    return 'SocialAuthCallbackDto(token: $token, nextStep: $nextStep, user: $user)';
  }
}

/// @nodoc
abstract mixin class $SocialAuthCallbackDtoCopyWith<$Res> {
  factory $SocialAuthCallbackDtoCopyWith(SocialAuthCallbackDto value,
          $Res Function(SocialAuthCallbackDto) _then) =
      _$SocialAuthCallbackDtoCopyWithImpl;
  @useResult
  $Res call(
      {String token,
      @JsonKey(name: 'next_step') String nextStep,
      Map<String, dynamic>? user});
}

/// @nodoc
class _$SocialAuthCallbackDtoCopyWithImpl<$Res>
    implements $SocialAuthCallbackDtoCopyWith<$Res> {
  _$SocialAuthCallbackDtoCopyWithImpl(this._self, this._then);

  final SocialAuthCallbackDto _self;
  final $Res Function(SocialAuthCallbackDto) _then;

  /// Create a copy of SocialAuthCallbackDto
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
              as String,
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SocialAuthCallbackDto].
extension SocialAuthCallbackDtoPatterns on SocialAuthCallbackDto {
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
    TResult Function(_SocialAuthCallbackDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SocialAuthCallbackDto() when $default != null:
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
    TResult Function(_SocialAuthCallbackDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SocialAuthCallbackDto():
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
    TResult? Function(_SocialAuthCallbackDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SocialAuthCallbackDto() when $default != null:
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
    TResult Function(String token, @JsonKey(name: 'next_step') String nextStep,
            Map<String, dynamic>? user)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SocialAuthCallbackDto() when $default != null:
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
    TResult Function(String token, @JsonKey(name: 'next_step') String nextStep,
            Map<String, dynamic>? user)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SocialAuthCallbackDto():
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
    TResult? Function(String token, @JsonKey(name: 'next_step') String nextStep,
            Map<String, dynamic>? user)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SocialAuthCallbackDto() when $default != null:
        return $default(_that.token, _that.nextStep, _that.user);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SocialAuthCallbackDto implements SocialAuthCallbackDto {
  const _SocialAuthCallbackDto(
      {required this.token,
      @JsonKey(name: 'next_step') required this.nextStep,
      final Map<String, dynamic>? user})
      : _user = user;
  factory _SocialAuthCallbackDto.fromJson(Map<String, dynamic> json) =>
      _$SocialAuthCallbackDtoFromJson(json);

  @override
  final String token;
  @override
  @JsonKey(name: 'next_step')
  final String nextStep;
  final Map<String, dynamic>? _user;
  @override
  Map<String, dynamic>? get user {
    final value = _user;
    if (value == null) return null;
    if (_user is EqualUnmodifiableMapView) return _user;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of SocialAuthCallbackDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SocialAuthCallbackDtoCopyWith<_SocialAuthCallbackDto> get copyWith =>
      __$SocialAuthCallbackDtoCopyWithImpl<_SocialAuthCallbackDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SocialAuthCallbackDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SocialAuthCallbackDto &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.nextStep, nextStep) ||
                other.nextStep == nextStep) &&
            const DeepCollectionEquality().equals(other._user, _user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, token, nextStep, const DeepCollectionEquality().hash(_user));

  @override
  String toString() {
    return 'SocialAuthCallbackDto(token: $token, nextStep: $nextStep, user: $user)';
  }
}

/// @nodoc
abstract mixin class _$SocialAuthCallbackDtoCopyWith<$Res>
    implements $SocialAuthCallbackDtoCopyWith<$Res> {
  factory _$SocialAuthCallbackDtoCopyWith(_SocialAuthCallbackDto value,
          $Res Function(_SocialAuthCallbackDto) _then) =
      __$SocialAuthCallbackDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String token,
      @JsonKey(name: 'next_step') String nextStep,
      Map<String, dynamic>? user});
}

/// @nodoc
class __$SocialAuthCallbackDtoCopyWithImpl<$Res>
    implements _$SocialAuthCallbackDtoCopyWith<$Res> {
  __$SocialAuthCallbackDtoCopyWithImpl(this._self, this._then);

  final _SocialAuthCallbackDto _self;
  final $Res Function(_SocialAuthCallbackDto) _then;

  /// Create a copy of SocialAuthCallbackDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? token = null,
    Object? nextStep = null,
    Object? user = freezed,
  }) {
    return _then(_SocialAuthCallbackDto(
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

// dart format on
