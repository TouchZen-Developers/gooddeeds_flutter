// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'beneficiary_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BeneficiaryEntity {
  int get id;
  String get familySize;
  String get address;
  String get city;
  String get state;
  String get zipCode;
  String get affectedEvent;
  String get statement;
  String? get familyPhotoUrl;

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
    return 'BeneficiaryEntity(id: $id, familySize: $familySize, address: $address, city: $city, state: $state, zipCode: $zipCode, affectedEvent: $affectedEvent, statement: $statement, familyPhotoUrl: $familyPhotoUrl)';
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
      String familySize,
      String address,
      String city,
      String state,
      String zipCode,
      String affectedEvent,
      String statement,
      String? familyPhotoUrl});
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
            String familySize,
            String address,
            String city,
            String state,
            String zipCode,
            String affectedEvent,
            String statement,
            String? familyPhotoUrl)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BeneficiaryEntity() when $default != null:
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
            String familySize,
            String address,
            String city,
            String state,
            String zipCode,
            String affectedEvent,
            String statement,
            String? familyPhotoUrl)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BeneficiaryEntity():
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
            String familySize,
            String address,
            String city,
            String state,
            String zipCode,
            String affectedEvent,
            String statement,
            String? familyPhotoUrl)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BeneficiaryEntity() when $default != null:
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
class _BeneficiaryEntity implements BeneficiaryEntity {
  const _BeneficiaryEntity(
      {required this.id,
      required this.familySize,
      required this.address,
      required this.city,
      required this.state,
      required this.zipCode,
      required this.affectedEvent,
      required this.statement,
      this.familyPhotoUrl});
  factory _BeneficiaryEntity.fromJson(Map<String, dynamic> json) =>
      _$BeneficiaryEntityFromJson(json);

  @override
  final int id;
  @override
  final String familySize;
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
    return 'BeneficiaryEntity(id: $id, familySize: $familySize, address: $address, city: $city, state: $state, zipCode: $zipCode, affectedEvent: $affectedEvent, statement: $statement, familyPhotoUrl: $familyPhotoUrl)';
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
      String familySize,
      String address,
      String city,
      String state,
      String zipCode,
      String affectedEvent,
      String statement,
      String? familyPhotoUrl});
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
    Object? familySize = null,
    Object? address = null,
    Object? city = null,
    Object? state = null,
    Object? zipCode = null,
    Object? affectedEvent = null,
    Object? statement = null,
    Object? familyPhotoUrl = freezed,
  }) {
    return _then(_BeneficiaryEntity(
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
