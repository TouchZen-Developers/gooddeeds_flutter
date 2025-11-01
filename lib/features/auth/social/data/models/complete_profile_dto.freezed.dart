// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complete_profile_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CompleteProfileRequestDto {
  @JsonKey(name: 'first_name')
  String get firstName;
  @JsonKey(name: 'last_name')
  String get lastName;
  @JsonKey(name: 'phone_number')
  String get phoneNumber;
  @JsonKey(name: 'family_size')
  String? get familySize;
  String? get address;
  String? get city;
  String? get state;
  @JsonKey(name: 'zip_code')
  String? get zipCode;
  @JsonKey(name: 'affected_event')
  String? get affectedEvent;
  String? get statement;

  /// Create a copy of CompleteProfileRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CompleteProfileRequestDtoCopyWith<CompleteProfileRequestDto> get copyWith =>
      _$CompleteProfileRequestDtoCopyWithImpl<CompleteProfileRequestDto>(
          this as CompleteProfileRequestDto, _$identity);

  /// Serializes this CompleteProfileRequestDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CompleteProfileRequestDto &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, phoneNumber,
      familySize, address, city, state, zipCode, affectedEvent, statement);

  @override
  String toString() {
    return 'CompleteProfileRequestDto(firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber, familySize: $familySize, address: $address, city: $city, state: $state, zipCode: $zipCode, affectedEvent: $affectedEvent, statement: $statement)';
  }
}

/// @nodoc
abstract mixin class $CompleteProfileRequestDtoCopyWith<$Res> {
  factory $CompleteProfileRequestDtoCopyWith(CompleteProfileRequestDto value,
          $Res Function(CompleteProfileRequestDto) _then) =
      _$CompleteProfileRequestDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      @JsonKey(name: 'phone_number') String phoneNumber,
      @JsonKey(name: 'family_size') String? familySize,
      String? address,
      String? city,
      String? state,
      @JsonKey(name: 'zip_code') String? zipCode,
      @JsonKey(name: 'affected_event') String? affectedEvent,
      String? statement});
}

/// @nodoc
class _$CompleteProfileRequestDtoCopyWithImpl<$Res>
    implements $CompleteProfileRequestDtoCopyWith<$Res> {
  _$CompleteProfileRequestDtoCopyWithImpl(this._self, this._then);

  final CompleteProfileRequestDto _self;
  final $Res Function(CompleteProfileRequestDto) _then;

  /// Create a copy of CompleteProfileRequestDto
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

/// Adds pattern-matching-related methods to [CompleteProfileRequestDto].
extension CompleteProfileRequestDtoPatterns on CompleteProfileRequestDto {
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
    TResult Function(_CompleteProfileRequestDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CompleteProfileRequestDto() when $default != null:
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
    TResult Function(_CompleteProfileRequestDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CompleteProfileRequestDto():
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
    TResult? Function(_CompleteProfileRequestDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CompleteProfileRequestDto() when $default != null:
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
            @JsonKey(name: 'first_name') String firstName,
            @JsonKey(name: 'last_name') String lastName,
            @JsonKey(name: 'phone_number') String phoneNumber,
            @JsonKey(name: 'family_size') String? familySize,
            String? address,
            String? city,
            String? state,
            @JsonKey(name: 'zip_code') String? zipCode,
            @JsonKey(name: 'affected_event') String? affectedEvent,
            String? statement)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CompleteProfileRequestDto() when $default != null:
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
            @JsonKey(name: 'first_name') String firstName,
            @JsonKey(name: 'last_name') String lastName,
            @JsonKey(name: 'phone_number') String phoneNumber,
            @JsonKey(name: 'family_size') String? familySize,
            String? address,
            String? city,
            String? state,
            @JsonKey(name: 'zip_code') String? zipCode,
            @JsonKey(name: 'affected_event') String? affectedEvent,
            String? statement)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CompleteProfileRequestDto():
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
            @JsonKey(name: 'first_name') String firstName,
            @JsonKey(name: 'last_name') String lastName,
            @JsonKey(name: 'phone_number') String phoneNumber,
            @JsonKey(name: 'family_size') String? familySize,
            String? address,
            String? city,
            String? state,
            @JsonKey(name: 'zip_code') String? zipCode,
            @JsonKey(name: 'affected_event') String? affectedEvent,
            String? statement)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CompleteProfileRequestDto() when $default != null:
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
@JsonSerializable()
class _CompleteProfileRequestDto implements CompleteProfileRequestDto {
  const _CompleteProfileRequestDto(
      {@JsonKey(name: 'first_name') required this.firstName,
      @JsonKey(name: 'last_name') required this.lastName,
      @JsonKey(name: 'phone_number') required this.phoneNumber,
      @JsonKey(name: 'family_size') this.familySize,
      this.address,
      this.city,
      this.state,
      @JsonKey(name: 'zip_code') this.zipCode,
      @JsonKey(name: 'affected_event') this.affectedEvent,
      this.statement});
  factory _CompleteProfileRequestDto.fromJson(Map<String, dynamic> json) =>
      _$CompleteProfileRequestDtoFromJson(json);

  @override
  @JsonKey(name: 'first_name')
  final String firstName;
  @override
  @JsonKey(name: 'last_name')
  final String lastName;
  @override
  @JsonKey(name: 'phone_number')
  final String phoneNumber;
  @override
  @JsonKey(name: 'family_size')
  final String? familySize;
  @override
  final String? address;
  @override
  final String? city;
  @override
  final String? state;
  @override
  @JsonKey(name: 'zip_code')
  final String? zipCode;
  @override
  @JsonKey(name: 'affected_event')
  final String? affectedEvent;
  @override
  final String? statement;

  /// Create a copy of CompleteProfileRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CompleteProfileRequestDtoCopyWith<_CompleteProfileRequestDto>
      get copyWith =>
          __$CompleteProfileRequestDtoCopyWithImpl<_CompleteProfileRequestDto>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CompleteProfileRequestDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CompleteProfileRequestDto &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, phoneNumber,
      familySize, address, city, state, zipCode, affectedEvent, statement);

  @override
  String toString() {
    return 'CompleteProfileRequestDto(firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber, familySize: $familySize, address: $address, city: $city, state: $state, zipCode: $zipCode, affectedEvent: $affectedEvent, statement: $statement)';
  }
}

/// @nodoc
abstract mixin class _$CompleteProfileRequestDtoCopyWith<$Res>
    implements $CompleteProfileRequestDtoCopyWith<$Res> {
  factory _$CompleteProfileRequestDtoCopyWith(_CompleteProfileRequestDto value,
          $Res Function(_CompleteProfileRequestDto) _then) =
      __$CompleteProfileRequestDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      @JsonKey(name: 'phone_number') String phoneNumber,
      @JsonKey(name: 'family_size') String? familySize,
      String? address,
      String? city,
      String? state,
      @JsonKey(name: 'zip_code') String? zipCode,
      @JsonKey(name: 'affected_event') String? affectedEvent,
      String? statement});
}

/// @nodoc
class __$CompleteProfileRequestDtoCopyWithImpl<$Res>
    implements _$CompleteProfileRequestDtoCopyWith<$Res> {
  __$CompleteProfileRequestDtoCopyWithImpl(this._self, this._then);

  final _CompleteProfileRequestDto _self;
  final $Res Function(_CompleteProfileRequestDto) _then;

  /// Create a copy of CompleteProfileRequestDto
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
    return _then(_CompleteProfileRequestDto(
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
mixin _$CompleteProfileResponseDto {
  bool get success;
  String get message;
  @JsonKey(name: 'next_step')
  String get nextStep;
  Map<String, dynamic>? get user;

  /// Create a copy of CompleteProfileResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CompleteProfileResponseDtoCopyWith<CompleteProfileResponseDto>
      get copyWith =>
          _$CompleteProfileResponseDtoCopyWithImpl<CompleteProfileResponseDto>(
              this as CompleteProfileResponseDto, _$identity);

  /// Serializes this CompleteProfileResponseDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CompleteProfileResponseDto &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.nextStep, nextStep) ||
                other.nextStep == nextStep) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, nextStep,
      const DeepCollectionEquality().hash(user));

  @override
  String toString() {
    return 'CompleteProfileResponseDto(success: $success, message: $message, nextStep: $nextStep, user: $user)';
  }
}

/// @nodoc
abstract mixin class $CompleteProfileResponseDtoCopyWith<$Res> {
  factory $CompleteProfileResponseDtoCopyWith(CompleteProfileResponseDto value,
          $Res Function(CompleteProfileResponseDto) _then) =
      _$CompleteProfileResponseDtoCopyWithImpl;
  @useResult
  $Res call(
      {bool success,
      String message,
      @JsonKey(name: 'next_step') String nextStep,
      Map<String, dynamic>? user});
}

/// @nodoc
class _$CompleteProfileResponseDtoCopyWithImpl<$Res>
    implements $CompleteProfileResponseDtoCopyWith<$Res> {
  _$CompleteProfileResponseDtoCopyWithImpl(this._self, this._then);

  final CompleteProfileResponseDto _self;
  final $Res Function(CompleteProfileResponseDto) _then;

  /// Create a copy of CompleteProfileResponseDto
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

/// Adds pattern-matching-related methods to [CompleteProfileResponseDto].
extension CompleteProfileResponseDtoPatterns on CompleteProfileResponseDto {
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
    TResult Function(_CompleteProfileResponseDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CompleteProfileResponseDto() when $default != null:
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
    TResult Function(_CompleteProfileResponseDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CompleteProfileResponseDto():
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
    TResult? Function(_CompleteProfileResponseDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CompleteProfileResponseDto() when $default != null:
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
            bool success,
            String message,
            @JsonKey(name: 'next_step') String nextStep,
            Map<String, dynamic>? user)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CompleteProfileResponseDto() when $default != null:
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
    TResult Function(
            bool success,
            String message,
            @JsonKey(name: 'next_step') String nextStep,
            Map<String, dynamic>? user)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CompleteProfileResponseDto():
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
    TResult? Function(
            bool success,
            String message,
            @JsonKey(name: 'next_step') String nextStep,
            Map<String, dynamic>? user)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CompleteProfileResponseDto() when $default != null:
        return $default(
            _that.success, _that.message, _that.nextStep, _that.user);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CompleteProfileResponseDto implements CompleteProfileResponseDto {
  const _CompleteProfileResponseDto(
      {required this.success,
      required this.message,
      @JsonKey(name: 'next_step') required this.nextStep,
      final Map<String, dynamic>? user})
      : _user = user;
  factory _CompleteProfileResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CompleteProfileResponseDtoFromJson(json);

  @override
  final bool success;
  @override
  final String message;
  @override
  @JsonKey(name: 'next_step')
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

  /// Create a copy of CompleteProfileResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CompleteProfileResponseDtoCopyWith<_CompleteProfileResponseDto>
      get copyWith => __$CompleteProfileResponseDtoCopyWithImpl<
          _CompleteProfileResponseDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CompleteProfileResponseDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CompleteProfileResponseDto &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.nextStep, nextStep) ||
                other.nextStep == nextStep) &&
            const DeepCollectionEquality().equals(other._user, _user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, nextStep,
      const DeepCollectionEquality().hash(_user));

  @override
  String toString() {
    return 'CompleteProfileResponseDto(success: $success, message: $message, nextStep: $nextStep, user: $user)';
  }
}

/// @nodoc
abstract mixin class _$CompleteProfileResponseDtoCopyWith<$Res>
    implements $CompleteProfileResponseDtoCopyWith<$Res> {
  factory _$CompleteProfileResponseDtoCopyWith(
          _CompleteProfileResponseDto value,
          $Res Function(_CompleteProfileResponseDto) _then) =
      __$CompleteProfileResponseDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool success,
      String message,
      @JsonKey(name: 'next_step') String nextStep,
      Map<String, dynamic>? user});
}

/// @nodoc
class __$CompleteProfileResponseDtoCopyWithImpl<$Res>
    implements _$CompleteProfileResponseDtoCopyWith<$Res> {
  __$CompleteProfileResponseDtoCopyWithImpl(this._self, this._then);

  final _CompleteProfileResponseDto _self;
  final $Res Function(_CompleteProfileResponseDto) _then;

  /// Create a copy of CompleteProfileResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? nextStep = null,
    Object? user = freezed,
  }) {
    return _then(_CompleteProfileResponseDto(
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
