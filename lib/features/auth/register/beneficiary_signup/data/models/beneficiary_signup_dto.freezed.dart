// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'beneficiary_signup_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BeneficiarySignupDto {
  String get message;

  /// Create a copy of BeneficiarySignupDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BeneficiarySignupDtoCopyWith<BeneficiarySignupDto> get copyWith =>
      _$BeneficiarySignupDtoCopyWithImpl<BeneficiarySignupDto>(
          this as BeneficiarySignupDto, _$identity);

  /// Serializes this BeneficiarySignupDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BeneficiarySignupDto &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'BeneficiarySignupDto(message: $message)';
  }
}

/// @nodoc
abstract mixin class $BeneficiarySignupDtoCopyWith<$Res> {
  factory $BeneficiarySignupDtoCopyWith(BeneficiarySignupDto value,
          $Res Function(BeneficiarySignupDto) _then) =
      _$BeneficiarySignupDtoCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$BeneficiarySignupDtoCopyWithImpl<$Res>
    implements $BeneficiarySignupDtoCopyWith<$Res> {
  _$BeneficiarySignupDtoCopyWithImpl(this._self, this._then);

  final BeneficiarySignupDto _self;
  final $Res Function(BeneficiarySignupDto) _then;

  /// Create a copy of BeneficiarySignupDto
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

/// Adds pattern-matching-related methods to [BeneficiarySignupDto].
extension BeneficiarySignupDtoPatterns on BeneficiarySignupDto {
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
    TResult Function(_BeneficiarySignupDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BeneficiarySignupDto() when $default != null:
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
    TResult Function(_BeneficiarySignupDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BeneficiarySignupDto():
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
    TResult? Function(_BeneficiarySignupDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BeneficiarySignupDto() when $default != null:
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
      case _BeneficiarySignupDto() when $default != null:
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
      case _BeneficiarySignupDto():
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
      case _BeneficiarySignupDto() when $default != null:
        return $default(_that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BeneficiarySignupDto implements BeneficiarySignupDto {
  const _BeneficiarySignupDto({required this.message});
  factory _BeneficiarySignupDto.fromJson(Map<String, dynamic> json) =>
      _$BeneficiarySignupDtoFromJson(json);

  @override
  final String message;

  /// Create a copy of BeneficiarySignupDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BeneficiarySignupDtoCopyWith<_BeneficiarySignupDto> get copyWith =>
      __$BeneficiarySignupDtoCopyWithImpl<_BeneficiarySignupDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BeneficiarySignupDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BeneficiarySignupDto &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'BeneficiarySignupDto(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$BeneficiarySignupDtoCopyWith<$Res>
    implements $BeneficiarySignupDtoCopyWith<$Res> {
  factory _$BeneficiarySignupDtoCopyWith(_BeneficiarySignupDto value,
          $Res Function(_BeneficiarySignupDto) _then) =
      __$BeneficiarySignupDtoCopyWithImpl;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$BeneficiarySignupDtoCopyWithImpl<$Res>
    implements _$BeneficiarySignupDtoCopyWith<$Res> {
  __$BeneficiarySignupDtoCopyWithImpl(this._self, this._then);

  final _BeneficiarySignupDto _self;
  final $Res Function(_BeneficiarySignupDto) _then;

  /// Create a copy of BeneficiarySignupDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_BeneficiarySignupDto(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
