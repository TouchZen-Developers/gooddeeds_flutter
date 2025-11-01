// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfileDataDto {
  ProfileUserDto get user;

  /// Create a copy of ProfileDataDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProfileDataDtoCopyWith<ProfileDataDto> get copyWith =>
      _$ProfileDataDtoCopyWithImpl<ProfileDataDto>(
          this as ProfileDataDto, _$identity);

  /// Serializes this ProfileDataDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProfileDataDto &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user);

  @override
  String toString() {
    return 'ProfileDataDto(user: $user)';
  }
}

/// @nodoc
abstract mixin class $ProfileDataDtoCopyWith<$Res> {
  factory $ProfileDataDtoCopyWith(
          ProfileDataDto value, $Res Function(ProfileDataDto) _then) =
      _$ProfileDataDtoCopyWithImpl;
  @useResult
  $Res call({ProfileUserDto user});

  $ProfileUserDtoCopyWith<$Res> get user;
}

/// @nodoc
class _$ProfileDataDtoCopyWithImpl<$Res>
    implements $ProfileDataDtoCopyWith<$Res> {
  _$ProfileDataDtoCopyWithImpl(this._self, this._then);

  final ProfileDataDto _self;
  final $Res Function(ProfileDataDto) _then;

  /// Create a copy of ProfileDataDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_self.copyWith(
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as ProfileUserDto,
    ));
  }

  /// Create a copy of ProfileDataDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileUserDtoCopyWith<$Res> get user {
    return $ProfileUserDtoCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ProfileDataDto].
extension ProfileDataDtoPatterns on ProfileDataDto {
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
    TResult Function(_ProfileDataDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProfileDataDto() when $default != null:
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
    TResult Function(_ProfileDataDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProfileDataDto():
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
    TResult? Function(_ProfileDataDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProfileDataDto() when $default != null:
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
    TResult Function(ProfileUserDto user)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProfileDataDto() when $default != null:
        return $default(_that.user);
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
    TResult Function(ProfileUserDto user) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProfileDataDto():
        return $default(_that.user);
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
    TResult? Function(ProfileUserDto user)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProfileDataDto() when $default != null:
        return $default(_that.user);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ProfileDataDto implements ProfileDataDto {
  const _ProfileDataDto({required this.user});
  factory _ProfileDataDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileDataDtoFromJson(json);

  @override
  final ProfileUserDto user;

  /// Create a copy of ProfileDataDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProfileDataDtoCopyWith<_ProfileDataDto> get copyWith =>
      __$ProfileDataDtoCopyWithImpl<_ProfileDataDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProfileDataDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProfileDataDto &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user);

  @override
  String toString() {
    return 'ProfileDataDto(user: $user)';
  }
}

/// @nodoc
abstract mixin class _$ProfileDataDtoCopyWith<$Res>
    implements $ProfileDataDtoCopyWith<$Res> {
  factory _$ProfileDataDtoCopyWith(
          _ProfileDataDto value, $Res Function(_ProfileDataDto) _then) =
      __$ProfileDataDtoCopyWithImpl;
  @override
  @useResult
  $Res call({ProfileUserDto user});

  @override
  $ProfileUserDtoCopyWith<$Res> get user;
}

/// @nodoc
class __$ProfileDataDtoCopyWithImpl<$Res>
    implements _$ProfileDataDtoCopyWith<$Res> {
  __$ProfileDataDtoCopyWithImpl(this._self, this._then);

  final _ProfileDataDto _self;
  final $Res Function(_ProfileDataDto) _then;

  /// Create a copy of ProfileDataDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? user = null,
  }) {
    return _then(_ProfileDataDto(
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as ProfileUserDto,
    ));
  }

  /// Create a copy of ProfileDataDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileUserDtoCopyWith<$Res> get user {
    return $ProfileUserDtoCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// @nodoc
mixin _$ProfileUserDto {
  int get id;
  String get name;
  String get email;
  String get role;

  /// Create a copy of ProfileUserDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProfileUserDtoCopyWith<ProfileUserDto> get copyWith =>
      _$ProfileUserDtoCopyWithImpl<ProfileUserDto>(
          this as ProfileUserDto, _$identity);

  /// Serializes this ProfileUserDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProfileUserDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, email, role);

  @override
  String toString() {
    return 'ProfileUserDto(id: $id, name: $name, email: $email, role: $role)';
  }
}

/// @nodoc
abstract mixin class $ProfileUserDtoCopyWith<$Res> {
  factory $ProfileUserDtoCopyWith(
          ProfileUserDto value, $Res Function(ProfileUserDto) _then) =
      _$ProfileUserDtoCopyWithImpl;
  @useResult
  $Res call({int id, String name, String email, String role});
}

/// @nodoc
class _$ProfileUserDtoCopyWithImpl<$Res>
    implements $ProfileUserDtoCopyWith<$Res> {
  _$ProfileUserDtoCopyWithImpl(this._self, this._then);

  final ProfileUserDto _self;
  final $Res Function(ProfileUserDto) _then;

  /// Create a copy of ProfileUserDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
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
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [ProfileUserDto].
extension ProfileUserDtoPatterns on ProfileUserDto {
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
    TResult Function(_ProfileUserDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProfileUserDto() when $default != null:
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
    TResult Function(_ProfileUserDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProfileUserDto():
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
    TResult? Function(_ProfileUserDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProfileUserDto() when $default != null:
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
    TResult Function(int id, String name, String email, String role)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProfileUserDto() when $default != null:
        return $default(_that.id, _that.name, _that.email, _that.role);
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
    TResult Function(int id, String name, String email, String role) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProfileUserDto():
        return $default(_that.id, _that.name, _that.email, _that.role);
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
    TResult? Function(int id, String name, String email, String role)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProfileUserDto() when $default != null:
        return $default(_that.id, _that.name, _that.email, _that.role);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ProfileUserDto implements ProfileUserDto {
  const _ProfileUserDto(
      {required this.id,
      required this.name,
      required this.email,
      required this.role});
  factory _ProfileUserDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileUserDtoFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String email;
  @override
  final String role;

  /// Create a copy of ProfileUserDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProfileUserDtoCopyWith<_ProfileUserDto> get copyWith =>
      __$ProfileUserDtoCopyWithImpl<_ProfileUserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProfileUserDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProfileUserDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, email, role);

  @override
  String toString() {
    return 'ProfileUserDto(id: $id, name: $name, email: $email, role: $role)';
  }
}

/// @nodoc
abstract mixin class _$ProfileUserDtoCopyWith<$Res>
    implements $ProfileUserDtoCopyWith<$Res> {
  factory _$ProfileUserDtoCopyWith(
          _ProfileUserDto value, $Res Function(_ProfileUserDto) _then) =
      __$ProfileUserDtoCopyWithImpl;
  @override
  @useResult
  $Res call({int id, String name, String email, String role});
}

/// @nodoc
class __$ProfileUserDtoCopyWithImpl<$Res>
    implements _$ProfileUserDtoCopyWith<$Res> {
  __$ProfileUserDtoCopyWithImpl(this._self, this._then);

  final _ProfileUserDto _self;
  final $Res Function(_ProfileUserDto) _then;

  /// Create a copy of ProfileUserDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? role = null,
  }) {
    return _then(_ProfileUserDto(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
