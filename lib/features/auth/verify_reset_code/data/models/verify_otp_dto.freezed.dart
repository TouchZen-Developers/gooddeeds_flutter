// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_otp_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VerifyOtpDto {
  bool get success;
  String get message;
  @JsonKey(name: 'verification_token')
  String get verificationToken;

  /// Create a copy of VerifyOtpDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VerifyOtpDtoCopyWith<VerifyOtpDto> get copyWith =>
      _$VerifyOtpDtoCopyWithImpl<VerifyOtpDto>(
          this as VerifyOtpDto, _$identity);

  /// Serializes this VerifyOtpDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VerifyOtpDto &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.verificationToken, verificationToken) ||
                other.verificationToken == verificationToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, success, message, verificationToken);

  @override
  String toString() {
    return 'VerifyOtpDto(success: $success, message: $message, verificationToken: $verificationToken)';
  }
}

/// @nodoc
abstract mixin class $VerifyOtpDtoCopyWith<$Res> {
  factory $VerifyOtpDtoCopyWith(
          VerifyOtpDto value, $Res Function(VerifyOtpDto) _then) =
      _$VerifyOtpDtoCopyWithImpl;
  @useResult
  $Res call(
      {bool success,
      String message,
      @JsonKey(name: 'verification_token') String verificationToken});
}

/// @nodoc
class _$VerifyOtpDtoCopyWithImpl<$Res> implements $VerifyOtpDtoCopyWith<$Res> {
  _$VerifyOtpDtoCopyWithImpl(this._self, this._then);

  final VerifyOtpDto _self;
  final $Res Function(VerifyOtpDto) _then;

  /// Create a copy of VerifyOtpDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? verificationToken = null,
  }) {
    return _then(_self.copyWith(
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      verificationToken: null == verificationToken
          ? _self.verificationToken
          : verificationToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [VerifyOtpDto].
extension VerifyOtpDtoPatterns on VerifyOtpDto {
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
    TResult Function(_VerifyOtpDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VerifyOtpDto() when $default != null:
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
    TResult Function(_VerifyOtpDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerifyOtpDto():
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
    TResult? Function(_VerifyOtpDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerifyOtpDto() when $default != null:
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
    TResult Function(bool success, String message,
            @JsonKey(name: 'verification_token') String verificationToken)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VerifyOtpDto() when $default != null:
        return $default(_that.success, _that.message, _that.verificationToken);
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
    TResult Function(bool success, String message,
            @JsonKey(name: 'verification_token') String verificationToken)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerifyOtpDto():
        return $default(_that.success, _that.message, _that.verificationToken);
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
    TResult? Function(bool success, String message,
            @JsonKey(name: 'verification_token') String verificationToken)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerifyOtpDto() when $default != null:
        return $default(_that.success, _that.message, _that.verificationToken);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _VerifyOtpDto implements VerifyOtpDto {
  const _VerifyOtpDto(
      {required this.success,
      required this.message,
      @JsonKey(name: 'verification_token') required this.verificationToken});
  factory _VerifyOtpDto.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpDtoFromJson(json);

  @override
  final bool success;
  @override
  final String message;
  @override
  @JsonKey(name: 'verification_token')
  final String verificationToken;

  /// Create a copy of VerifyOtpDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VerifyOtpDtoCopyWith<_VerifyOtpDto> get copyWith =>
      __$VerifyOtpDtoCopyWithImpl<_VerifyOtpDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VerifyOtpDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VerifyOtpDto &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.verificationToken, verificationToken) ||
                other.verificationToken == verificationToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, success, message, verificationToken);

  @override
  String toString() {
    return 'VerifyOtpDto(success: $success, message: $message, verificationToken: $verificationToken)';
  }
}

/// @nodoc
abstract mixin class _$VerifyOtpDtoCopyWith<$Res>
    implements $VerifyOtpDtoCopyWith<$Res> {
  factory _$VerifyOtpDtoCopyWith(
          _VerifyOtpDto value, $Res Function(_VerifyOtpDto) _then) =
      __$VerifyOtpDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool success,
      String message,
      @JsonKey(name: 'verification_token') String verificationToken});
}

/// @nodoc
class __$VerifyOtpDtoCopyWithImpl<$Res>
    implements _$VerifyOtpDtoCopyWith<$Res> {
  __$VerifyOtpDtoCopyWithImpl(this._self, this._then);

  final _VerifyOtpDto _self;
  final $Res Function(_VerifyOtpDto) _then;

  /// Create a copy of VerifyOtpDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? verificationToken = null,
  }) {
    return _then(_VerifyOtpDto(
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      verificationToken: null == verificationToken
          ? _self.verificationToken
          : verificationToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
