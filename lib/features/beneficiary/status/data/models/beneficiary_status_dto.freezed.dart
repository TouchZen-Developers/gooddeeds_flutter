// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'beneficiary_status_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BeneficiaryStatusDto {
  bool get success;
  BeneficiaryStatusDataDto get data;

  /// Create a copy of BeneficiaryStatusDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BeneficiaryStatusDtoCopyWith<BeneficiaryStatusDto> get copyWith =>
      _$BeneficiaryStatusDtoCopyWithImpl<BeneficiaryStatusDto>(
          this as BeneficiaryStatusDto, _$identity);

  /// Serializes this BeneficiaryStatusDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BeneficiaryStatusDto &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  @override
  String toString() {
    return 'BeneficiaryStatusDto(success: $success, data: $data)';
  }
}

/// @nodoc
abstract mixin class $BeneficiaryStatusDtoCopyWith<$Res> {
  factory $BeneficiaryStatusDtoCopyWith(BeneficiaryStatusDto value,
          $Res Function(BeneficiaryStatusDto) _then) =
      _$BeneficiaryStatusDtoCopyWithImpl;
  @useResult
  $Res call({bool success, BeneficiaryStatusDataDto data});

  $BeneficiaryStatusDataDtoCopyWith<$Res> get data;
}

/// @nodoc
class _$BeneficiaryStatusDtoCopyWithImpl<$Res>
    implements $BeneficiaryStatusDtoCopyWith<$Res> {
  _$BeneficiaryStatusDtoCopyWithImpl(this._self, this._then);

  final BeneficiaryStatusDto _self;
  final $Res Function(BeneficiaryStatusDto) _then;

  /// Create a copy of BeneficiaryStatusDto
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
              as BeneficiaryStatusDataDto,
    ));
  }

  /// Create a copy of BeneficiaryStatusDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BeneficiaryStatusDataDtoCopyWith<$Res> get data {
    return $BeneficiaryStatusDataDtoCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// Adds pattern-matching-related methods to [BeneficiaryStatusDto].
extension BeneficiaryStatusDtoPatterns on BeneficiaryStatusDto {
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
    TResult Function(_BeneficiaryStatusDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BeneficiaryStatusDto() when $default != null:
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
    TResult Function(_BeneficiaryStatusDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BeneficiaryStatusDto():
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
    TResult? Function(_BeneficiaryStatusDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BeneficiaryStatusDto() when $default != null:
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
    TResult Function(bool success, BeneficiaryStatusDataDto data)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BeneficiaryStatusDto() when $default != null:
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
    TResult Function(bool success, BeneficiaryStatusDataDto data) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BeneficiaryStatusDto():
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
    TResult? Function(bool success, BeneficiaryStatusDataDto data)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BeneficiaryStatusDto() when $default != null:
        return $default(_that.success, _that.data);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BeneficiaryStatusDto implements BeneficiaryStatusDto {
  const _BeneficiaryStatusDto({required this.success, required this.data});
  factory _BeneficiaryStatusDto.fromJson(Map<String, dynamic> json) =>
      _$BeneficiaryStatusDtoFromJson(json);

  @override
  final bool success;
  @override
  final BeneficiaryStatusDataDto data;

  /// Create a copy of BeneficiaryStatusDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BeneficiaryStatusDtoCopyWith<_BeneficiaryStatusDto> get copyWith =>
      __$BeneficiaryStatusDtoCopyWithImpl<_BeneficiaryStatusDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BeneficiaryStatusDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BeneficiaryStatusDto &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  @override
  String toString() {
    return 'BeneficiaryStatusDto(success: $success, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$BeneficiaryStatusDtoCopyWith<$Res>
    implements $BeneficiaryStatusDtoCopyWith<$Res> {
  factory _$BeneficiaryStatusDtoCopyWith(_BeneficiaryStatusDto value,
          $Res Function(_BeneficiaryStatusDto) _then) =
      __$BeneficiaryStatusDtoCopyWithImpl;
  @override
  @useResult
  $Res call({bool success, BeneficiaryStatusDataDto data});

  @override
  $BeneficiaryStatusDataDtoCopyWith<$Res> get data;
}

/// @nodoc
class __$BeneficiaryStatusDtoCopyWithImpl<$Res>
    implements _$BeneficiaryStatusDtoCopyWith<$Res> {
  __$BeneficiaryStatusDtoCopyWithImpl(this._self, this._then);

  final _BeneficiaryStatusDto _self;
  final $Res Function(_BeneficiaryStatusDto) _then;

  /// Create a copy of BeneficiaryStatusDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_BeneficiaryStatusDto(
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as BeneficiaryStatusDataDto,
    ));
  }

  /// Create a copy of BeneficiaryStatusDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BeneficiaryStatusDataDtoCopyWith<$Res> get data {
    return $BeneficiaryStatusDataDtoCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
mixin _$BeneficiaryStatusDataDto {
  UserDto get user;
  BeneficiaryDto get beneficiary;
  String get message;

  /// Create a copy of BeneficiaryStatusDataDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BeneficiaryStatusDataDtoCopyWith<BeneficiaryStatusDataDto> get copyWith =>
      _$BeneficiaryStatusDataDtoCopyWithImpl<BeneficiaryStatusDataDto>(
          this as BeneficiaryStatusDataDto, _$identity);

  /// Serializes this BeneficiaryStatusDataDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BeneficiaryStatusDataDto &&
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
    return 'BeneficiaryStatusDataDto(user: $user, beneficiary: $beneficiary, message: $message)';
  }
}

/// @nodoc
abstract mixin class $BeneficiaryStatusDataDtoCopyWith<$Res> {
  factory $BeneficiaryStatusDataDtoCopyWith(BeneficiaryStatusDataDto value,
          $Res Function(BeneficiaryStatusDataDto) _then) =
      _$BeneficiaryStatusDataDtoCopyWithImpl;
  @useResult
  $Res call({UserDto user, BeneficiaryDto beneficiary, String message});

  $UserDtoCopyWith<$Res> get user;
  $BeneficiaryDtoCopyWith<$Res> get beneficiary;
}

/// @nodoc
class _$BeneficiaryStatusDataDtoCopyWithImpl<$Res>
    implements $BeneficiaryStatusDataDtoCopyWith<$Res> {
  _$BeneficiaryStatusDataDtoCopyWithImpl(this._self, this._then);

  final BeneficiaryStatusDataDto _self;
  final $Res Function(BeneficiaryStatusDataDto) _then;

  /// Create a copy of BeneficiaryStatusDataDto
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
              as UserDto,
      beneficiary: null == beneficiary
          ? _self.beneficiary
          : beneficiary // ignore: cast_nullable_to_non_nullable
              as BeneficiaryDto,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of BeneficiaryStatusDataDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res> get user {
    return $UserDtoCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }

  /// Create a copy of BeneficiaryStatusDataDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BeneficiaryDtoCopyWith<$Res> get beneficiary {
    return $BeneficiaryDtoCopyWith<$Res>(_self.beneficiary, (value) {
      return _then(_self.copyWith(beneficiary: value));
    });
  }
}

/// Adds pattern-matching-related methods to [BeneficiaryStatusDataDto].
extension BeneficiaryStatusDataDtoPatterns on BeneficiaryStatusDataDto {
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
    TResult Function(_BeneficiaryStatusDataDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BeneficiaryStatusDataDto() when $default != null:
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
    TResult Function(_BeneficiaryStatusDataDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BeneficiaryStatusDataDto():
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
    TResult? Function(_BeneficiaryStatusDataDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BeneficiaryStatusDataDto() when $default != null:
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
    TResult Function(UserDto user, BeneficiaryDto beneficiary, String message)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BeneficiaryStatusDataDto() when $default != null:
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
    TResult Function(UserDto user, BeneficiaryDto beneficiary, String message)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BeneficiaryStatusDataDto():
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
    TResult? Function(UserDto user, BeneficiaryDto beneficiary, String message)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BeneficiaryStatusDataDto() when $default != null:
        return $default(_that.user, _that.beneficiary, _that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BeneficiaryStatusDataDto implements BeneficiaryStatusDataDto {
  const _BeneficiaryStatusDataDto(
      {required this.user, required this.beneficiary, required this.message});
  factory _BeneficiaryStatusDataDto.fromJson(Map<String, dynamic> json) =>
      _$BeneficiaryStatusDataDtoFromJson(json);

  @override
  final UserDto user;
  @override
  final BeneficiaryDto beneficiary;
  @override
  final String message;

  /// Create a copy of BeneficiaryStatusDataDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BeneficiaryStatusDataDtoCopyWith<_BeneficiaryStatusDataDto> get copyWith =>
      __$BeneficiaryStatusDataDtoCopyWithImpl<_BeneficiaryStatusDataDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BeneficiaryStatusDataDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BeneficiaryStatusDataDto &&
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
    return 'BeneficiaryStatusDataDto(user: $user, beneficiary: $beneficiary, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$BeneficiaryStatusDataDtoCopyWith<$Res>
    implements $BeneficiaryStatusDataDtoCopyWith<$Res> {
  factory _$BeneficiaryStatusDataDtoCopyWith(_BeneficiaryStatusDataDto value,
          $Res Function(_BeneficiaryStatusDataDto) _then) =
      __$BeneficiaryStatusDataDtoCopyWithImpl;
  @override
  @useResult
  $Res call({UserDto user, BeneficiaryDto beneficiary, String message});

  @override
  $UserDtoCopyWith<$Res> get user;
  @override
  $BeneficiaryDtoCopyWith<$Res> get beneficiary;
}

/// @nodoc
class __$BeneficiaryStatusDataDtoCopyWithImpl<$Res>
    implements _$BeneficiaryStatusDataDtoCopyWith<$Res> {
  __$BeneficiaryStatusDataDtoCopyWithImpl(this._self, this._then);

  final _BeneficiaryStatusDataDto _self;
  final $Res Function(_BeneficiaryStatusDataDto) _then;

  /// Create a copy of BeneficiaryStatusDataDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? user = null,
    Object? beneficiary = null,
    Object? message = null,
  }) {
    return _then(_BeneficiaryStatusDataDto(
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto,
      beneficiary: null == beneficiary
          ? _self.beneficiary
          : beneficiary // ignore: cast_nullable_to_non_nullable
              as BeneficiaryDto,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of BeneficiaryStatusDataDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res> get user {
    return $UserDtoCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }

  /// Create a copy of BeneficiaryStatusDataDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BeneficiaryDtoCopyWith<$Res> get beneficiary {
    return $BeneficiaryDtoCopyWith<$Res>(_self.beneficiary, (value) {
      return _then(_self.copyWith(beneficiary: value));
    });
  }
}

/// @nodoc
mixin _$UserDto {
  int get id;
  String get name;
  String get firstName;
  String get lastName;
  String get email;
  String get phoneNumber;
  String get role;

  /// Create a copy of UserDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<UserDto> get copyWith =>
      _$UserDtoCopyWithImpl<UserDto>(this as UserDto, _$identity);

  /// Serializes this UserDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserDto &&
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
    return 'UserDto(id: $id, name: $name, firstName: $firstName, lastName: $lastName, email: $email, phoneNumber: $phoneNumber, role: $role)';
  }
}

/// @nodoc
abstract mixin class $UserDtoCopyWith<$Res> {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) _then) =
      _$UserDtoCopyWithImpl;
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
class _$UserDtoCopyWithImpl<$Res> implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._self, this._then);

  final UserDto _self;
  final $Res Function(UserDto) _then;

  /// Create a copy of UserDto
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

/// Adds pattern-matching-related methods to [UserDto].
extension UserDtoPatterns on UserDto {
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
    TResult Function(_UserDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserDto() when $default != null:
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
    TResult Function(_UserDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserDto():
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
    TResult? Function(_UserDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserDto() when $default != null:
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
      case _UserDto() when $default != null:
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
      case _UserDto():
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
      case _UserDto() when $default != null:
        return $default(_that.id, _that.name, _that.firstName, _that.lastName,
            _that.email, _that.phoneNumber, _that.role);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UserDto implements UserDto {
  const _UserDto(
      {required this.id,
      required this.name,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.phoneNumber,
      required this.role});
  factory _UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

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

  /// Create a copy of UserDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserDtoCopyWith<_UserDto> get copyWith =>
      __$UserDtoCopyWithImpl<_UserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserDto &&
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
    return 'UserDto(id: $id, name: $name, firstName: $firstName, lastName: $lastName, email: $email, phoneNumber: $phoneNumber, role: $role)';
  }
}

/// @nodoc
abstract mixin class _$UserDtoCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$UserDtoCopyWith(_UserDto value, $Res Function(_UserDto) _then) =
      __$UserDtoCopyWithImpl;
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
class __$UserDtoCopyWithImpl<$Res> implements _$UserDtoCopyWith<$Res> {
  __$UserDtoCopyWithImpl(this._self, this._then);

  final _UserDto _self;
  final $Res Function(_UserDto) _then;

  /// Create a copy of UserDto
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
    return _then(_UserDto(
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
mixin _$BeneficiaryDto {
  int get id;
  String get status;
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

  /// Create a copy of BeneficiaryDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BeneficiaryDtoCopyWith<BeneficiaryDto> get copyWith =>
      _$BeneficiaryDtoCopyWithImpl<BeneficiaryDto>(
          this as BeneficiaryDto, _$identity);

  /// Serializes this BeneficiaryDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BeneficiaryDto &&
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
    return 'BeneficiaryDto(id: $id, status: $status, familySize: $familySize, address: $address, city: $city, state: $state, zipCode: $zipCode, affectedEvent: $affectedEvent, statement: $statement, familyPhotoUrl: $familyPhotoUrl, submittedAt: $submittedAt, processedAt: $processedAt)';
  }
}

/// @nodoc
abstract mixin class $BeneficiaryDtoCopyWith<$Res> {
  factory $BeneficiaryDtoCopyWith(
          BeneficiaryDto value, $Res Function(BeneficiaryDto) _then) =
      _$BeneficiaryDtoCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String status,
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
class _$BeneficiaryDtoCopyWithImpl<$Res>
    implements $BeneficiaryDtoCopyWith<$Res> {
  _$BeneficiaryDtoCopyWithImpl(this._self, this._then);

  final BeneficiaryDto _self;
  final $Res Function(BeneficiaryDto) _then;

  /// Create a copy of BeneficiaryDto
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
              as String,
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

/// Adds pattern-matching-related methods to [BeneficiaryDto].
extension BeneficiaryDtoPatterns on BeneficiaryDto {
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
    TResult Function(_BeneficiaryDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BeneficiaryDto() when $default != null:
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
    TResult Function(_BeneficiaryDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BeneficiaryDto():
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
    TResult? Function(_BeneficiaryDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BeneficiaryDto() when $default != null:
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
            String status,
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
      case _BeneficiaryDto() when $default != null:
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
            String status,
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
      case _BeneficiaryDto():
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
            String status,
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
      case _BeneficiaryDto() when $default != null:
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
class _BeneficiaryDto implements BeneficiaryDto {
  const _BeneficiaryDto(
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
  factory _BeneficiaryDto.fromJson(Map<String, dynamic> json) =>
      _$BeneficiaryDtoFromJson(json);

  @override
  final int id;
  @override
  final String status;
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

  /// Create a copy of BeneficiaryDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BeneficiaryDtoCopyWith<_BeneficiaryDto> get copyWith =>
      __$BeneficiaryDtoCopyWithImpl<_BeneficiaryDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BeneficiaryDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BeneficiaryDto &&
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
    return 'BeneficiaryDto(id: $id, status: $status, familySize: $familySize, address: $address, city: $city, state: $state, zipCode: $zipCode, affectedEvent: $affectedEvent, statement: $statement, familyPhotoUrl: $familyPhotoUrl, submittedAt: $submittedAt, processedAt: $processedAt)';
  }
}

/// @nodoc
abstract mixin class _$BeneficiaryDtoCopyWith<$Res>
    implements $BeneficiaryDtoCopyWith<$Res> {
  factory _$BeneficiaryDtoCopyWith(
          _BeneficiaryDto value, $Res Function(_BeneficiaryDto) _then) =
      __$BeneficiaryDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String status,
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
class __$BeneficiaryDtoCopyWithImpl<$Res>
    implements _$BeneficiaryDtoCopyWith<$Res> {
  __$BeneficiaryDtoCopyWithImpl(this._self, this._then);

  final _BeneficiaryDto _self;
  final $Res Function(_BeneficiaryDto) _then;

  /// Create a copy of BeneficiaryDto
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
    return _then(_BeneficiaryDto(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
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
