// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_signup_otp_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VerifySignupOtpDto {
  String get message;

  /// Create a copy of VerifySignupOtpDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VerifySignupOtpDtoCopyWith<VerifySignupOtpDto> get copyWith =>
      _$VerifySignupOtpDtoCopyWithImpl<VerifySignupOtpDto>(
          this as VerifySignupOtpDto, _$identity);

  /// Serializes this VerifySignupOtpDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VerifySignupOtpDto &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'VerifySignupOtpDto(message: $message)';
  }
}

/// @nodoc
abstract mixin class $VerifySignupOtpDtoCopyWith<$Res> {
  factory $VerifySignupOtpDtoCopyWith(
          VerifySignupOtpDto value, $Res Function(VerifySignupOtpDto) _then) =
      _$VerifySignupOtpDtoCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$VerifySignupOtpDtoCopyWithImpl<$Res>
    implements $VerifySignupOtpDtoCopyWith<$Res> {
  _$VerifySignupOtpDtoCopyWithImpl(this._self, this._then);

  final VerifySignupOtpDto _self;
  final $Res Function(VerifySignupOtpDto) _then;

  /// Create a copy of VerifySignupOtpDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_self.copyWith(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [VerifySignupOtpDto].
extension VerifySignupOtpDtoPatterns on VerifySignupOtpDto {
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
    TResult Function(_VerifySignupOtpDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VerifySignupOtpDto() when $default != null:
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
    TResult Function(_VerifySignupOtpDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerifySignupOtpDto():
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
    TResult? Function(_VerifySignupOtpDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerifySignupOtpDto() when $default != null:
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
    TResult Function(String message)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VerifySignupOtpDto() when $default != null:
        return $default(_that.message);
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
    TResult Function(String message) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerifySignupOtpDto():
        return $default(_that.message);
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
    TResult? Function(String message)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerifySignupOtpDto() when $default != null:
        return $default(_that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _VerifySignupOtpDto implements VerifySignupOtpDto {
  const _VerifySignupOtpDto({required this.message});
  factory _VerifySignupOtpDto.fromJson(Map<String, dynamic> json) =>
      _$VerifySignupOtpDtoFromJson(json);

  @override
  final String message;

  /// Create a copy of VerifySignupOtpDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VerifySignupOtpDtoCopyWith<_VerifySignupOtpDto> get copyWith =>
      __$VerifySignupOtpDtoCopyWithImpl<_VerifySignupOtpDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VerifySignupOtpDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VerifySignupOtpDto &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'VerifySignupOtpDto(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$VerifySignupOtpDtoCopyWith<$Res>
    implements $VerifySignupOtpDtoCopyWith<$Res> {
  factory _$VerifySignupOtpDtoCopyWith(
          _VerifySignupOtpDto value, $Res Function(_VerifySignupOtpDto) _then) =
      __$VerifySignupOtpDtoCopyWithImpl;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$VerifySignupOtpDtoCopyWithImpl<$Res>
    implements _$VerifySignupOtpDtoCopyWith<$Res> {
  __$VerifySignupOtpDtoCopyWithImpl(this._self, this._then);

  final _VerifySignupOtpDto _self;
  final $Res Function(_VerifySignupOtpDto) _then;

  /// Create a copy of VerifySignupOtpDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_VerifySignupOtpDto(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
