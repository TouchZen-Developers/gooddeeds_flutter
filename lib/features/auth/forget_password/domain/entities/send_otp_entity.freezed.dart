// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_otp_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SendOtpEntity {
  String get message;

  /// Create a copy of SendOtpEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SendOtpEntityCopyWith<SendOtpEntity> get copyWith =>
      _$SendOtpEntityCopyWithImpl<SendOtpEntity>(
          this as SendOtpEntity, _$identity);

  /// Serializes this SendOtpEntity to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SendOtpEntity &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'SendOtpEntity(message: $message)';
  }
}

/// @nodoc
abstract mixin class $SendOtpEntityCopyWith<$Res> {
  factory $SendOtpEntityCopyWith(
          SendOtpEntity value, $Res Function(SendOtpEntity) _then) =
      _$SendOtpEntityCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$SendOtpEntityCopyWithImpl<$Res>
    implements $SendOtpEntityCopyWith<$Res> {
  _$SendOtpEntityCopyWithImpl(this._self, this._then);

  final SendOtpEntity _self;
  final $Res Function(SendOtpEntity) _then;

  /// Create a copy of SendOtpEntity
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

/// Adds pattern-matching-related methods to [SendOtpEntity].
extension SendOtpEntityPatterns on SendOtpEntity {
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
    TResult Function(_SendOtpEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SendOtpEntity() when $default != null:
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
    TResult Function(_SendOtpEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SendOtpEntity():
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
    TResult? Function(_SendOtpEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SendOtpEntity() when $default != null:
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
      case _SendOtpEntity() when $default != null:
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
      case _SendOtpEntity():
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
      case _SendOtpEntity() when $default != null:
        return $default(_that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SendOtpEntity implements SendOtpEntity {
  const _SendOtpEntity({required this.message});
  factory _SendOtpEntity.fromJson(Map<String, dynamic> json) =>
      _$SendOtpEntityFromJson(json);

  @override
  final String message;

  /// Create a copy of SendOtpEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SendOtpEntityCopyWith<_SendOtpEntity> get copyWith =>
      __$SendOtpEntityCopyWithImpl<_SendOtpEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SendOtpEntityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SendOtpEntity &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'SendOtpEntity(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$SendOtpEntityCopyWith<$Res>
    implements $SendOtpEntityCopyWith<$Res> {
  factory _$SendOtpEntityCopyWith(
          _SendOtpEntity value, $Res Function(_SendOtpEntity) _then) =
      __$SendOtpEntityCopyWithImpl;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$SendOtpEntityCopyWithImpl<$Res>
    implements _$SendOtpEntityCopyWith<$Res> {
  __$SendOtpEntityCopyWithImpl(this._self, this._then);

  final _SendOtpEntity _self;
  final $Res Function(_SendOtpEntity) _then;

  /// Create a copy of SendOtpEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_SendOtpEntity(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
