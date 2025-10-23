// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parent_registration_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ParentRegistrationEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ParentRegistrationEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ParentRegistrationEvent()';
  }
}

/// @nodoc
class $ParentRegistrationEventCopyWith<$Res> {
  $ParentRegistrationEventCopyWith(
      ParentRegistrationEvent _, $Res Function(ParentRegistrationEvent) __);
}

/// Adds pattern-matching-related methods to [ParentRegistrationEvent].
extension ParentRegistrationEventPatterns on ParentRegistrationEvent {
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
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetEmailData value)? setEmailData,
    TResult Function(_SetPersonalInfo value)? setPersonalInfo,
    TResult Function(_SetContactInfo value)? setContactInfo,
    TResult Function(_SetFamilyPhoto value)? setFamilyPhoto,
    TResult Function(_SetImpactInfo value)? setImpactInfo,
    TResult Function(_SubmitRegistration value)? submitRegistration,
    TResult Function(_ClearData value)? clearData,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SetEmailData() when setEmailData != null:
        return setEmailData(_that);
      case _SetPersonalInfo() when setPersonalInfo != null:
        return setPersonalInfo(_that);
      case _SetContactInfo() when setContactInfo != null:
        return setContactInfo(_that);
      case _SetFamilyPhoto() when setFamilyPhoto != null:
        return setFamilyPhoto(_that);
      case _SetImpactInfo() when setImpactInfo != null:
        return setImpactInfo(_that);
      case _SubmitRegistration() when submitRegistration != null:
        return submitRegistration(_that);
      case _ClearData() when clearData != null:
        return clearData(_that);
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
  TResult map<TResult extends Object?>({
    required TResult Function(_SetEmailData value) setEmailData,
    required TResult Function(_SetPersonalInfo value) setPersonalInfo,
    required TResult Function(_SetContactInfo value) setContactInfo,
    required TResult Function(_SetFamilyPhoto value) setFamilyPhoto,
    required TResult Function(_SetImpactInfo value) setImpactInfo,
    required TResult Function(_SubmitRegistration value) submitRegistration,
    required TResult Function(_ClearData value) clearData,
  }) {
    final _that = this;
    switch (_that) {
      case _SetEmailData():
        return setEmailData(_that);
      case _SetPersonalInfo():
        return setPersonalInfo(_that);
      case _SetContactInfo():
        return setContactInfo(_that);
      case _SetFamilyPhoto():
        return setFamilyPhoto(_that);
      case _SetImpactInfo():
        return setImpactInfo(_that);
      case _SubmitRegistration():
        return submitRegistration(_that);
      case _ClearData():
        return clearData(_that);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetEmailData value)? setEmailData,
    TResult? Function(_SetPersonalInfo value)? setPersonalInfo,
    TResult? Function(_SetContactInfo value)? setContactInfo,
    TResult? Function(_SetFamilyPhoto value)? setFamilyPhoto,
    TResult? Function(_SetImpactInfo value)? setImpactInfo,
    TResult? Function(_SubmitRegistration value)? submitRegistration,
    TResult? Function(_ClearData value)? clearData,
  }) {
    final _that = this;
    switch (_that) {
      case _SetEmailData() when setEmailData != null:
        return setEmailData(_that);
      case _SetPersonalInfo() when setPersonalInfo != null:
        return setPersonalInfo(_that);
      case _SetContactInfo() when setContactInfo != null:
        return setContactInfo(_that);
      case _SetFamilyPhoto() when setFamilyPhoto != null:
        return setFamilyPhoto(_that);
      case _SetImpactInfo() when setImpactInfo != null:
        return setImpactInfo(_that);
      case _SubmitRegistration() when submitRegistration != null:
        return submitRegistration(_that);
      case _ClearData() when clearData != null:
        return clearData(_that);
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
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String email, String password, String passwordConfirmation)?
        setEmailData,
    TResult Function(String firstName, String lastName, String familySize)?
        setPersonalInfo,
    TResult Function(String phoneNumber, String address, String city,
            String state, String zipCode)?
        setContactInfo,
    TResult Function(String photoPath)? setFamilyPhoto,
    TResult Function(String affectedEvent, String statement)? setImpactInfo,
    TResult Function()? submitRegistration,
    TResult Function()? clearData,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SetEmailData() when setEmailData != null:
        return setEmailData(
            _that.email, _that.password, _that.passwordConfirmation);
      case _SetPersonalInfo() when setPersonalInfo != null:
        return setPersonalInfo(
            _that.firstName, _that.lastName, _that.familySize);
      case _SetContactInfo() when setContactInfo != null:
        return setContactInfo(_that.phoneNumber, _that.address, _that.city,
            _that.state, _that.zipCode);
      case _SetFamilyPhoto() when setFamilyPhoto != null:
        return setFamilyPhoto(_that.photoPath);
      case _SetImpactInfo() when setImpactInfo != null:
        return setImpactInfo(_that.affectedEvent, _that.statement);
      case _SubmitRegistration() when submitRegistration != null:
        return submitRegistration();
      case _ClearData() when clearData != null:
        return clearData();
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
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, String password, String passwordConfirmation)
        setEmailData,
    required TResult Function(
            String firstName, String lastName, String familySize)
        setPersonalInfo,
    required TResult Function(String phoneNumber, String address, String city,
            String state, String zipCode)
        setContactInfo,
    required TResult Function(String photoPath) setFamilyPhoto,
    required TResult Function(String affectedEvent, String statement)
        setImpactInfo,
    required TResult Function() submitRegistration,
    required TResult Function() clearData,
  }) {
    final _that = this;
    switch (_that) {
      case _SetEmailData():
        return setEmailData(
            _that.email, _that.password, _that.passwordConfirmation);
      case _SetPersonalInfo():
        return setPersonalInfo(
            _that.firstName, _that.lastName, _that.familySize);
      case _SetContactInfo():
        return setContactInfo(_that.phoneNumber, _that.address, _that.city,
            _that.state, _that.zipCode);
      case _SetFamilyPhoto():
        return setFamilyPhoto(_that.photoPath);
      case _SetImpactInfo():
        return setImpactInfo(_that.affectedEvent, _that.statement);
      case _SubmitRegistration():
        return submitRegistration();
      case _ClearData():
        return clearData();
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String email, String password, String passwordConfirmation)?
        setEmailData,
    TResult? Function(String firstName, String lastName, String familySize)?
        setPersonalInfo,
    TResult? Function(String phoneNumber, String address, String city,
            String state, String zipCode)?
        setContactInfo,
    TResult? Function(String photoPath)? setFamilyPhoto,
    TResult? Function(String affectedEvent, String statement)? setImpactInfo,
    TResult? Function()? submitRegistration,
    TResult? Function()? clearData,
  }) {
    final _that = this;
    switch (_that) {
      case _SetEmailData() when setEmailData != null:
        return setEmailData(
            _that.email, _that.password, _that.passwordConfirmation);
      case _SetPersonalInfo() when setPersonalInfo != null:
        return setPersonalInfo(
            _that.firstName, _that.lastName, _that.familySize);
      case _SetContactInfo() when setContactInfo != null:
        return setContactInfo(_that.phoneNumber, _that.address, _that.city,
            _that.state, _that.zipCode);
      case _SetFamilyPhoto() when setFamilyPhoto != null:
        return setFamilyPhoto(_that.photoPath);
      case _SetImpactInfo() when setImpactInfo != null:
        return setImpactInfo(_that.affectedEvent, _that.statement);
      case _SubmitRegistration() when submitRegistration != null:
        return submitRegistration();
      case _ClearData() when clearData != null:
        return clearData();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SetEmailData implements ParentRegistrationEvent {
  const _SetEmailData(
      {required this.email,
      required this.password,
      required this.passwordConfirmation});

  final String email;
  final String password;
  final String passwordConfirmation;

  /// Create a copy of ParentRegistrationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SetEmailDataCopyWith<_SetEmailData> get copyWith =>
      __$SetEmailDataCopyWithImpl<_SetEmailData>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SetEmailData &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordConfirmation, passwordConfirmation) ||
                other.passwordConfirmation == passwordConfirmation));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, email, password, passwordConfirmation);

  @override
  String toString() {
    return 'ParentRegistrationEvent.setEmailData(email: $email, password: $password, passwordConfirmation: $passwordConfirmation)';
  }
}

/// @nodoc
abstract mixin class _$SetEmailDataCopyWith<$Res>
    implements $ParentRegistrationEventCopyWith<$Res> {
  factory _$SetEmailDataCopyWith(
          _SetEmailData value, $Res Function(_SetEmailData) _then) =
      __$SetEmailDataCopyWithImpl;
  @useResult
  $Res call({String email, String password, String passwordConfirmation});
}

/// @nodoc
class __$SetEmailDataCopyWithImpl<$Res>
    implements _$SetEmailDataCopyWith<$Res> {
  __$SetEmailDataCopyWithImpl(this._self, this._then);

  final _SetEmailData _self;
  final $Res Function(_SetEmailData) _then;

  /// Create a copy of ParentRegistrationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? passwordConfirmation = null,
  }) {
    return _then(_SetEmailData(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordConfirmation: null == passwordConfirmation
          ? _self.passwordConfirmation
          : passwordConfirmation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _SetPersonalInfo implements ParentRegistrationEvent {
  const _SetPersonalInfo(
      {required this.firstName,
      required this.lastName,
      required this.familySize});

  final String firstName;
  final String lastName;
  final String familySize;

  /// Create a copy of ParentRegistrationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SetPersonalInfoCopyWith<_SetPersonalInfo> get copyWith =>
      __$SetPersonalInfoCopyWithImpl<_SetPersonalInfo>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SetPersonalInfo &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.familySize, familySize) ||
                other.familySize == familySize));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, familySize);

  @override
  String toString() {
    return 'ParentRegistrationEvent.setPersonalInfo(firstName: $firstName, lastName: $lastName, familySize: $familySize)';
  }
}

/// @nodoc
abstract mixin class _$SetPersonalInfoCopyWith<$Res>
    implements $ParentRegistrationEventCopyWith<$Res> {
  factory _$SetPersonalInfoCopyWith(
          _SetPersonalInfo value, $Res Function(_SetPersonalInfo) _then) =
      __$SetPersonalInfoCopyWithImpl;
  @useResult
  $Res call({String firstName, String lastName, String familySize});
}

/// @nodoc
class __$SetPersonalInfoCopyWithImpl<$Res>
    implements _$SetPersonalInfoCopyWith<$Res> {
  __$SetPersonalInfoCopyWithImpl(this._self, this._then);

  final _SetPersonalInfo _self;
  final $Res Function(_SetPersonalInfo) _then;

  /// Create a copy of ParentRegistrationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? familySize = null,
  }) {
    return _then(_SetPersonalInfo(
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      familySize: null == familySize
          ? _self.familySize
          : familySize // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _SetContactInfo implements ParentRegistrationEvent {
  const _SetContactInfo(
      {required this.phoneNumber,
      required this.address,
      required this.city,
      required this.state,
      required this.zipCode});

  final String phoneNumber;
  final String address;
  final String city;
  final String state;
  final String zipCode;

  /// Create a copy of ParentRegistrationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SetContactInfoCopyWith<_SetContactInfo> get copyWith =>
      __$SetContactInfoCopyWithImpl<_SetContactInfo>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SetContactInfo &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, phoneNumber, address, city, state, zipCode);

  @override
  String toString() {
    return 'ParentRegistrationEvent.setContactInfo(phoneNumber: $phoneNumber, address: $address, city: $city, state: $state, zipCode: $zipCode)';
  }
}

/// @nodoc
abstract mixin class _$SetContactInfoCopyWith<$Res>
    implements $ParentRegistrationEventCopyWith<$Res> {
  factory _$SetContactInfoCopyWith(
          _SetContactInfo value, $Res Function(_SetContactInfo) _then) =
      __$SetContactInfoCopyWithImpl;
  @useResult
  $Res call(
      {String phoneNumber,
      String address,
      String city,
      String state,
      String zipCode});
}

/// @nodoc
class __$SetContactInfoCopyWithImpl<$Res>
    implements _$SetContactInfoCopyWith<$Res> {
  __$SetContactInfoCopyWithImpl(this._self, this._then);

  final _SetContactInfo _self;
  final $Res Function(_SetContactInfo) _then;

  /// Create a copy of ParentRegistrationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? phoneNumber = null,
    Object? address = null,
    Object? city = null,
    Object? state = null,
    Object? zipCode = null,
  }) {
    return _then(_SetContactInfo(
      phoneNumber: null == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc

class _SetFamilyPhoto implements ParentRegistrationEvent {
  const _SetFamilyPhoto({required this.photoPath});

  final String photoPath;

  /// Create a copy of ParentRegistrationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SetFamilyPhotoCopyWith<_SetFamilyPhoto> get copyWith =>
      __$SetFamilyPhotoCopyWithImpl<_SetFamilyPhoto>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SetFamilyPhoto &&
            (identical(other.photoPath, photoPath) ||
                other.photoPath == photoPath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, photoPath);

  @override
  String toString() {
    return 'ParentRegistrationEvent.setFamilyPhoto(photoPath: $photoPath)';
  }
}

/// @nodoc
abstract mixin class _$SetFamilyPhotoCopyWith<$Res>
    implements $ParentRegistrationEventCopyWith<$Res> {
  factory _$SetFamilyPhotoCopyWith(
          _SetFamilyPhoto value, $Res Function(_SetFamilyPhoto) _then) =
      __$SetFamilyPhotoCopyWithImpl;
  @useResult
  $Res call({String photoPath});
}

/// @nodoc
class __$SetFamilyPhotoCopyWithImpl<$Res>
    implements _$SetFamilyPhotoCopyWith<$Res> {
  __$SetFamilyPhotoCopyWithImpl(this._self, this._then);

  final _SetFamilyPhoto _self;
  final $Res Function(_SetFamilyPhoto) _then;

  /// Create a copy of ParentRegistrationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? photoPath = null,
  }) {
    return _then(_SetFamilyPhoto(
      photoPath: null == photoPath
          ? _self.photoPath
          : photoPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _SetImpactInfo implements ParentRegistrationEvent {
  const _SetImpactInfo({required this.affectedEvent, required this.statement});

  final String affectedEvent;
  final String statement;

  /// Create a copy of ParentRegistrationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SetImpactInfoCopyWith<_SetImpactInfo> get copyWith =>
      __$SetImpactInfoCopyWithImpl<_SetImpactInfo>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SetImpactInfo &&
            (identical(other.affectedEvent, affectedEvent) ||
                other.affectedEvent == affectedEvent) &&
            (identical(other.statement, statement) ||
                other.statement == statement));
  }

  @override
  int get hashCode => Object.hash(runtimeType, affectedEvent, statement);

  @override
  String toString() {
    return 'ParentRegistrationEvent.setImpactInfo(affectedEvent: $affectedEvent, statement: $statement)';
  }
}

/// @nodoc
abstract mixin class _$SetImpactInfoCopyWith<$Res>
    implements $ParentRegistrationEventCopyWith<$Res> {
  factory _$SetImpactInfoCopyWith(
          _SetImpactInfo value, $Res Function(_SetImpactInfo) _then) =
      __$SetImpactInfoCopyWithImpl;
  @useResult
  $Res call({String affectedEvent, String statement});
}

/// @nodoc
class __$SetImpactInfoCopyWithImpl<$Res>
    implements _$SetImpactInfoCopyWith<$Res> {
  __$SetImpactInfoCopyWithImpl(this._self, this._then);

  final _SetImpactInfo _self;
  final $Res Function(_SetImpactInfo) _then;

  /// Create a copy of ParentRegistrationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? affectedEvent = null,
    Object? statement = null,
  }) {
    return _then(_SetImpactInfo(
      affectedEvent: null == affectedEvent
          ? _self.affectedEvent
          : affectedEvent // ignore: cast_nullable_to_non_nullable
              as String,
      statement: null == statement
          ? _self.statement
          : statement // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _SubmitRegistration implements ParentRegistrationEvent {
  const _SubmitRegistration();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SubmitRegistration);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ParentRegistrationEvent.submitRegistration()';
  }
}

/// @nodoc

class _ClearData implements ParentRegistrationEvent {
  const _ClearData();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ClearData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ParentRegistrationEvent.clearData()';
  }
}

/// @nodoc
mixin _$ParentRegistrationState {
// Email data
  String get email;
  String get password;
  String get passwordConfirmation; // Personal info
  String get firstName;
  String get lastName;
  String get familySize; // Contact info
  String get phoneNumber;
  String get address;
  String get city;
  String get state;
  String get zipCode; // Family photo
  String? get familyPhotoPath; // Impact info
  String get affectedEvent;
  String get statement; // Submission state
  bool get isSubmitting;
  bool? get success;
  String? get apiError;

  /// Create a copy of ParentRegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ParentRegistrationStateCopyWith<ParentRegistrationState> get copyWith =>
      _$ParentRegistrationStateCopyWithImpl<ParentRegistrationState>(
          this as ParentRegistrationState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ParentRegistrationState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordConfirmation, passwordConfirmation) ||
                other.passwordConfirmation == passwordConfirmation) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.familySize, familySize) ||
                other.familySize == familySize) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode) &&
            (identical(other.familyPhotoPath, familyPhotoPath) ||
                other.familyPhotoPath == familyPhotoPath) &&
            (identical(other.affectedEvent, affectedEvent) ||
                other.affectedEvent == affectedEvent) &&
            (identical(other.statement, statement) ||
                other.statement == statement) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.apiError, apiError) ||
                other.apiError == apiError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      email,
      password,
      passwordConfirmation,
      firstName,
      lastName,
      familySize,
      phoneNumber,
      address,
      city,
      state,
      zipCode,
      familyPhotoPath,
      affectedEvent,
      statement,
      isSubmitting,
      success,
      apiError);

  @override
  String toString() {
    return 'ParentRegistrationState(email: $email, password: $password, passwordConfirmation: $passwordConfirmation, firstName: $firstName, lastName: $lastName, familySize: $familySize, phoneNumber: $phoneNumber, address: $address, city: $city, state: $state, zipCode: $zipCode, familyPhotoPath: $familyPhotoPath, affectedEvent: $affectedEvent, statement: $statement, isSubmitting: $isSubmitting, success: $success, apiError: $apiError)';
  }
}

/// @nodoc
abstract mixin class $ParentRegistrationStateCopyWith<$Res> {
  factory $ParentRegistrationStateCopyWith(ParentRegistrationState value,
          $Res Function(ParentRegistrationState) _then) =
      _$ParentRegistrationStateCopyWithImpl;
  @useResult
  $Res call(
      {String email,
      String password,
      String passwordConfirmation,
      String firstName,
      String lastName,
      String familySize,
      String phoneNumber,
      String address,
      String city,
      String state,
      String zipCode,
      String? familyPhotoPath,
      String affectedEvent,
      String statement,
      bool isSubmitting,
      bool? success,
      String? apiError});
}

/// @nodoc
class _$ParentRegistrationStateCopyWithImpl<$Res>
    implements $ParentRegistrationStateCopyWith<$Res> {
  _$ParentRegistrationStateCopyWithImpl(this._self, this._then);

  final ParentRegistrationState _self;
  final $Res Function(ParentRegistrationState) _then;

  /// Create a copy of ParentRegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? passwordConfirmation = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? familySize = null,
    Object? phoneNumber = null,
    Object? address = null,
    Object? city = null,
    Object? state = null,
    Object? zipCode = null,
    Object? familyPhotoPath = freezed,
    Object? affectedEvent = null,
    Object? statement = null,
    Object? isSubmitting = null,
    Object? success = freezed,
    Object? apiError = freezed,
  }) {
    return _then(_self.copyWith(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordConfirmation: null == passwordConfirmation
          ? _self.passwordConfirmation
          : passwordConfirmation // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      familySize: null == familySize
          ? _self.familySize
          : familySize // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
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
      familyPhotoPath: freezed == familyPhotoPath
          ? _self.familyPhotoPath
          : familyPhotoPath // ignore: cast_nullable_to_non_nullable
              as String?,
      affectedEvent: null == affectedEvent
          ? _self.affectedEvent
          : affectedEvent // ignore: cast_nullable_to_non_nullable
              as String,
      statement: null == statement
          ? _self.statement
          : statement // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: null == isSubmitting
          ? _self.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      success: freezed == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      apiError: freezed == apiError
          ? _self.apiError
          : apiError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ParentRegistrationState].
extension ParentRegistrationStatePatterns on ParentRegistrationState {
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
    TResult Function(_ParentRegistrationState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ParentRegistrationState() when $default != null:
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
    TResult Function(_ParentRegistrationState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ParentRegistrationState():
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
    TResult? Function(_ParentRegistrationState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ParentRegistrationState() when $default != null:
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
            String email,
            String password,
            String passwordConfirmation,
            String firstName,
            String lastName,
            String familySize,
            String phoneNumber,
            String address,
            String city,
            String state,
            String zipCode,
            String? familyPhotoPath,
            String affectedEvent,
            String statement,
            bool isSubmitting,
            bool? success,
            String? apiError)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ParentRegistrationState() when $default != null:
        return $default(
            _that.email,
            _that.password,
            _that.passwordConfirmation,
            _that.firstName,
            _that.lastName,
            _that.familySize,
            _that.phoneNumber,
            _that.address,
            _that.city,
            _that.state,
            _that.zipCode,
            _that.familyPhotoPath,
            _that.affectedEvent,
            _that.statement,
            _that.isSubmitting,
            _that.success,
            _that.apiError);
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
            String email,
            String password,
            String passwordConfirmation,
            String firstName,
            String lastName,
            String familySize,
            String phoneNumber,
            String address,
            String city,
            String state,
            String zipCode,
            String? familyPhotoPath,
            String affectedEvent,
            String statement,
            bool isSubmitting,
            bool? success,
            String? apiError)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ParentRegistrationState():
        return $default(
            _that.email,
            _that.password,
            _that.passwordConfirmation,
            _that.firstName,
            _that.lastName,
            _that.familySize,
            _that.phoneNumber,
            _that.address,
            _that.city,
            _that.state,
            _that.zipCode,
            _that.familyPhotoPath,
            _that.affectedEvent,
            _that.statement,
            _that.isSubmitting,
            _that.success,
            _that.apiError);
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
            String email,
            String password,
            String passwordConfirmation,
            String firstName,
            String lastName,
            String familySize,
            String phoneNumber,
            String address,
            String city,
            String state,
            String zipCode,
            String? familyPhotoPath,
            String affectedEvent,
            String statement,
            bool isSubmitting,
            bool? success,
            String? apiError)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ParentRegistrationState() when $default != null:
        return $default(
            _that.email,
            _that.password,
            _that.passwordConfirmation,
            _that.firstName,
            _that.lastName,
            _that.familySize,
            _that.phoneNumber,
            _that.address,
            _that.city,
            _that.state,
            _that.zipCode,
            _that.familyPhotoPath,
            _that.affectedEvent,
            _that.statement,
            _that.isSubmitting,
            _that.success,
            _that.apiError);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ParentRegistrationState implements ParentRegistrationState {
  const _ParentRegistrationState(
      {this.email = '',
      this.password = '',
      this.passwordConfirmation = '',
      this.firstName = '',
      this.lastName = '',
      this.familySize = '',
      this.phoneNumber = '',
      this.address = '',
      this.city = '',
      this.state = '',
      this.zipCode = '',
      this.familyPhotoPath,
      this.affectedEvent = '',
      this.statement = '',
      this.isSubmitting = false,
      this.success,
      this.apiError});

// Email data
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final String passwordConfirmation;
// Personal info
  @override
  @JsonKey()
  final String firstName;
  @override
  @JsonKey()
  final String lastName;
  @override
  @JsonKey()
  final String familySize;
// Contact info
  @override
  @JsonKey()
  final String phoneNumber;
  @override
  @JsonKey()
  final String address;
  @override
  @JsonKey()
  final String city;
  @override
  @JsonKey()
  final String state;
  @override
  @JsonKey()
  final String zipCode;
// Family photo
  @override
  final String? familyPhotoPath;
// Impact info
  @override
  @JsonKey()
  final String affectedEvent;
  @override
  @JsonKey()
  final String statement;
// Submission state
  @override
  @JsonKey()
  final bool isSubmitting;
  @override
  final bool? success;
  @override
  final String? apiError;

  /// Create a copy of ParentRegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ParentRegistrationStateCopyWith<_ParentRegistrationState> get copyWith =>
      __$ParentRegistrationStateCopyWithImpl<_ParentRegistrationState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ParentRegistrationState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordConfirmation, passwordConfirmation) ||
                other.passwordConfirmation == passwordConfirmation) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.familySize, familySize) ||
                other.familySize == familySize) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode) &&
            (identical(other.familyPhotoPath, familyPhotoPath) ||
                other.familyPhotoPath == familyPhotoPath) &&
            (identical(other.affectedEvent, affectedEvent) ||
                other.affectedEvent == affectedEvent) &&
            (identical(other.statement, statement) ||
                other.statement == statement) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.apiError, apiError) ||
                other.apiError == apiError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      email,
      password,
      passwordConfirmation,
      firstName,
      lastName,
      familySize,
      phoneNumber,
      address,
      city,
      state,
      zipCode,
      familyPhotoPath,
      affectedEvent,
      statement,
      isSubmitting,
      success,
      apiError);

  @override
  String toString() {
    return 'ParentRegistrationState(email: $email, password: $password, passwordConfirmation: $passwordConfirmation, firstName: $firstName, lastName: $lastName, familySize: $familySize, phoneNumber: $phoneNumber, address: $address, city: $city, state: $state, zipCode: $zipCode, familyPhotoPath: $familyPhotoPath, affectedEvent: $affectedEvent, statement: $statement, isSubmitting: $isSubmitting, success: $success, apiError: $apiError)';
  }
}

/// @nodoc
abstract mixin class _$ParentRegistrationStateCopyWith<$Res>
    implements $ParentRegistrationStateCopyWith<$Res> {
  factory _$ParentRegistrationStateCopyWith(_ParentRegistrationState value,
          $Res Function(_ParentRegistrationState) _then) =
      __$ParentRegistrationStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String email,
      String password,
      String passwordConfirmation,
      String firstName,
      String lastName,
      String familySize,
      String phoneNumber,
      String address,
      String city,
      String state,
      String zipCode,
      String? familyPhotoPath,
      String affectedEvent,
      String statement,
      bool isSubmitting,
      bool? success,
      String? apiError});
}

/// @nodoc
class __$ParentRegistrationStateCopyWithImpl<$Res>
    implements _$ParentRegistrationStateCopyWith<$Res> {
  __$ParentRegistrationStateCopyWithImpl(this._self, this._then);

  final _ParentRegistrationState _self;
  final $Res Function(_ParentRegistrationState) _then;

  /// Create a copy of ParentRegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? passwordConfirmation = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? familySize = null,
    Object? phoneNumber = null,
    Object? address = null,
    Object? city = null,
    Object? state = null,
    Object? zipCode = null,
    Object? familyPhotoPath = freezed,
    Object? affectedEvent = null,
    Object? statement = null,
    Object? isSubmitting = null,
    Object? success = freezed,
    Object? apiError = freezed,
  }) {
    return _then(_ParentRegistrationState(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordConfirmation: null == passwordConfirmation
          ? _self.passwordConfirmation
          : passwordConfirmation // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      familySize: null == familySize
          ? _self.familySize
          : familySize // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
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
      familyPhotoPath: freezed == familyPhotoPath
          ? _self.familyPhotoPath
          : familyPhotoPath // ignore: cast_nullable_to_non_nullable
              as String?,
      affectedEvent: null == affectedEvent
          ? _self.affectedEvent
          : affectedEvent // ignore: cast_nullable_to_non_nullable
              as String,
      statement: null == statement
          ? _self.statement
          : statement // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: null == isSubmitting
          ? _self.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      success: freezed == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      apiError: freezed == apiError
          ? _self.apiError
          : apiError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
