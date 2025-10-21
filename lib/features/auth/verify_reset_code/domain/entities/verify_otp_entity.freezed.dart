// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_otp_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VerifyOtpEntity {
  String get message;
  String get verificationToken;

  /// Create a copy of VerifyOtpEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VerifyOtpEntityCopyWith<VerifyOtpEntity> get copyWith =>
      _$VerifyOtpEntityCopyWithImpl<VerifyOtpEntity>(
          this as VerifyOtpEntity, _$identity);

  /// Serializes this VerifyOtpEntity to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VerifyOtpEntity &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.verificationToken, verificationToken) ||
                other.verificationToken == verificationToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, verificationToken);

  @override
  String toString() {
    return 'VerifyOtpEntity(message: $message, verificationToken: $verificationToken)';
  }
}

/// @nodoc
abstract mixin class $VerifyOtpEntityCopyWith<$Res> {
  factory $VerifyOtpEntityCopyWith(
          VerifyOtpEntity value, $Res Function(VerifyOtpEntity) _then) =
      _$VerifyOtpEntityCopyWithImpl;
  @useResult
  $Res call({String message, String verificationToken});
}

/// @nodoc
class _$VerifyOtpEntityCopyWithImpl<$Res>
    implements $VerifyOtpEntityCopyWith<$Res> {
  _$VerifyOtpEntityCopyWithImpl(this._self, this._then);

  final VerifyOtpEntity _self;
  final $Res Function(VerifyOtpEntity) _then;

  /// Create a copy of VerifyOtpEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? verificationToken = null,
  }) {
    return _then(_self.copyWith(
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

/// Adds pattern-matching-related methods to [VerifyOtpEntity].
extension VerifyOtpEntityPatterns on VerifyOtpEntity {
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
    TResult Function(_VerifyOtpEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VerifyOtpEntity() when $default != null:
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
    TResult Function(_VerifyOtpEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerifyOtpEntity():
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
    TResult? Function(_VerifyOtpEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerifyOtpEntity() when $default != null:
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
    TResult Function(String message, String verificationToken)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VerifyOtpEntity() when $default != null:
        return $default(_that.message, _that.verificationToken);
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
    TResult Function(String message, String verificationToken) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerifyOtpEntity():
        return $default(_that.message, _that.verificationToken);
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
    TResult? Function(String message, String verificationToken)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerifyOtpEntity() when $default != null:
        return $default(_that.message, _that.verificationToken);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _VerifyOtpEntity implements VerifyOtpEntity {
  const _VerifyOtpEntity(
      {required this.message, required this.verificationToken});
  factory _VerifyOtpEntity.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpEntityFromJson(json);

  @override
  final String message;
  @override
  final String verificationToken;

  /// Create a copy of VerifyOtpEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VerifyOtpEntityCopyWith<_VerifyOtpEntity> get copyWith =>
      __$VerifyOtpEntityCopyWithImpl<_VerifyOtpEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VerifyOtpEntityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VerifyOtpEntity &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.verificationToken, verificationToken) ||
                other.verificationToken == verificationToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, verificationToken);

  @override
  String toString() {
    return 'VerifyOtpEntity(message: $message, verificationToken: $verificationToken)';
  }
}

/// @nodoc
abstract mixin class _$VerifyOtpEntityCopyWith<$Res>
    implements $VerifyOtpEntityCopyWith<$Res> {
  factory _$VerifyOtpEntityCopyWith(
          _VerifyOtpEntity value, $Res Function(_VerifyOtpEntity) _then) =
      __$VerifyOtpEntityCopyWithImpl;
  @override
  @useResult
  $Res call({String message, String verificationToken});
}

/// @nodoc
class __$VerifyOtpEntityCopyWithImpl<$Res>
    implements _$VerifyOtpEntityCopyWith<$Res> {
  __$VerifyOtpEntityCopyWithImpl(this._self, this._then);

  final _VerifyOtpEntity _self;
  final $Res Function(_VerifyOtpEntity) _then;

  /// Create a copy of VerifyOtpEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
    Object? verificationToken = null,
  }) {
    return _then(_VerifyOtpEntity(
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
