// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complete_profile_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CompleteProfileRequestEntity {
  String get firstName;
  String get lastName;
  String get phoneNumber;
  String? get familySize;
  String? get address;
  String? get city;
  String? get state;
  String? get zipCode;
  String? get affectedEvent;
  String? get statement;

  /// Create a copy of CompleteProfileRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CompleteProfileRequestEntityCopyWith<CompleteProfileRequestEntity>
      get copyWith => _$CompleteProfileRequestEntityCopyWithImpl<
              CompleteProfileRequestEntity>(
          this as CompleteProfileRequestEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CompleteProfileRequestEntity &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.familySize, familySize) ||
                other.familySize == familySize) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode) &&
            (identical(other.affectedEvent, affectedEvent) ||
                other.affectedEvent == affectedEvent) &&
            (identical(other.statement, statement) ||
                other.statement == statement));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, phoneNumber,
      familySize, address, city, state, zipCode, affectedEvent, statement);

  @override
  String toString() {
    return 'CompleteProfileRequestEntity(firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber, familySize: $familySize, address: $address, city: $city, state: $state, zipCode: $zipCode, affectedEvent: $affectedEvent, statement: $statement)';
  }
}

/// @nodoc
abstract mixin class $CompleteProfileRequestEntityCopyWith<$Res> {
  factory $CompleteProfileRequestEntityCopyWith(
          CompleteProfileRequestEntity value,
          $Res Function(CompleteProfileRequestEntity) _then) =
      _$CompleteProfileRequestEntityCopyWithImpl;
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String phoneNumber,
      String? familySize,
      String? address,
      String? city,
      String? state,
      String? zipCode,
      String? affectedEvent,
      String? statement});
}

/// @nodoc
class _$CompleteProfileRequestEntityCopyWithImpl<$Res>
    implements $CompleteProfileRequestEntityCopyWith<$Res> {
  _$CompleteProfileRequestEntityCopyWithImpl(this._self, this._then);

  final CompleteProfileRequestEntity _self;
  final $Res Function(CompleteProfileRequestEntity) _then;

  /// Create a copy of CompleteProfileRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? phoneNumber = null,
    Object? familySize = freezed,
    Object? address = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? zipCode = freezed,
    Object? affectedEvent = freezed,
    Object? statement = freezed,
  }) {
    return _then(_self.copyWith(
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      familySize: freezed == familySize
          ? _self.familySize
          : familySize // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      zipCode: freezed == zipCode
          ? _self.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String?,
      affectedEvent: freezed == affectedEvent
          ? _self.affectedEvent
          : affectedEvent // ignore: cast_nullable_to_non_nullable
              as String?,
      statement: freezed == statement
          ? _self.statement
          : statement // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CompleteProfileRequestEntity].
extension CompleteProfileRequestEntityPatterns on CompleteProfileRequestEntity {
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
    TResult Function(_CompleteProfileRequestEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CompleteProfileRequestEntity() when $default != null:
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
    TResult Function(_CompleteProfileRequestEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CompleteProfileRequestEntity():
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
    TResult? Function(_CompleteProfileRequestEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CompleteProfileRequestEntity() when $default != null:
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
            String firstName,
            String lastName,
            String phoneNumber,
            String? familySize,
            String? address,
            String? city,
            String? state,
            String? zipCode,
            String? affectedEvent,
            String? statement)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CompleteProfileRequestEntity() when $default != null:
        return $default(
            _that.firstName,
            _that.lastName,
            _that.phoneNumber,
            _that.familySize,
            _that.address,
            _that.city,
            _that.state,
            _that.zipCode,
            _that.affectedEvent,
            _that.statement);
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
            String firstName,
            String lastName,
            String phoneNumber,
            String? familySize,
            String? address,
            String? city,
            String? state,
            String? zipCode,
            String? affectedEvent,
            String? statement)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CompleteProfileRequestEntity():
        return $default(
            _that.firstName,
            _that.lastName,
            _that.phoneNumber,
            _that.familySize,
            _that.address,
            _that.city,
            _that.state,
            _that.zipCode,
            _that.affectedEvent,
            _that.statement);
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
            String firstName,
            String lastName,
            String phoneNumber,
            String? familySize,
            String? address,
            String? city,
            String? state,
            String? zipCode,
            String? affectedEvent,
            String? statement)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CompleteProfileRequestEntity() when $default != null:
        return $default(
            _that.firstName,
            _that.lastName,
            _that.phoneNumber,
            _that.familySize,
            _that.address,
            _that.city,
            _that.state,
            _that.zipCode,
            _that.affectedEvent,
            _that.statement);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _CompleteProfileRequestEntity implements CompleteProfileRequestEntity {
  const _CompleteProfileRequestEntity(
      {required this.firstName,
      required this.lastName,
      required this.phoneNumber,
      this.familySize,
      this.address,
      this.city,
      this.state,
      this.zipCode,
      this.affectedEvent,
      this.statement});

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String phoneNumber;
  @override
  final String? familySize;
  @override
  final String? address;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? zipCode;
  @override
  final String? affectedEvent;
  @override
  final String? statement;

  /// Create a copy of CompleteProfileRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CompleteProfileRequestEntityCopyWith<_CompleteProfileRequestEntity>
      get copyWith => __$CompleteProfileRequestEntityCopyWithImpl<
          _CompleteProfileRequestEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CompleteProfileRequestEntity &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.familySize, familySize) ||
                other.familySize == familySize) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode) &&
            (identical(other.affectedEvent, affectedEvent) ||
                other.affectedEvent == affectedEvent) &&
            (identical(other.statement, statement) ||
                other.statement == statement));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, phoneNumber,
      familySize, address, city, state, zipCode, affectedEvent, statement);

  @override
  String toString() {
    return 'CompleteProfileRequestEntity(firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber, familySize: $familySize, address: $address, city: $city, state: $state, zipCode: $zipCode, affectedEvent: $affectedEvent, statement: $statement)';
  }
}

/// @nodoc
abstract mixin class _$CompleteProfileRequestEntityCopyWith<$Res>
    implements $CompleteProfileRequestEntityCopyWith<$Res> {
  factory _$CompleteProfileRequestEntityCopyWith(
          _CompleteProfileRequestEntity value,
          $Res Function(_CompleteProfileRequestEntity) _then) =
      __$CompleteProfileRequestEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String phoneNumber,
      String? familySize,
      String? address,
      String? city,
      String? state,
      String? zipCode,
      String? affectedEvent,
      String? statement});
}

/// @nodoc
class __$CompleteProfileRequestEntityCopyWithImpl<$Res>
    implements _$CompleteProfileRequestEntityCopyWith<$Res> {
  __$CompleteProfileRequestEntityCopyWithImpl(this._self, this._then);

  final _CompleteProfileRequestEntity _self;
  final $Res Function(_CompleteProfileRequestEntity) _then;

  /// Create a copy of CompleteProfileRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? phoneNumber = null,
    Object? familySize = freezed,
    Object? address = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? zipCode = freezed,
    Object? affectedEvent = freezed,
    Object? statement = freezed,
  }) {
    return _then(_CompleteProfileRequestEntity(
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      familySize: freezed == familySize
          ? _self.familySize
          : familySize // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      zipCode: freezed == zipCode
          ? _self.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String?,
      affectedEvent: freezed == affectedEvent
          ? _self.affectedEvent
          : affectedEvent // ignore: cast_nullable_to_non_nullable
              as String?,
      statement: freezed == statement
          ? _self.statement
          : statement // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$CompleteProfileResponseEntity {
  bool get success;
  String get message;
  String get nextStep;
  Map<String, dynamic>? get user;

  /// Create a copy of CompleteProfileResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CompleteProfileResponseEntityCopyWith<CompleteProfileResponseEntity>
      get copyWith => _$CompleteProfileResponseEntityCopyWithImpl<
              CompleteProfileResponseEntity>(
          this as CompleteProfileResponseEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CompleteProfileResponseEntity &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.nextStep, nextStep) ||
                other.nextStep == nextStep) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, success, message, nextStep,
      const DeepCollectionEquality().hash(user));

  @override
  String toString() {
    return 'CompleteProfileResponseEntity(success: $success, message: $message, nextStep: $nextStep, user: $user)';
  }
}

/// @nodoc
abstract mixin class $CompleteProfileResponseEntityCopyWith<$Res> {
  factory $CompleteProfileResponseEntityCopyWith(
          CompleteProfileResponseEntity value,
          $Res Function(CompleteProfileResponseEntity) _then) =
      _$CompleteProfileResponseEntityCopyWithImpl;
  @useResult
  $Res call(
      {bool success,
      String message,
      String nextStep,
      Map<String, dynamic>? user});
}

/// @nodoc
class _$CompleteProfileResponseEntityCopyWithImpl<$Res>
    implements $CompleteProfileResponseEntityCopyWith<$Res> {
  _$CompleteProfileResponseEntityCopyWithImpl(this._self, this._then);

  final CompleteProfileResponseEntity _self;
  final $Res Function(CompleteProfileResponseEntity) _then;

  /// Create a copy of CompleteProfileResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? nextStep = null,
    Object? user = freezed,
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
      nextStep: null == nextStep
          ? _self.nextStep
          : nextStep // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CompleteProfileResponseEntity].
extension CompleteProfileResponseEntityPatterns
    on CompleteProfileResponseEntity {
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
    TResult Function(_CompleteProfileResponseEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CompleteProfileResponseEntity() when $default != null:
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
    TResult Function(_CompleteProfileResponseEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CompleteProfileResponseEntity():
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
    TResult? Function(_CompleteProfileResponseEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CompleteProfileResponseEntity() when $default != null:
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
    TResult Function(bool success, String message, String nextStep,
            Map<String, dynamic>? user)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CompleteProfileResponseEntity() when $default != null:
        return $default(
            _that.success, _that.message, _that.nextStep, _that.user);
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
    TResult Function(bool success, String message, String nextStep,
            Map<String, dynamic>? user)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CompleteProfileResponseEntity():
        return $default(
            _that.success, _that.message, _that.nextStep, _that.user);
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
    TResult? Function(bool success, String message, String nextStep,
            Map<String, dynamic>? user)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CompleteProfileResponseEntity() when $default != null:
        return $default(
            _that.success, _that.message, _that.nextStep, _that.user);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _CompleteProfileResponseEntity implements CompleteProfileResponseEntity {
  const _CompleteProfileResponseEntity(
      {required this.success,
      required this.message,
      required this.nextStep,
      final Map<String, dynamic>? user})
      : _user = user;

  @override
  final bool success;
  @override
  final String message;
  @override
  final String nextStep;
  final Map<String, dynamic>? _user;
  @override
  Map<String, dynamic>? get user {
    final value = _user;
    if (value == null) return null;
    if (_user is EqualUnmodifiableMapView) return _user;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of CompleteProfileResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CompleteProfileResponseEntityCopyWith<_CompleteProfileResponseEntity>
      get copyWith => __$CompleteProfileResponseEntityCopyWithImpl<
          _CompleteProfileResponseEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CompleteProfileResponseEntity &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.nextStep, nextStep) ||
                other.nextStep == nextStep) &&
            const DeepCollectionEquality().equals(other._user, _user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, success, message, nextStep,
      const DeepCollectionEquality().hash(_user));

  @override
  String toString() {
    return 'CompleteProfileResponseEntity(success: $success, message: $message, nextStep: $nextStep, user: $user)';
  }
}

/// @nodoc
abstract mixin class _$CompleteProfileResponseEntityCopyWith<$Res>
    implements $CompleteProfileResponseEntityCopyWith<$Res> {
  factory _$CompleteProfileResponseEntityCopyWith(
          _CompleteProfileResponseEntity value,
          $Res Function(_CompleteProfileResponseEntity) _then) =
      __$CompleteProfileResponseEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool success,
      String message,
      String nextStep,
      Map<String, dynamic>? user});
}

/// @nodoc
class __$CompleteProfileResponseEntityCopyWithImpl<$Res>
    implements _$CompleteProfileResponseEntityCopyWith<$Res> {
  __$CompleteProfileResponseEntityCopyWithImpl(this._self, this._then);

  final _CompleteProfileResponseEntity _self;
  final $Res Function(_CompleteProfileResponseEntity) _then;

  /// Create a copy of CompleteProfileResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? nextStep = null,
    Object? user = freezed,
  }) {
    return _then(_CompleteProfileResponseEntity(
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      nextStep: null == nextStep
          ? _self.nextStep
          : nextStep // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _self._user
          : user // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

// dart format on
