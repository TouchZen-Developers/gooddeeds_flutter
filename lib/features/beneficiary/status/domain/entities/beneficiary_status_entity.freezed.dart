// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'beneficiary_status_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BeneficiaryStatusEntity {
  bool get success;
  BeneficiaryStatusDataEntity get data;

  /// Create a copy of BeneficiaryStatusEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BeneficiaryStatusEntityCopyWith<BeneficiaryStatusEntity> get copyWith =>
      _$BeneficiaryStatusEntityCopyWithImpl<BeneficiaryStatusEntity>(
          this as BeneficiaryStatusEntity, _$identity);

  /// Serializes this BeneficiaryStatusEntity to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BeneficiaryStatusEntity &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  @override
  String toString() {
    return 'BeneficiaryStatusEntity(success: $success, data: $data)';
  }
}

/// @nodoc
abstract mixin class $BeneficiaryStatusEntityCopyWith<$Res> {
  factory $BeneficiaryStatusEntityCopyWith(BeneficiaryStatusEntity value,
          $Res Function(BeneficiaryStatusEntity) _then) =
      _$BeneficiaryStatusEntityCopyWithImpl;
  @useResult
  $Res call({bool success, BeneficiaryStatusDataEntity data});

  $BeneficiaryStatusDataEntityCopyWith<$Res> get data;
}

/// @nodoc
class _$BeneficiaryStatusEntityCopyWithImpl<$Res>
    implements $BeneficiaryStatusEntityCopyWith<$Res> {
  _$BeneficiaryStatusEntityCopyWithImpl(this._self, this._then);

  final BeneficiaryStatusEntity _self;
  final $Res Function(BeneficiaryStatusEntity) _then;

  /// Create a copy of BeneficiaryStatusEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_self.copyWith(
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as BeneficiaryStatusDataEntity,
    ));
  }

  /// Create a copy of BeneficiaryStatusEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BeneficiaryStatusDataEntityCopyWith<$Res> get data {
    return $BeneficiaryStatusDataEntityCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// Adds pattern-matching-related methods to [BeneficiaryStatusEntity].
extension BeneficiaryStatusEntityPatterns on BeneficiaryStatusEntity {
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
    TResult Function(_BeneficiaryStatusEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BeneficiaryStatusEntity() when $default != null:
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
    TResult Function(_BeneficiaryStatusEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BeneficiaryStatusEntity():
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
    TResult? Function(_BeneficiaryStatusEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BeneficiaryStatusEntity() when $default != null:
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
    TResult Function(bool success, BeneficiaryStatusDataEntity data)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BeneficiaryStatusEntity() when $default != null:
        return $default(_that.success, _that.data);
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
    TResult Function(bool success, BeneficiaryStatusDataEntity data) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BeneficiaryStatusEntity():
        return $default(_that.success, _that.data);
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
    TResult? Function(bool success, BeneficiaryStatusDataEntity data)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BeneficiaryStatusEntity() when $default != null:
        return $default(_that.success, _that.data);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BeneficiaryStatusEntity implements BeneficiaryStatusEntity {
  const _BeneficiaryStatusEntity({required this.success, required this.data});
  factory _BeneficiaryStatusEntity.fromJson(Map<String, dynamic> json) =>
      _$BeneficiaryStatusEntityFromJson(json);

  @override
  final bool success;
  @override
  final BeneficiaryStatusDataEntity data;

  /// Create a copy of BeneficiaryStatusEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BeneficiaryStatusEntityCopyWith<_BeneficiaryStatusEntity> get copyWith =>
      __$BeneficiaryStatusEntityCopyWithImpl<_BeneficiaryStatusEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BeneficiaryStatusEntityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BeneficiaryStatusEntity &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  @override
  String toString() {
    return 'BeneficiaryStatusEntity(success: $success, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$BeneficiaryStatusEntityCopyWith<$Res>
    implements $BeneficiaryStatusEntityCopyWith<$Res> {
  factory _$BeneficiaryStatusEntityCopyWith(_BeneficiaryStatusEntity value,
          $Res Function(_BeneficiaryStatusEntity) _then) =
      __$BeneficiaryStatusEntityCopyWithImpl;
  @override
  @useResult
  $Res call({bool success, BeneficiaryStatusDataEntity data});

  @override
  $BeneficiaryStatusDataEntityCopyWith<$Res> get data;
}

/// @nodoc
class __$BeneficiaryStatusEntityCopyWithImpl<$Res>
    implements _$BeneficiaryStatusEntityCopyWith<$Res> {
  __$BeneficiaryStatusEntityCopyWithImpl(this._self, this._then);

  final _BeneficiaryStatusEntity _self;
  final $Res Function(_BeneficiaryStatusEntity) _then;

  /// Create a copy of BeneficiaryStatusEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_BeneficiaryStatusEntity(
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as BeneficiaryStatusDataEntity,
    ));
  }

  /// Create a copy of BeneficiaryStatusEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BeneficiaryStatusDataEntityCopyWith<$Res> get data {
    return $BeneficiaryStatusDataEntityCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
mixin _$BeneficiaryStatusDataEntity {
  UserEntity get user;
  BeneficiaryEntity get beneficiary;
  String get message;

  /// Create a copy of BeneficiaryStatusDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BeneficiaryStatusDataEntityCopyWith<BeneficiaryStatusDataEntity>
      get copyWith => _$BeneficiaryStatusDataEntityCopyWithImpl<
              BeneficiaryStatusDataEntity>(
          this as BeneficiaryStatusDataEntity, _$identity);

  /// Serializes this BeneficiaryStatusDataEntity to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BeneficiaryStatusDataEntity &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.beneficiary, beneficiary) ||
                other.beneficiary == beneficiary) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user, beneficiary, message);

  @override
  String toString() {
    return 'BeneficiaryStatusDataEntity(user: $user, beneficiary: $beneficiary, message: $message)';
  }
}

/// @nodoc
abstract mixin class $BeneficiaryStatusDataEntityCopyWith<$Res> {
  factory $BeneficiaryStatusDataEntityCopyWith(
          BeneficiaryStatusDataEntity value,
          $Res Function(BeneficiaryStatusDataEntity) _then) =
      _$BeneficiaryStatusDataEntityCopyWithImpl;
  @useResult
  $Res call({UserEntity user, BeneficiaryEntity beneficiary, String message});

  $UserEntityCopyWith<$Res> get user;
  $BeneficiaryEntityCopyWith<$Res> get beneficiary;
}

/// @nodoc
class _$BeneficiaryStatusDataEntityCopyWithImpl<$Res>
    implements $BeneficiaryStatusDataEntityCopyWith<$Res> {
  _$BeneficiaryStatusDataEntityCopyWithImpl(this._self, this._then);

  final BeneficiaryStatusDataEntity _self;
  final $Res Function(BeneficiaryStatusDataEntity) _then;

  /// Create a copy of BeneficiaryStatusDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? beneficiary = null,
    Object? message = null,
  }) {
    return _then(_self.copyWith(
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
      beneficiary: null == beneficiary
          ? _self.beneficiary
          : beneficiary // ignore: cast_nullable_to_non_nullable
              as BeneficiaryEntity,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of BeneficiaryStatusDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res> get user {
    return $UserEntityCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }

  /// Create a copy of BeneficiaryStatusDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BeneficiaryEntityCopyWith<$Res> get beneficiary {
    return $BeneficiaryEntityCopyWith<$Res>(_self.beneficiary, (value) {
      return _then(_self.copyWith(beneficiary: value));
    });
  }
}

/// Adds pattern-matching-related methods to [BeneficiaryStatusDataEntity].
extension BeneficiaryStatusDataEntityPatterns on BeneficiaryStatusDataEntity {
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
    TResult Function(_BeneficiaryStatusDataEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BeneficiaryStatusDataEntity() when $default != null:
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
    TResult Function(_BeneficiaryStatusDataEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BeneficiaryStatusDataEntity():
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
    TResult? Function(_BeneficiaryStatusDataEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BeneficiaryStatusDataEntity() when $default != null:
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
            UserEntity user, BeneficiaryEntity beneficiary, String message)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BeneficiaryStatusDataEntity() when $default != null:
        return $default(_that.user, _that.beneficiary, _that.message);
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
            UserEntity user, BeneficiaryEntity beneficiary, String message)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BeneficiaryStatusDataEntity():
        return $default(_that.user, _that.beneficiary, _that.message);
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
            UserEntity user, BeneficiaryEntity beneficiary, String message)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BeneficiaryStatusDataEntity() when $default != null:
        return $default(_that.user, _that.beneficiary, _that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BeneficiaryStatusDataEntity implements BeneficiaryStatusDataEntity {
  const _BeneficiaryStatusDataEntity(
      {required this.user, required this.beneficiary, required this.message});
  factory _BeneficiaryStatusDataEntity.fromJson(Map<String, dynamic> json) =>
      _$BeneficiaryStatusDataEntityFromJson(json);

  @override
  final UserEntity user;
  @override
  final BeneficiaryEntity beneficiary;
  @override
  final String message;

  /// Create a copy of BeneficiaryStatusDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BeneficiaryStatusDataEntityCopyWith<_BeneficiaryStatusDataEntity>
      get copyWith => __$BeneficiaryStatusDataEntityCopyWithImpl<
          _BeneficiaryStatusDataEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BeneficiaryStatusDataEntityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BeneficiaryStatusDataEntity &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.beneficiary, beneficiary) ||
                other.beneficiary == beneficiary) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user, beneficiary, message);

  @override
  String toString() {
    return 'BeneficiaryStatusDataEntity(user: $user, beneficiary: $beneficiary, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$BeneficiaryStatusDataEntityCopyWith<$Res>
    implements $BeneficiaryStatusDataEntityCopyWith<$Res> {
  factory _$BeneficiaryStatusDataEntityCopyWith(
          _BeneficiaryStatusDataEntity value,
          $Res Function(_BeneficiaryStatusDataEntity) _then) =
      __$BeneficiaryStatusDataEntityCopyWithImpl;
  @override
  @useResult
  $Res call({UserEntity user, BeneficiaryEntity beneficiary, String message});

  @override
  $UserEntityCopyWith<$Res> get user;
  @override
  $BeneficiaryEntityCopyWith<$Res> get beneficiary;
}

/// @nodoc
class __$BeneficiaryStatusDataEntityCopyWithImpl<$Res>
    implements _$BeneficiaryStatusDataEntityCopyWith<$Res> {
  __$BeneficiaryStatusDataEntityCopyWithImpl(this._self, this._then);

  final _BeneficiaryStatusDataEntity _self;
  final $Res Function(_BeneficiaryStatusDataEntity) _then;

  /// Create a copy of BeneficiaryStatusDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? user = null,
    Object? beneficiary = null,
    Object? message = null,
  }) {
    return _then(_BeneficiaryStatusDataEntity(
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
      beneficiary: null == beneficiary
          ? _self.beneficiary
          : beneficiary // ignore: cast_nullable_to_non_nullable
              as BeneficiaryEntity,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of BeneficiaryStatusDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res> get user {
    return $UserEntityCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }

  /// Create a copy of BeneficiaryStatusDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BeneficiaryEntityCopyWith<$Res> get beneficiary {
    return $BeneficiaryEntityCopyWith<$Res>(_self.beneficiary, (value) {
      return _then(_self.copyWith(beneficiary: value));
    });
  }
}

/// @nodoc
mixin _$UserEntity {
  int get id;
  String get name;
  String get firstName;
  String get lastName;
  String get email;
  String get phoneNumber;
  String get role;

  /// Create a copy of UserEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<UserEntity> get copyWith =>
      _$UserEntityCopyWithImpl<UserEntity>(this as UserEntity, _$identity);

  /// Serializes this UserEntity to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, firstName, lastName, email, phoneNumber, role);

  @override
  String toString() {
    return 'UserEntity(id: $id, name: $name, firstName: $firstName, lastName: $lastName, email: $email, phoneNumber: $phoneNumber, role: $role)';
  }
}

/// @nodoc
abstract mixin class $UserEntityCopyWith<$Res> {
  factory $UserEntityCopyWith(
          UserEntity value, $Res Function(UserEntity) _then) =
      _$UserEntityCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String name,
      String firstName,
      String lastName,
      String email,
      String phoneNumber,
      String role});
}

/// @nodoc
class _$UserEntityCopyWithImpl<$Res> implements $UserEntityCopyWith<$Res> {
  _$UserEntityCopyWithImpl(this._self, this._then);

  final UserEntity _self;
  final $Res Function(UserEntity) _then;

  /// Create a copy of UserEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? phoneNumber = null,
    Object? role = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [UserEntity].
extension UserEntityPatterns on UserEntity {
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
    TResult Function(_UserEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserEntity() when $default != null:
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
    TResult Function(_UserEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserEntity():
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
    TResult? Function(_UserEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserEntity() when $default != null:
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
    TResult Function(int id, String name, String firstName, String lastName,
            String email, String phoneNumber, String role)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserEntity() when $default != null:
        return $default(_that.id, _that.name, _that.firstName, _that.lastName,
            _that.email, _that.phoneNumber, _that.role);
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
    TResult Function(int id, String name, String firstName, String lastName,
            String email, String phoneNumber, String role)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserEntity():
        return $default(_that.id, _that.name, _that.firstName, _that.lastName,
            _that.email, _that.phoneNumber, _that.role);
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
    TResult? Function(int id, String name, String firstName, String lastName,
            String email, String phoneNumber, String role)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserEntity() when $default != null:
        return $default(_that.id, _that.name, _that.firstName, _that.lastName,
            _that.email, _that.phoneNumber, _that.role);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UserEntity implements UserEntity {
  const _UserEntity(
      {required this.id,
      required this.name,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.phoneNumber,
      required this.role});
  factory _UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final String phoneNumber;
  @override
  final String role;

  /// Create a copy of UserEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserEntityCopyWith<_UserEntity> get copyWith =>
      __$UserEntityCopyWithImpl<_UserEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserEntityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, firstName, lastName, email, phoneNumber, role);

  @override
  String toString() {
    return 'UserEntity(id: $id, name: $name, firstName: $firstName, lastName: $lastName, email: $email, phoneNumber: $phoneNumber, role: $role)';
  }
}

/// @nodoc
abstract mixin class _$UserEntityCopyWith<$Res>
    implements $UserEntityCopyWith<$Res> {
  factory _$UserEntityCopyWith(
          _UserEntity value, $Res Function(_UserEntity) _then) =
      __$UserEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String firstName,
      String lastName,
      String email,
      String phoneNumber,
      String role});
}

/// @nodoc
class __$UserEntityCopyWithImpl<$Res> implements _$UserEntityCopyWith<$Res> {
  __$UserEntityCopyWithImpl(this._self, this._then);

  final _UserEntity _self;
  final $Res Function(_UserEntity) _then;

  /// Create a copy of UserEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? phoneNumber = null,
    Object? role = null,
  }) {
    return _then(_UserEntity(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$BeneficiaryEntity {
  int get id;
  BeneficiaryStatus get status;
  int get familySize;
  String get address;
  String get city;
  String get state;
  String get zipCode;
  String get affectedEvent;
  String get statement;
  String? get familyPhotoUrl;
  String get submittedAt;
  String? get processedAt;

  /// Create a copy of BeneficiaryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BeneficiaryEntityCopyWith<BeneficiaryEntity> get copyWith =>
      _$BeneficiaryEntityCopyWithImpl<BeneficiaryEntity>(
          this as BeneficiaryEntity, _$identity);

  /// Serializes this BeneficiaryEntity to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BeneficiaryEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.familySize, familySize) ||
                other.familySize == familySize) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode) &&
            (identical(other.affectedEvent, affectedEvent) ||
                other.affectedEvent == affectedEvent) &&
            (identical(other.statement, statement) ||
                other.statement == statement) &&
            (identical(other.familyPhotoUrl, familyPhotoUrl) ||
                other.familyPhotoUrl == familyPhotoUrl) &&
            (identical(other.submittedAt, submittedAt) ||
                other.submittedAt == submittedAt) &&
            (identical(other.processedAt, processedAt) ||
                other.processedAt == processedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      status,
      familySize,
      address,
      city,
      state,
      zipCode,
      affectedEvent,
      statement,
      familyPhotoUrl,
      submittedAt,
      processedAt);

  @override
  String toString() {
    return 'BeneficiaryEntity(id: $id, status: $status, familySize: $familySize, address: $address, city: $city, state: $state, zipCode: $zipCode, affectedEvent: $affectedEvent, statement: $statement, familyPhotoUrl: $familyPhotoUrl, submittedAt: $submittedAt, processedAt: $processedAt)';
  }
}

/// @nodoc
abstract mixin class $BeneficiaryEntityCopyWith<$Res> {
  factory $BeneficiaryEntityCopyWith(
          BeneficiaryEntity value, $Res Function(BeneficiaryEntity) _then) =
      _$BeneficiaryEntityCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      BeneficiaryStatus status,
      int familySize,
      String address,
      String city,
      String state,
      String zipCode,
      String affectedEvent,
      String statement,
      String? familyPhotoUrl,
      String submittedAt,
      String? processedAt});
}

/// @nodoc
class _$BeneficiaryEntityCopyWithImpl<$Res>
    implements $BeneficiaryEntityCopyWith<$Res> {
  _$BeneficiaryEntityCopyWithImpl(this._self, this._then);

  final BeneficiaryEntity _self;
  final $Res Function(BeneficiaryEntity) _then;

  /// Create a copy of BeneficiaryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? familySize = null,
    Object? address = null,
    Object? city = null,
    Object? state = null,
    Object? zipCode = null,
    Object? affectedEvent = null,
    Object? statement = null,
    Object? familyPhotoUrl = freezed,
    Object? submittedAt = null,
    Object? processedAt = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as BeneficiaryStatus,
      familySize: null == familySize
          ? _self.familySize
          : familySize // ignore: cast_nullable_to_non_nullable
              as int,
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      zipCode: null == zipCode
          ? _self.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String,
      affectedEvent: null == affectedEvent
          ? _self.affectedEvent
          : affectedEvent // ignore: cast_nullable_to_non_nullable
              as String,
      statement: null == statement
          ? _self.statement
          : statement // ignore: cast_nullable_to_non_nullable
              as String,
      familyPhotoUrl: freezed == familyPhotoUrl
          ? _self.familyPhotoUrl
          : familyPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      submittedAt: null == submittedAt
          ? _self.submittedAt
          : submittedAt // ignore: cast_nullable_to_non_nullable
              as String,
      processedAt: freezed == processedAt
          ? _self.processedAt
          : processedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [BeneficiaryEntity].
extension BeneficiaryEntityPatterns on BeneficiaryEntity {
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
    TResult Function(_BeneficiaryEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BeneficiaryEntity() when $default != null:
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
    TResult Function(_BeneficiaryEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BeneficiaryEntity():
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
    TResult? Function(_BeneficiaryEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BeneficiaryEntity() when $default != null:
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
            int id,
            BeneficiaryStatus status,
            int familySize,
            String address,
            String city,
            String state,
            String zipCode,
            String affectedEvent,
            String statement,
            String? familyPhotoUrl,
            String submittedAt,
            String? processedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BeneficiaryEntity() when $default != null:
        return $default(
            _that.id,
            _that.status,
            _that.familySize,
            _that.address,
            _that.city,
            _that.state,
            _that.zipCode,
            _that.affectedEvent,
            _that.statement,
            _that.familyPhotoUrl,
            _that.submittedAt,
            _that.processedAt);
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
            int id,
            BeneficiaryStatus status,
            int familySize,
            String address,
            String city,
            String state,
            String zipCode,
            String affectedEvent,
            String statement,
            String? familyPhotoUrl,
            String submittedAt,
            String? processedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BeneficiaryEntity():
        return $default(
            _that.id,
            _that.status,
            _that.familySize,
            _that.address,
            _that.city,
            _that.state,
            _that.zipCode,
            _that.affectedEvent,
            _that.statement,
            _that.familyPhotoUrl,
            _that.submittedAt,
            _that.processedAt);
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
            int id,
            BeneficiaryStatus status,
            int familySize,
            String address,
            String city,
            String state,
            String zipCode,
            String affectedEvent,
            String statement,
            String? familyPhotoUrl,
            String submittedAt,
            String? processedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BeneficiaryEntity() when $default != null:
        return $default(
            _that.id,
            _that.status,
            _that.familySize,
            _that.address,
            _that.city,
            _that.state,
            _that.zipCode,
            _that.affectedEvent,
            _that.statement,
            _that.familyPhotoUrl,
            _that.submittedAt,
            _that.processedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BeneficiaryEntity implements BeneficiaryEntity {
  const _BeneficiaryEntity(
      {required this.id,
      required this.status,
      required this.familySize,
      required this.address,
      required this.city,
      required this.state,
      required this.zipCode,
      required this.affectedEvent,
      required this.statement,
      this.familyPhotoUrl,
      required this.submittedAt,
      this.processedAt});
  factory _BeneficiaryEntity.fromJson(Map<String, dynamic> json) =>
      _$BeneficiaryEntityFromJson(json);

  @override
  final int id;
  @override
  final BeneficiaryStatus status;
  @override
  final int familySize;
  @override
  final String address;
  @override
  final String city;
  @override
  final String state;
  @override
  final String zipCode;
  @override
  final String affectedEvent;
  @override
  final String statement;
  @override
  final String? familyPhotoUrl;
  @override
  final String submittedAt;
  @override
  final String? processedAt;

  /// Create a copy of BeneficiaryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BeneficiaryEntityCopyWith<_BeneficiaryEntity> get copyWith =>
      __$BeneficiaryEntityCopyWithImpl<_BeneficiaryEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BeneficiaryEntityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BeneficiaryEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.familySize, familySize) ||
                other.familySize == familySize) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode) &&
            (identical(other.affectedEvent, affectedEvent) ||
                other.affectedEvent == affectedEvent) &&
            (identical(other.statement, statement) ||
                other.statement == statement) &&
            (identical(other.familyPhotoUrl, familyPhotoUrl) ||
                other.familyPhotoUrl == familyPhotoUrl) &&
            (identical(other.submittedAt, submittedAt) ||
                other.submittedAt == submittedAt) &&
            (identical(other.processedAt, processedAt) ||
                other.processedAt == processedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      status,
      familySize,
      address,
      city,
      state,
      zipCode,
      affectedEvent,
      statement,
      familyPhotoUrl,
      submittedAt,
      processedAt);

  @override
  String toString() {
    return 'BeneficiaryEntity(id: $id, status: $status, familySize: $familySize, address: $address, city: $city, state: $state, zipCode: $zipCode, affectedEvent: $affectedEvent, statement: $statement, familyPhotoUrl: $familyPhotoUrl, submittedAt: $submittedAt, processedAt: $processedAt)';
  }
}

/// @nodoc
abstract mixin class _$BeneficiaryEntityCopyWith<$Res>
    implements $BeneficiaryEntityCopyWith<$Res> {
  factory _$BeneficiaryEntityCopyWith(
          _BeneficiaryEntity value, $Res Function(_BeneficiaryEntity) _then) =
      __$BeneficiaryEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      BeneficiaryStatus status,
      int familySize,
      String address,
      String city,
      String state,
      String zipCode,
      String affectedEvent,
      String statement,
      String? familyPhotoUrl,
      String submittedAt,
      String? processedAt});
}

/// @nodoc
class __$BeneficiaryEntityCopyWithImpl<$Res>
    implements _$BeneficiaryEntityCopyWith<$Res> {
  __$BeneficiaryEntityCopyWithImpl(this._self, this._then);

  final _BeneficiaryEntity _self;
  final $Res Function(_BeneficiaryEntity) _then;

  /// Create a copy of BeneficiaryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? familySize = null,
    Object? address = null,
    Object? city = null,
    Object? state = null,
    Object? zipCode = null,
    Object? affectedEvent = null,
    Object? statement = null,
    Object? familyPhotoUrl = freezed,
    Object? submittedAt = null,
    Object? processedAt = freezed,
  }) {
    return _then(_BeneficiaryEntity(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as BeneficiaryStatus,
      familySize: null == familySize
          ? _self.familySize
          : familySize // ignore: cast_nullable_to_non_nullable
              as int,
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      zipCode: null == zipCode
          ? _self.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String,
      affectedEvent: null == affectedEvent
          ? _self.affectedEvent
          : affectedEvent // ignore: cast_nullable_to_non_nullable
              as String,
      statement: null == statement
          ? _self.statement
          : statement // ignore: cast_nullable_to_non_nullable
              as String,
      familyPhotoUrl: freezed == familyPhotoUrl
          ? _self.familyPhotoUrl
          : familyPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      submittedAt: null == submittedAt
          ? _self.submittedAt
          : submittedAt // ignore: cast_nullable_to_non_nullable
              as String,
      processedAt: freezed == processedAt
          ? _self.processedAt
          : processedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
