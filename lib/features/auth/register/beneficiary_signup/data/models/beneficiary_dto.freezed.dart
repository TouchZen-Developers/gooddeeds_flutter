// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'beneficiary_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BeneficiaryDto {
  int get id;
  @JsonKey(name: 'family_size')
  String get familySize;
  String get address;
  String get city;
  String get state;
  @JsonKey(name: 'zip_code')
  String get zipCode;
  @JsonKey(name: 'affected_event')
  String get affectedEvent;
  String get statement;
  @JsonKey(name: 'family_photo_url')
  String? get familyPhotoUrl;

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
                other.familyPhotoUrl == familyPhotoUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, familySize, address, city,
      state, zipCode, affectedEvent, statement, familyPhotoUrl);

  @override
  String toString() {
    return 'BeneficiaryDto(id: $id, familySize: $familySize, address: $address, city: $city, state: $state, zipCode: $zipCode, affectedEvent: $affectedEvent, statement: $statement, familyPhotoUrl: $familyPhotoUrl)';
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
      @JsonKey(name: 'family_size') String familySize,
      String address,
      String city,
      String state,
      @JsonKey(name: 'zip_code') String zipCode,
      @JsonKey(name: 'affected_event') String affectedEvent,
      String statement,
      @JsonKey(name: 'family_photo_url') String? familyPhotoUrl});
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
    Object? familySize = null,
    Object? address = null,
    Object? city = null,
    Object? state = null,
    Object? zipCode = null,
    Object? affectedEvent = null,
    Object? statement = null,
    Object? familyPhotoUrl = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      familySize: null == familySize
          ? _self.familySize
          : familySize // ignore: cast_nullable_to_non_nullable
              as String,
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
            @JsonKey(name: 'family_size') String familySize,
            String address,
            String city,
            String state,
            @JsonKey(name: 'zip_code') String zipCode,
            @JsonKey(name: 'affected_event') String affectedEvent,
            String statement,
            @JsonKey(name: 'family_photo_url') String? familyPhotoUrl)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BeneficiaryDto() when $default != null:
        return $default(
            _that.id,
            _that.familySize,
            _that.address,
            _that.city,
            _that.state,
            _that.zipCode,
            _that.affectedEvent,
            _that.statement,
            _that.familyPhotoUrl);
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
            @JsonKey(name: 'family_size') String familySize,
            String address,
            String city,
            String state,
            @JsonKey(name: 'zip_code') String zipCode,
            @JsonKey(name: 'affected_event') String affectedEvent,
            String statement,
            @JsonKey(name: 'family_photo_url') String? familyPhotoUrl)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BeneficiaryDto():
        return $default(
            _that.id,
            _that.familySize,
            _that.address,
            _that.city,
            _that.state,
            _that.zipCode,
            _that.affectedEvent,
            _that.statement,
            _that.familyPhotoUrl);
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
            @JsonKey(name: 'family_size') String familySize,
            String address,
            String city,
            String state,
            @JsonKey(name: 'zip_code') String zipCode,
            @JsonKey(name: 'affected_event') String affectedEvent,
            String statement,
            @JsonKey(name: 'family_photo_url') String? familyPhotoUrl)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BeneficiaryDto() when $default != null:
        return $default(
            _that.id,
            _that.familySize,
            _that.address,
            _that.city,
            _that.state,
            _that.zipCode,
            _that.affectedEvent,
            _that.statement,
            _that.familyPhotoUrl);
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
      @JsonKey(name: 'family_size') required this.familySize,
      required this.address,
      required this.city,
      required this.state,
      @JsonKey(name: 'zip_code') required this.zipCode,
      @JsonKey(name: 'affected_event') required this.affectedEvent,
      required this.statement,
      @JsonKey(name: 'family_photo_url') this.familyPhotoUrl});
  factory _BeneficiaryDto.fromJson(Map<String, dynamic> json) =>
      _$BeneficiaryDtoFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'family_size')
  final String familySize;
  @override
  final String address;
  @override
  final String city;
  @override
  final String state;
  @override
  @JsonKey(name: 'zip_code')
  final String zipCode;
  @override
  @JsonKey(name: 'affected_event')
  final String affectedEvent;
  @override
  final String statement;
  @override
  @JsonKey(name: 'family_photo_url')
  final String? familyPhotoUrl;

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
                other.familyPhotoUrl == familyPhotoUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, familySize, address, city,
      state, zipCode, affectedEvent, statement, familyPhotoUrl);

  @override
  String toString() {
    return 'BeneficiaryDto(id: $id, familySize: $familySize, address: $address, city: $city, state: $state, zipCode: $zipCode, affectedEvent: $affectedEvent, statement: $statement, familyPhotoUrl: $familyPhotoUrl)';
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
      @JsonKey(name: 'family_size') String familySize,
      String address,
      String city,
      String state,
      @JsonKey(name: 'zip_code') String zipCode,
      @JsonKey(name: 'affected_event') String affectedEvent,
      String statement,
      @JsonKey(name: 'family_photo_url') String? familyPhotoUrl});
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
    Object? familySize = null,
    Object? address = null,
    Object? city = null,
    Object? state = null,
    Object? zipCode = null,
    Object? affectedEvent = null,
    Object? statement = null,
    Object? familyPhotoUrl = freezed,
  }) {
    return _then(_BeneficiaryDto(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      familySize: null == familySize
          ? _self.familySize
          : familySize // ignore: cast_nullable_to_non_nullable
              as String,
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
    ));
  }
}

// dart format on
