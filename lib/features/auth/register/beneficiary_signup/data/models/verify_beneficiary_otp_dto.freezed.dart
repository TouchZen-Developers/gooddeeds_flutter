// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_beneficiary_otp_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VerifyBeneficiaryOtpDto {
  String get message;
  UserDto get user;
  BeneficiaryDto get beneficiary;

  /// Create a copy of VerifyBeneficiaryOtpDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VerifyBeneficiaryOtpDtoCopyWith<VerifyBeneficiaryOtpDto> get copyWith =>
      _$VerifyBeneficiaryOtpDtoCopyWithImpl<VerifyBeneficiaryOtpDto>(
          this as VerifyBeneficiaryOtpDto, _$identity);

  /// Serializes this VerifyBeneficiaryOtpDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VerifyBeneficiaryOtpDto &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.beneficiary, beneficiary) ||
                other.beneficiary == beneficiary));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, user, beneficiary);

  @override
  String toString() {
    return 'VerifyBeneficiaryOtpDto(message: $message, user: $user, beneficiary: $beneficiary)';
  }
}

/// @nodoc
abstract mixin class $VerifyBeneficiaryOtpDtoCopyWith<$Res> {
  factory $VerifyBeneficiaryOtpDtoCopyWith(VerifyBeneficiaryOtpDto value,
          $Res Function(VerifyBeneficiaryOtpDto) _then) =
      _$VerifyBeneficiaryOtpDtoCopyWithImpl;
  @useResult
  $Res call({String message, UserDto user, BeneficiaryDto beneficiary});

  $UserDtoCopyWith<$Res> get user;
  $BeneficiaryDtoCopyWith<$Res> get beneficiary;
}

/// @nodoc
class _$VerifyBeneficiaryOtpDtoCopyWithImpl<$Res>
    implements $VerifyBeneficiaryOtpDtoCopyWith<$Res> {
  _$VerifyBeneficiaryOtpDtoCopyWithImpl(this._self, this._then);

  final VerifyBeneficiaryOtpDto _self;
  final $Res Function(VerifyBeneficiaryOtpDto) _then;

  /// Create a copy of VerifyBeneficiaryOtpDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? user = null,
    Object? beneficiary = null,
  }) {
    return _then(_self.copyWith(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto,
      beneficiary: null == beneficiary
          ? _self.beneficiary
          : beneficiary // ignore: cast_nullable_to_non_nullable
              as BeneficiaryDto,
    ));
  }

  /// Create a copy of VerifyBeneficiaryOtpDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res> get user {
    return $UserDtoCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }

  /// Create a copy of VerifyBeneficiaryOtpDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BeneficiaryDtoCopyWith<$Res> get beneficiary {
    return $BeneficiaryDtoCopyWith<$Res>(_self.beneficiary, (value) {
      return _then(_self.copyWith(beneficiary: value));
    });
  }
}

/// Adds pattern-matching-related methods to [VerifyBeneficiaryOtpDto].
extension VerifyBeneficiaryOtpDtoPatterns on VerifyBeneficiaryOtpDto {
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
    TResult Function(_VerifyBeneficiaryOtpDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VerifyBeneficiaryOtpDto() when $default != null:
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
    TResult Function(_VerifyBeneficiaryOtpDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerifyBeneficiaryOtpDto():
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
    TResult? Function(_VerifyBeneficiaryOtpDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerifyBeneficiaryOtpDto() when $default != null:
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
    TResult Function(String message, UserDto user, BeneficiaryDto beneficiary)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VerifyBeneficiaryOtpDto() when $default != null:
        return $default(_that.message, _that.user, _that.beneficiary);
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
    TResult Function(String message, UserDto user, BeneficiaryDto beneficiary)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerifyBeneficiaryOtpDto():
        return $default(_that.message, _that.user, _that.beneficiary);
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
    TResult? Function(String message, UserDto user, BeneficiaryDto beneficiary)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerifyBeneficiaryOtpDto() when $default != null:
        return $default(_that.message, _that.user, _that.beneficiary);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _VerifyBeneficiaryOtpDto implements VerifyBeneficiaryOtpDto {
  const _VerifyBeneficiaryOtpDto(
      {required this.message, required this.user, required this.beneficiary});
  factory _VerifyBeneficiaryOtpDto.fromJson(Map<String, dynamic> json) =>
      _$VerifyBeneficiaryOtpDtoFromJson(json);

  @override
  final String message;
  @override
  final UserDto user;
  @override
  final BeneficiaryDto beneficiary;

  /// Create a copy of VerifyBeneficiaryOtpDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VerifyBeneficiaryOtpDtoCopyWith<_VerifyBeneficiaryOtpDto> get copyWith =>
      __$VerifyBeneficiaryOtpDtoCopyWithImpl<_VerifyBeneficiaryOtpDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VerifyBeneficiaryOtpDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VerifyBeneficiaryOtpDto &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.beneficiary, beneficiary) ||
                other.beneficiary == beneficiary));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, user, beneficiary);

  @override
  String toString() {
    return 'VerifyBeneficiaryOtpDto(message: $message, user: $user, beneficiary: $beneficiary)';
  }
}

/// @nodoc
abstract mixin class _$VerifyBeneficiaryOtpDtoCopyWith<$Res>
    implements $VerifyBeneficiaryOtpDtoCopyWith<$Res> {
  factory _$VerifyBeneficiaryOtpDtoCopyWith(_VerifyBeneficiaryOtpDto value,
          $Res Function(_VerifyBeneficiaryOtpDto) _then) =
      __$VerifyBeneficiaryOtpDtoCopyWithImpl;
  @override
  @useResult
  $Res call({String message, UserDto user, BeneficiaryDto beneficiary});

  @override
  $UserDtoCopyWith<$Res> get user;
  @override
  $BeneficiaryDtoCopyWith<$Res> get beneficiary;
}

/// @nodoc
class __$VerifyBeneficiaryOtpDtoCopyWithImpl<$Res>
    implements _$VerifyBeneficiaryOtpDtoCopyWith<$Res> {
  __$VerifyBeneficiaryOtpDtoCopyWithImpl(this._self, this._then);

  final _VerifyBeneficiaryOtpDto _self;
  final $Res Function(_VerifyBeneficiaryOtpDto) _then;

  /// Create a copy of VerifyBeneficiaryOtpDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
    Object? user = null,
    Object? beneficiary = null,
  }) {
    return _then(_VerifyBeneficiaryOtpDto(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto,
      beneficiary: null == beneficiary
          ? _self.beneficiary
          : beneficiary // ignore: cast_nullable_to_non_nullable
              as BeneficiaryDto,
    ));
  }

  /// Create a copy of VerifyBeneficiaryOtpDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res> get user {
    return $UserDtoCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }

  /// Create a copy of VerifyBeneficiaryOtpDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BeneficiaryDtoCopyWith<$Res> get beneficiary {
    return $BeneficiaryDtoCopyWith<$Res>(_self.beneficiary, (value) {
      return _then(_self.copyWith(beneficiary: value));
    });
  }
}

// dart format on
