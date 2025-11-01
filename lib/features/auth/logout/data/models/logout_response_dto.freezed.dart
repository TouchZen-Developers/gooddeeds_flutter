// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'logout_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LogoutResponseDto {
  bool get success;
  String get message;

  /// Create a copy of LogoutResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LogoutResponseDtoCopyWith<LogoutResponseDto> get copyWith =>
      _$LogoutResponseDtoCopyWithImpl<LogoutResponseDto>(
          this as LogoutResponseDto, _$identity);

  /// Serializes this LogoutResponseDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LogoutResponseDto &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message);

  @override
  String toString() {
    return 'LogoutResponseDto(success: $success, message: $message)';
  }
}

/// @nodoc
abstract mixin class $LogoutResponseDtoCopyWith<$Res> {
  factory $LogoutResponseDtoCopyWith(
          LogoutResponseDto value, $Res Function(LogoutResponseDto) _then) =
      _$LogoutResponseDtoCopyWithImpl;
  @useResult
  $Res call({bool success, String message});
}

/// @nodoc
class _$LogoutResponseDtoCopyWithImpl<$Res>
    implements $LogoutResponseDtoCopyWith<$Res> {
  _$LogoutResponseDtoCopyWithImpl(this._self, this._then);

  final LogoutResponseDto _self;
  final $Res Function(LogoutResponseDto) _then;

  /// Create a copy of LogoutResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
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
    ));
  }
}

/// Adds pattern-matching-related methods to [LogoutResponseDto].
extension LogoutResponseDtoPatterns on LogoutResponseDto {
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
    TResult Function(_LogoutResponseDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LogoutResponseDto() when $default != null:
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
    TResult Function(_LogoutResponseDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LogoutResponseDto():
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
    TResult? Function(_LogoutResponseDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LogoutResponseDto() when $default != null:
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
    TResult Function(bool success, String message)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LogoutResponseDto() when $default != null:
        return $default(_that.success, _that.message);
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
    TResult Function(bool success, String message) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LogoutResponseDto():
        return $default(_that.success, _that.message);
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
    TResult? Function(bool success, String message)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LogoutResponseDto() when $default != null:
        return $default(_that.success, _that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _LogoutResponseDto implements LogoutResponseDto {
  const _LogoutResponseDto({required this.success, required this.message});
  factory _LogoutResponseDto.fromJson(Map<String, dynamic> json) =>
      _$LogoutResponseDtoFromJson(json);

  @override
  final bool success;
  @override
  final String message;

  /// Create a copy of LogoutResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LogoutResponseDtoCopyWith<_LogoutResponseDto> get copyWith =>
      __$LogoutResponseDtoCopyWithImpl<_LogoutResponseDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LogoutResponseDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LogoutResponseDto &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message);

  @override
  String toString() {
    return 'LogoutResponseDto(success: $success, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$LogoutResponseDtoCopyWith<$Res>
    implements $LogoutResponseDtoCopyWith<$Res> {
  factory _$LogoutResponseDtoCopyWith(
          _LogoutResponseDto value, $Res Function(_LogoutResponseDto) _then) =
      __$LogoutResponseDtoCopyWithImpl;
  @override
  @useResult
  $Res call({bool success, String message});
}

/// @nodoc
class __$LogoutResponseDtoCopyWithImpl<$Res>
    implements _$LogoutResponseDtoCopyWith<$Res> {
  __$LogoutResponseDtoCopyWithImpl(this._self, this._then);

  final _LogoutResponseDto _self;
  final $Res Function(_LogoutResponseDto) _then;

  /// Create a copy of LogoutResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? success = null,
    Object? message = null,
  }) {
    return _then(_LogoutResponseDto(
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
