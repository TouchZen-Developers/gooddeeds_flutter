// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_beneficiary_otp_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VerifyBeneficiaryOtpEntity {
  String get message;
  UserEntity get user;
  BeneficiaryEntity get beneficiary;

  /// Create a copy of VerifyBeneficiaryOtpEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VerifyBeneficiaryOtpEntityCopyWith<VerifyBeneficiaryOtpEntity>
      get copyWith =>
          _$VerifyBeneficiaryOtpEntityCopyWithImpl<VerifyBeneficiaryOtpEntity>(
              this as VerifyBeneficiaryOtpEntity, _$identity);

  /// Serializes this VerifyBeneficiaryOtpEntity to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VerifyBeneficiaryOtpEntity &&
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
    return 'VerifyBeneficiaryOtpEntity(message: $message, user: $user, beneficiary: $beneficiary)';
  }
}

/// @nodoc
abstract mixin class $VerifyBeneficiaryOtpEntityCopyWith<$Res> {
  factory $VerifyBeneficiaryOtpEntityCopyWith(VerifyBeneficiaryOtpEntity value,
          $Res Function(VerifyBeneficiaryOtpEntity) _then) =
      _$VerifyBeneficiaryOtpEntityCopyWithImpl;
  @useResult
  $Res call({String message, UserEntity user, BeneficiaryEntity beneficiary});

  $UserEntityCopyWith<$Res> get user;
  $BeneficiaryEntityCopyWith<$Res> get beneficiary;
}

/// @nodoc
class _$VerifyBeneficiaryOtpEntityCopyWithImpl<$Res>
    implements $VerifyBeneficiaryOtpEntityCopyWith<$Res> {
  _$VerifyBeneficiaryOtpEntityCopyWithImpl(this._self, this._then);

  final VerifyBeneficiaryOtpEntity _self;
  final $Res Function(VerifyBeneficiaryOtpEntity) _then;

  /// Create a copy of VerifyBeneficiaryOtpEntity
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
              as UserEntity,
      beneficiary: null == beneficiary
          ? _self.beneficiary
          : beneficiary // ignore: cast_nullable_to_non_nullable
              as BeneficiaryEntity,
    ));
  }

  /// Create a copy of VerifyBeneficiaryOtpEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res> get user {
    return $UserEntityCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }

  /// Create a copy of VerifyBeneficiaryOtpEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BeneficiaryEntityCopyWith<$Res> get beneficiary {
    return $BeneficiaryEntityCopyWith<$Res>(_self.beneficiary, (value) {
      return _then(_self.copyWith(beneficiary: value));
    });
  }
}

/// Adds pattern-matching-related methods to [VerifyBeneficiaryOtpEntity].
extension VerifyBeneficiaryOtpEntityPatterns on VerifyBeneficiaryOtpEntity {
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
    TResult Function(_VerifyBeneficiaryOtpEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VerifyBeneficiaryOtpEntity() when $default != null:
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
    TResult Function(_VerifyBeneficiaryOtpEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerifyBeneficiaryOtpEntity():
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
    TResult? Function(_VerifyBeneficiaryOtpEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerifyBeneficiaryOtpEntity() when $default != null:
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
    TResult Function(
            String message, UserEntity user, BeneficiaryEntity beneficiary)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VerifyBeneficiaryOtpEntity() when $default != null:
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
    TResult Function(
            String message, UserEntity user, BeneficiaryEntity beneficiary)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerifyBeneficiaryOtpEntity():
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
    TResult? Function(
            String message, UserEntity user, BeneficiaryEntity beneficiary)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerifyBeneficiaryOtpEntity() when $default != null:
        return $default(_that.message, _that.user, _that.beneficiary);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _VerifyBeneficiaryOtpEntity implements VerifyBeneficiaryOtpEntity {
  const _VerifyBeneficiaryOtpEntity(
      {required this.message, required this.user, required this.beneficiary});
  factory _VerifyBeneficiaryOtpEntity.fromJson(Map<String, dynamic> json) =>
      _$VerifyBeneficiaryOtpEntityFromJson(json);

  @override
  final String message;
  @override
  final UserEntity user;
  @override
  final BeneficiaryEntity beneficiary;

  /// Create a copy of VerifyBeneficiaryOtpEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VerifyBeneficiaryOtpEntityCopyWith<_VerifyBeneficiaryOtpEntity>
      get copyWith => __$VerifyBeneficiaryOtpEntityCopyWithImpl<
          _VerifyBeneficiaryOtpEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VerifyBeneficiaryOtpEntityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VerifyBeneficiaryOtpEntity &&
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
    return 'VerifyBeneficiaryOtpEntity(message: $message, user: $user, beneficiary: $beneficiary)';
  }
}

/// @nodoc
abstract mixin class _$VerifyBeneficiaryOtpEntityCopyWith<$Res>
    implements $VerifyBeneficiaryOtpEntityCopyWith<$Res> {
  factory _$VerifyBeneficiaryOtpEntityCopyWith(
          _VerifyBeneficiaryOtpEntity value,
          $Res Function(_VerifyBeneficiaryOtpEntity) _then) =
      __$VerifyBeneficiaryOtpEntityCopyWithImpl;
  @override
  @useResult
  $Res call({String message, UserEntity user, BeneficiaryEntity beneficiary});

  @override
  $UserEntityCopyWith<$Res> get user;
  @override
  $BeneficiaryEntityCopyWith<$Res> get beneficiary;
}

/// @nodoc
class __$VerifyBeneficiaryOtpEntityCopyWithImpl<$Res>
    implements _$VerifyBeneficiaryOtpEntityCopyWith<$Res> {
  __$VerifyBeneficiaryOtpEntityCopyWithImpl(this._self, this._then);

  final _VerifyBeneficiaryOtpEntity _self;
  final $Res Function(_VerifyBeneficiaryOtpEntity) _then;

  /// Create a copy of VerifyBeneficiaryOtpEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
    Object? user = null,
    Object? beneficiary = null,
  }) {
    return _then(_VerifyBeneficiaryOtpEntity(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
      beneficiary: null == beneficiary
          ? _self.beneficiary
          : beneficiary // ignore: cast_nullable_to_non_nullable
              as BeneficiaryEntity,
    ));
  }

  /// Create a copy of VerifyBeneficiaryOtpEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res> get user {
    return $UserEntityCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }

  /// Create a copy of VerifyBeneficiaryOtpEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BeneficiaryEntityCopyWith<$Res> get beneficiary {
    return $BeneficiaryEntityCopyWith<$Res>(_self.beneficiary, (value) {
      return _then(_self.copyWith(beneficiary: value));
    });
  }
}

// dart format on
