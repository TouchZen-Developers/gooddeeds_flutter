// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_contact_info_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegisterContactInfoEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RegisterContactInfoEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RegisterContactInfoEvent()';
  }
}

/// @nodoc
class $RegisterContactInfoEventCopyWith<$Res> {
  $RegisterContactInfoEventCopyWith(
      RegisterContactInfoEvent _, $Res Function(RegisterContactInfoEvent) __);
}

/// Adds pattern-matching-related methods to [RegisterContactInfoEvent].
extension RegisterContactInfoEventPatterns on RegisterContactInfoEvent {
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
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_CityChanged value)? cityChanged,
    TResult Function(_StateChanged value)? stateChanged,
    TResult Function(_ZipChanged value)? zipChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AddressChanged() when addressChanged != null:
        return addressChanged(_that);
      case _PhoneChanged() when phoneChanged != null:
        return phoneChanged(_that);
      case _CityChanged() when cityChanged != null:
        return cityChanged(_that);
      case _StateChanged() when stateChanged != null:
        return stateChanged(_that);
      case _ZipChanged() when zipChanged != null:
        return zipChanged(_that);
      case _Submitted() when submitted != null:
        return submitted(_that);
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
    required TResult Function(_AddressChanged value) addressChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_CityChanged value) cityChanged,
    required TResult Function(_StateChanged value) stateChanged,
    required TResult Function(_ZipChanged value) zipChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    final _that = this;
    switch (_that) {
      case _AddressChanged():
        return addressChanged(_that);
      case _PhoneChanged():
        return phoneChanged(_that);
      case _CityChanged():
        return cityChanged(_that);
      case _StateChanged():
        return stateChanged(_that);
      case _ZipChanged():
        return zipChanged(_that);
      case _Submitted():
        return submitted(_that);
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
    TResult? Function(_AddressChanged value)? addressChanged,
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_CityChanged value)? cityChanged,
    TResult? Function(_StateChanged value)? stateChanged,
    TResult? Function(_ZipChanged value)? zipChanged,
    TResult? Function(_Submitted value)? submitted,
  }) {
    final _that = this;
    switch (_that) {
      case _AddressChanged() when addressChanged != null:
        return addressChanged(_that);
      case _PhoneChanged() when phoneChanged != null:
        return phoneChanged(_that);
      case _CityChanged() when cityChanged != null:
        return cityChanged(_that);
      case _StateChanged() when stateChanged != null:
        return stateChanged(_that);
      case _ZipChanged() when zipChanged != null:
        return zipChanged(_that);
      case _Submitted() when submitted != null:
        return submitted(_that);
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
    TResult Function(String value)? addressChanged,
    TResult Function(String value)? phoneChanged,
    TResult Function(String value)? cityChanged,
    TResult Function(String value)? stateChanged,
    TResult Function(String value)? zipChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AddressChanged() when addressChanged != null:
        return addressChanged(_that.value);
      case _PhoneChanged() when phoneChanged != null:
        return phoneChanged(_that.value);
      case _CityChanged() when cityChanged != null:
        return cityChanged(_that.value);
      case _StateChanged() when stateChanged != null:
        return stateChanged(_that.value);
      case _ZipChanged() when zipChanged != null:
        return zipChanged(_that.value);
      case _Submitted() when submitted != null:
        return submitted();
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
    required TResult Function(String value) addressChanged,
    required TResult Function(String value) phoneChanged,
    required TResult Function(String value) cityChanged,
    required TResult Function(String value) stateChanged,
    required TResult Function(String value) zipChanged,
    required TResult Function() submitted,
  }) {
    final _that = this;
    switch (_that) {
      case _AddressChanged():
        return addressChanged(_that.value);
      case _PhoneChanged():
        return phoneChanged(_that.value);
      case _CityChanged():
        return cityChanged(_that.value);
      case _StateChanged():
        return stateChanged(_that.value);
      case _ZipChanged():
        return zipChanged(_that.value);
      case _Submitted():
        return submitted();
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
    TResult? Function(String value)? addressChanged,
    TResult? Function(String value)? phoneChanged,
    TResult? Function(String value)? cityChanged,
    TResult? Function(String value)? stateChanged,
    TResult? Function(String value)? zipChanged,
    TResult? Function()? submitted,
  }) {
    final _that = this;
    switch (_that) {
      case _AddressChanged() when addressChanged != null:
        return addressChanged(_that.value);
      case _PhoneChanged() when phoneChanged != null:
        return phoneChanged(_that.value);
      case _CityChanged() when cityChanged != null:
        return cityChanged(_that.value);
      case _StateChanged() when stateChanged != null:
        return stateChanged(_that.value);
      case _ZipChanged() when zipChanged != null:
        return zipChanged(_that.value);
      case _Submitted() when submitted != null:
        return submitted();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _AddressChanged implements RegisterContactInfoEvent {
  const _AddressChanged(this.value);

  final String value;

  /// Create a copy of RegisterContactInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AddressChangedCopyWith<_AddressChanged> get copyWith =>
      __$AddressChangedCopyWithImpl<_AddressChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddressChanged &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'RegisterContactInfoEvent.addressChanged(value: $value)';
  }
}

/// @nodoc
abstract mixin class _$AddressChangedCopyWith<$Res>
    implements $RegisterContactInfoEventCopyWith<$Res> {
  factory _$AddressChangedCopyWith(
          _AddressChanged value, $Res Function(_AddressChanged) _then) =
      __$AddressChangedCopyWithImpl;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$AddressChangedCopyWithImpl<$Res>
    implements _$AddressChangedCopyWith<$Res> {
  __$AddressChangedCopyWithImpl(this._self, this._then);

  final _AddressChanged _self;
  final $Res Function(_AddressChanged) _then;

  /// Create a copy of RegisterContactInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(_AddressChanged(
      null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _PhoneChanged implements RegisterContactInfoEvent {
  const _PhoneChanged(this.value);

  final String value;

  /// Create a copy of RegisterContactInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PhoneChangedCopyWith<_PhoneChanged> get copyWith =>
      __$PhoneChangedCopyWithImpl<_PhoneChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PhoneChanged &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'RegisterContactInfoEvent.phoneChanged(value: $value)';
  }
}

/// @nodoc
abstract mixin class _$PhoneChangedCopyWith<$Res>
    implements $RegisterContactInfoEventCopyWith<$Res> {
  factory _$PhoneChangedCopyWith(
          _PhoneChanged value, $Res Function(_PhoneChanged) _then) =
      __$PhoneChangedCopyWithImpl;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$PhoneChangedCopyWithImpl<$Res>
    implements _$PhoneChangedCopyWith<$Res> {
  __$PhoneChangedCopyWithImpl(this._self, this._then);

  final _PhoneChanged _self;
  final $Res Function(_PhoneChanged) _then;

  /// Create a copy of RegisterContactInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(_PhoneChanged(
      null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _CityChanged implements RegisterContactInfoEvent {
  const _CityChanged(this.value);

  final String value;

  /// Create a copy of RegisterContactInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CityChangedCopyWith<_CityChanged> get copyWith =>
      __$CityChangedCopyWithImpl<_CityChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CityChanged &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'RegisterContactInfoEvent.cityChanged(value: $value)';
  }
}

/// @nodoc
abstract mixin class _$CityChangedCopyWith<$Res>
    implements $RegisterContactInfoEventCopyWith<$Res> {
  factory _$CityChangedCopyWith(
          _CityChanged value, $Res Function(_CityChanged) _then) =
      __$CityChangedCopyWithImpl;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$CityChangedCopyWithImpl<$Res> implements _$CityChangedCopyWith<$Res> {
  __$CityChangedCopyWithImpl(this._self, this._then);

  final _CityChanged _self;
  final $Res Function(_CityChanged) _then;

  /// Create a copy of RegisterContactInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(_CityChanged(
      null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _StateChanged implements RegisterContactInfoEvent {
  const _StateChanged(this.value);

  final String value;

  /// Create a copy of RegisterContactInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StateChangedCopyWith<_StateChanged> get copyWith =>
      __$StateChangedCopyWithImpl<_StateChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StateChanged &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'RegisterContactInfoEvent.stateChanged(value: $value)';
  }
}

/// @nodoc
abstract mixin class _$StateChangedCopyWith<$Res>
    implements $RegisterContactInfoEventCopyWith<$Res> {
  factory _$StateChangedCopyWith(
          _StateChanged value, $Res Function(_StateChanged) _then) =
      __$StateChangedCopyWithImpl;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$StateChangedCopyWithImpl<$Res>
    implements _$StateChangedCopyWith<$Res> {
  __$StateChangedCopyWithImpl(this._self, this._then);

  final _StateChanged _self;
  final $Res Function(_StateChanged) _then;

  /// Create a copy of RegisterContactInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(_StateChanged(
      null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _ZipChanged implements RegisterContactInfoEvent {
  const _ZipChanged(this.value);

  final String value;

  /// Create a copy of RegisterContactInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ZipChangedCopyWith<_ZipChanged> get copyWith =>
      __$ZipChangedCopyWithImpl<_ZipChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ZipChanged &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'RegisterContactInfoEvent.zipChanged(value: $value)';
  }
}

/// @nodoc
abstract mixin class _$ZipChangedCopyWith<$Res>
    implements $RegisterContactInfoEventCopyWith<$Res> {
  factory _$ZipChangedCopyWith(
          _ZipChanged value, $Res Function(_ZipChanged) _then) =
      __$ZipChangedCopyWithImpl;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$ZipChangedCopyWithImpl<$Res> implements _$ZipChangedCopyWith<$Res> {
  __$ZipChangedCopyWithImpl(this._self, this._then);

  final _ZipChanged _self;
  final $Res Function(_ZipChanged) _then;

  /// Create a copy of RegisterContactInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(_ZipChanged(
      null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _Submitted implements RegisterContactInfoEvent {
  const _Submitted();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Submitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RegisterContactInfoEvent.submitted()';
  }
}

/// @nodoc
mixin _$RegisterContactInfoState {
  String get address;
  String get phoneCountryCode;
  String get phone;
  String get city;
  String get stateName;
  String get zip;
  bool get isSubmitting;
  bool get showErrors;
  bool get completed;

  /// Create a copy of RegisterContactInfoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RegisterContactInfoStateCopyWith<RegisterContactInfoState> get copyWith =>
      _$RegisterContactInfoStateCopyWithImpl<RegisterContactInfoState>(
          this as RegisterContactInfoState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegisterContactInfoState &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phoneCountryCode, phoneCountryCode) ||
                other.phoneCountryCode == phoneCountryCode) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.stateName, stateName) ||
                other.stateName == stateName) &&
            (identical(other.zip, zip) || other.zip == zip) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.showErrors, showErrors) ||
                other.showErrors == showErrors) &&
            (identical(other.completed, completed) ||
                other.completed == completed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address, phoneCountryCode, phone,
      city, stateName, zip, isSubmitting, showErrors, completed);

  @override
  String toString() {
    return 'RegisterContactInfoState(address: $address, phoneCountryCode: $phoneCountryCode, phone: $phone, city: $city, stateName: $stateName, zip: $zip, isSubmitting: $isSubmitting, showErrors: $showErrors, completed: $completed)';
  }
}

/// @nodoc
abstract mixin class $RegisterContactInfoStateCopyWith<$Res> {
  factory $RegisterContactInfoStateCopyWith(RegisterContactInfoState value,
          $Res Function(RegisterContactInfoState) _then) =
      _$RegisterContactInfoStateCopyWithImpl;
  @useResult
  $Res call(
      {String address,
      String phoneCountryCode,
      String phone,
      String city,
      String stateName,
      String zip,
      bool isSubmitting,
      bool showErrors,
      bool completed});
}

/// @nodoc
class _$RegisterContactInfoStateCopyWithImpl<$Res>
    implements $RegisterContactInfoStateCopyWith<$Res> {
  _$RegisterContactInfoStateCopyWithImpl(this._self, this._then);

  final RegisterContactInfoState _self;
  final $Res Function(RegisterContactInfoState) _then;

  /// Create a copy of RegisterContactInfoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? phoneCountryCode = null,
    Object? phone = null,
    Object? city = null,
    Object? stateName = null,
    Object? zip = null,
    Object? isSubmitting = null,
    Object? showErrors = null,
    Object? completed = null,
  }) {
    return _then(_self.copyWith(
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phoneCountryCode: null == phoneCountryCode
          ? _self.phoneCountryCode
          : phoneCountryCode // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      stateName: null == stateName
          ? _self.stateName
          : stateName // ignore: cast_nullable_to_non_nullable
              as String,
      zip: null == zip
          ? _self.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: null == isSubmitting
          ? _self.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrors: null == showErrors
          ? _self.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      completed: null == completed
          ? _self.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [RegisterContactInfoState].
extension RegisterContactInfoStatePatterns on RegisterContactInfoState {
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
    TResult Function(_RegisterContactInfoState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RegisterContactInfoState() when $default != null:
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
    TResult Function(_RegisterContactInfoState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RegisterContactInfoState():
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
    TResult? Function(_RegisterContactInfoState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RegisterContactInfoState() when $default != null:
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
            String address,
            String phoneCountryCode,
            String phone,
            String city,
            String stateName,
            String zip,
            bool isSubmitting,
            bool showErrors,
            bool completed)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RegisterContactInfoState() when $default != null:
        return $default(
            _that.address,
            _that.phoneCountryCode,
            _that.phone,
            _that.city,
            _that.stateName,
            _that.zip,
            _that.isSubmitting,
            _that.showErrors,
            _that.completed);
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
            String address,
            String phoneCountryCode,
            String phone,
            String city,
            String stateName,
            String zip,
            bool isSubmitting,
            bool showErrors,
            bool completed)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RegisterContactInfoState():
        return $default(
            _that.address,
            _that.phoneCountryCode,
            _that.phone,
            _that.city,
            _that.stateName,
            _that.zip,
            _that.isSubmitting,
            _that.showErrors,
            _that.completed);
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
            String address,
            String phoneCountryCode,
            String phone,
            String city,
            String stateName,
            String zip,
            bool isSubmitting,
            bool showErrors,
            bool completed)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RegisterContactInfoState() when $default != null:
        return $default(
            _that.address,
            _that.phoneCountryCode,
            _that.phone,
            _that.city,
            _that.stateName,
            _that.zip,
            _that.isSubmitting,
            _that.showErrors,
            _that.completed);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _RegisterContactInfoState implements RegisterContactInfoState {
  const _RegisterContactInfoState(
      {this.address = '',
      this.phoneCountryCode = '+1',
      this.phone = '',
      this.city = '',
      this.stateName = '',
      this.zip = '',
      this.isSubmitting = false,
      this.showErrors = false,
      this.completed = false});

  @override
  @JsonKey()
  final String address;
  @override
  @JsonKey()
  final String phoneCountryCode;
  @override
  @JsonKey()
  final String phone;
  @override
  @JsonKey()
  final String city;
  @override
  @JsonKey()
  final String stateName;
  @override
  @JsonKey()
  final String zip;
  @override
  @JsonKey()
  final bool isSubmitting;
  @override
  @JsonKey()
  final bool showErrors;
  @override
  @JsonKey()
  final bool completed;

  /// Create a copy of RegisterContactInfoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RegisterContactInfoStateCopyWith<_RegisterContactInfoState> get copyWith =>
      __$RegisterContactInfoStateCopyWithImpl<_RegisterContactInfoState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterContactInfoState &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phoneCountryCode, phoneCountryCode) ||
                other.phoneCountryCode == phoneCountryCode) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.stateName, stateName) ||
                other.stateName == stateName) &&
            (identical(other.zip, zip) || other.zip == zip) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.showErrors, showErrors) ||
                other.showErrors == showErrors) &&
            (identical(other.completed, completed) ||
                other.completed == completed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address, phoneCountryCode, phone,
      city, stateName, zip, isSubmitting, showErrors, completed);

  @override
  String toString() {
    return 'RegisterContactInfoState(address: $address, phoneCountryCode: $phoneCountryCode, phone: $phone, city: $city, stateName: $stateName, zip: $zip, isSubmitting: $isSubmitting, showErrors: $showErrors, completed: $completed)';
  }
}

/// @nodoc
abstract mixin class _$RegisterContactInfoStateCopyWith<$Res>
    implements $RegisterContactInfoStateCopyWith<$Res> {
  factory _$RegisterContactInfoStateCopyWith(_RegisterContactInfoState value,
          $Res Function(_RegisterContactInfoState) _then) =
      __$RegisterContactInfoStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String address,
      String phoneCountryCode,
      String phone,
      String city,
      String stateName,
      String zip,
      bool isSubmitting,
      bool showErrors,
      bool completed});
}

/// @nodoc
class __$RegisterContactInfoStateCopyWithImpl<$Res>
    implements _$RegisterContactInfoStateCopyWith<$Res> {
  __$RegisterContactInfoStateCopyWithImpl(this._self, this._then);

  final _RegisterContactInfoState _self;
  final $Res Function(_RegisterContactInfoState) _then;

  /// Create a copy of RegisterContactInfoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? address = null,
    Object? phoneCountryCode = null,
    Object? phone = null,
    Object? city = null,
    Object? stateName = null,
    Object? zip = null,
    Object? isSubmitting = null,
    Object? showErrors = null,
    Object? completed = null,
  }) {
    return _then(_RegisterContactInfoState(
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phoneCountryCode: null == phoneCountryCode
          ? _self.phoneCountryCode
          : phoneCountryCode // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      stateName: null == stateName
          ? _self.stateName
          : stateName // ignore: cast_nullable_to_non_nullable
              as String,
      zip: null == zip
          ? _self.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: null == isSubmitting
          ? _self.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrors: null == showErrors
          ? _self.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      completed: null == completed
          ? _self.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
