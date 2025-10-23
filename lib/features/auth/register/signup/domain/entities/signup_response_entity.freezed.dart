// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignupResponseEntity {
  String get message;

  /// Create a copy of SignupResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SignupResponseEntityCopyWith<SignupResponseEntity> get copyWith =>
      _$SignupResponseEntityCopyWithImpl<SignupResponseEntity>(
          this as SignupResponseEntity, _$identity);

  /// Serializes this SignupResponseEntity to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignupResponseEntity &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'SignupResponseEntity(message: $message)';
  }
}

/// @nodoc
abstract mixin class $SignupResponseEntityCopyWith<$Res> {
  factory $SignupResponseEntityCopyWith(SignupResponseEntity value,
          $Res Function(SignupResponseEntity) _then) =
      _$SignupResponseEntityCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$SignupResponseEntityCopyWithImpl<$Res>
    implements $SignupResponseEntityCopyWith<$Res> {
  _$SignupResponseEntityCopyWithImpl(this._self, this._then);

  final SignupResponseEntity _self;
  final $Res Function(SignupResponseEntity) _then;

  /// Create a copy of SignupResponseEntity
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

/// Adds pattern-matching-related methods to [SignupResponseEntity].
extension SignupResponseEntityPatterns on SignupResponseEntity {
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
    TResult Function(_SignupResponseEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SignupResponseEntity() when $default != null:
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
    TResult Function(_SignupResponseEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SignupResponseEntity():
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
    TResult? Function(_SignupResponseEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SignupResponseEntity() when $default != null:
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
      case _SignupResponseEntity() when $default != null:
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
      case _SignupResponseEntity():
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
      case _SignupResponseEntity() when $default != null:
        return $default(_that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SignupResponseEntity implements SignupResponseEntity {
  const _SignupResponseEntity({required this.message});
  factory _SignupResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$SignupResponseEntityFromJson(json);

  @override
  final String message;

  /// Create a copy of SignupResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SignupResponseEntityCopyWith<_SignupResponseEntity> get copyWith =>
      __$SignupResponseEntityCopyWithImpl<_SignupResponseEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SignupResponseEntityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignupResponseEntity &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'SignupResponseEntity(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$SignupResponseEntityCopyWith<$Res>
    implements $SignupResponseEntityCopyWith<$Res> {
  factory _$SignupResponseEntityCopyWith(_SignupResponseEntity value,
          $Res Function(_SignupResponseEntity) _then) =
      __$SignupResponseEntityCopyWithImpl;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$SignupResponseEntityCopyWithImpl<$Res>
    implements _$SignupResponseEntityCopyWith<$Res> {
  __$SignupResponseEntityCopyWithImpl(this._self, this._then);

  final _SignupResponseEntity _self;
  final $Res Function(_SignupResponseEntity) _then;

  /// Create a copy of SignupResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_SignupResponseEntity(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
