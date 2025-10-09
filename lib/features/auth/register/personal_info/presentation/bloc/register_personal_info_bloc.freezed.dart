// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_personal_info_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegisterPersonalInfoEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegisterPersonalInfoEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RegisterPersonalInfoEvent()';
  }
}

/// @nodoc
class $RegisterPersonalInfoEventCopyWith<$Res> {
  $RegisterPersonalInfoEventCopyWith(
      RegisterPersonalInfoEvent _, $Res Function(RegisterPersonalInfoEvent) __);
}

/// Adds pattern-matching-related methods to [RegisterPersonalInfoEvent].
extension RegisterPersonalInfoEventPatterns on RegisterPersonalInfoEvent {
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
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_FamilyCountChanged value)? familyCountChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_ModeChanged value)? modeChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FirstNameChanged() when firstNameChanged != null:
        return firstNameChanged(_that);
      case _LastNameChanged() when lastNameChanged != null:
        return lastNameChanged(_that);
      case _FamilyCountChanged() when familyCountChanged != null:
        return familyCountChanged(_that);
      case _PhoneChanged() when phoneChanged != null:
        return phoneChanged(_that);
      case _ModeChanged() when modeChanged != null:
        return modeChanged(_that);
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
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_FamilyCountChanged value) familyCountChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_ModeChanged value) modeChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    final _that = this;
    switch (_that) {
      case _FirstNameChanged():
        return firstNameChanged(_that);
      case _LastNameChanged():
        return lastNameChanged(_that);
      case _FamilyCountChanged():
        return familyCountChanged(_that);
      case _PhoneChanged():
        return phoneChanged(_that);
      case _ModeChanged():
        return modeChanged(_that);
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
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_FamilyCountChanged value)? familyCountChanged,
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_ModeChanged value)? modeChanged,
    TResult? Function(_Submitted value)? submitted,
  }) {
    final _that = this;
    switch (_that) {
      case _FirstNameChanged() when firstNameChanged != null:
        return firstNameChanged(_that);
      case _LastNameChanged() when lastNameChanged != null:
        return lastNameChanged(_that);
      case _FamilyCountChanged() when familyCountChanged != null:
        return familyCountChanged(_that);
      case _PhoneChanged() when phoneChanged != null:
        return phoneChanged(_that);
      case _ModeChanged() when modeChanged != null:
        return modeChanged(_that);
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
    TResult Function(String value)? firstNameChanged,
    TResult Function(String value)? lastNameChanged,
    TResult Function(String value)? familyCountChanged,
    TResult Function(String value)? phoneChanged,
    TResult Function(bool isDonor)? modeChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FirstNameChanged() when firstNameChanged != null:
        return firstNameChanged(_that.value);
      case _LastNameChanged() when lastNameChanged != null:
        return lastNameChanged(_that.value);
      case _FamilyCountChanged() when familyCountChanged != null:
        return familyCountChanged(_that.value);
      case _PhoneChanged() when phoneChanged != null:
        return phoneChanged(_that.value);
      case _ModeChanged() when modeChanged != null:
        return modeChanged(_that.isDonor);
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
    required TResult Function(String value) firstNameChanged,
    required TResult Function(String value) lastNameChanged,
    required TResult Function(String value) familyCountChanged,
    required TResult Function(String value) phoneChanged,
    required TResult Function(bool isDonor) modeChanged,
    required TResult Function() submitted,
  }) {
    final _that = this;
    switch (_that) {
      case _FirstNameChanged():
        return firstNameChanged(_that.value);
      case _LastNameChanged():
        return lastNameChanged(_that.value);
      case _FamilyCountChanged():
        return familyCountChanged(_that.value);
      case _PhoneChanged():
        return phoneChanged(_that.value);
      case _ModeChanged():
        return modeChanged(_that.isDonor);
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
    TResult? Function(String value)? firstNameChanged,
    TResult? Function(String value)? lastNameChanged,
    TResult? Function(String value)? familyCountChanged,
    TResult? Function(String value)? phoneChanged,
    TResult? Function(bool isDonor)? modeChanged,
    TResult? Function()? submitted,
  }) {
    final _that = this;
    switch (_that) {
      case _FirstNameChanged() when firstNameChanged != null:
        return firstNameChanged(_that.value);
      case _LastNameChanged() when lastNameChanged != null:
        return lastNameChanged(_that.value);
      case _FamilyCountChanged() when familyCountChanged != null:
        return familyCountChanged(_that.value);
      case _PhoneChanged() when phoneChanged != null:
        return phoneChanged(_that.value);
      case _ModeChanged() when modeChanged != null:
        return modeChanged(_that.isDonor);
      case _Submitted() when submitted != null:
        return submitted();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _FirstNameChanged implements RegisterPersonalInfoEvent {
  const _FirstNameChanged(this.value);

  final String value;

  /// Create a copy of RegisterPersonalInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FirstNameChangedCopyWith<_FirstNameChanged> get copyWith =>
      __$FirstNameChangedCopyWithImpl<_FirstNameChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FirstNameChanged &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'RegisterPersonalInfoEvent.firstNameChanged(value: $value)';
  }
}

/// @nodoc
abstract mixin class _$FirstNameChangedCopyWith<$Res>
    implements $RegisterPersonalInfoEventCopyWith<$Res> {
  factory _$FirstNameChangedCopyWith(
          _FirstNameChanged value, $Res Function(_FirstNameChanged) _then) =
      __$FirstNameChangedCopyWithImpl;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$FirstNameChangedCopyWithImpl<$Res>
    implements _$FirstNameChangedCopyWith<$Res> {
  __$FirstNameChangedCopyWithImpl(this._self, this._then);

  final _FirstNameChanged _self;
  final $Res Function(_FirstNameChanged) _then;

  /// Create a copy of RegisterPersonalInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(_FirstNameChanged(
      null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _LastNameChanged implements RegisterPersonalInfoEvent {
  const _LastNameChanged(this.value);

  final String value;

  /// Create a copy of RegisterPersonalInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LastNameChangedCopyWith<_LastNameChanged> get copyWith =>
      __$LastNameChangedCopyWithImpl<_LastNameChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LastNameChanged &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'RegisterPersonalInfoEvent.lastNameChanged(value: $value)';
  }
}

/// @nodoc
abstract mixin class _$LastNameChangedCopyWith<$Res>
    implements $RegisterPersonalInfoEventCopyWith<$Res> {
  factory _$LastNameChangedCopyWith(
          _LastNameChanged value, $Res Function(_LastNameChanged) _then) =
      __$LastNameChangedCopyWithImpl;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$LastNameChangedCopyWithImpl<$Res>
    implements _$LastNameChangedCopyWith<$Res> {
  __$LastNameChangedCopyWithImpl(this._self, this._then);

  final _LastNameChanged _self;
  final $Res Function(_LastNameChanged) _then;

  /// Create a copy of RegisterPersonalInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(_LastNameChanged(
      null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _FamilyCountChanged implements RegisterPersonalInfoEvent {
  const _FamilyCountChanged(this.value);

  final String value;

  /// Create a copy of RegisterPersonalInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FamilyCountChangedCopyWith<_FamilyCountChanged> get copyWith =>
      __$FamilyCountChangedCopyWithImpl<_FamilyCountChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FamilyCountChanged &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'RegisterPersonalInfoEvent.familyCountChanged(value: $value)';
  }
}

/// @nodoc
abstract mixin class _$FamilyCountChangedCopyWith<$Res>
    implements $RegisterPersonalInfoEventCopyWith<$Res> {
  factory _$FamilyCountChangedCopyWith(
          _FamilyCountChanged value, $Res Function(_FamilyCountChanged) _then) =
      __$FamilyCountChangedCopyWithImpl;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$FamilyCountChangedCopyWithImpl<$Res>
    implements _$FamilyCountChangedCopyWith<$Res> {
  __$FamilyCountChangedCopyWithImpl(this._self, this._then);

  final _FamilyCountChanged _self;
  final $Res Function(_FamilyCountChanged) _then;

  /// Create a copy of RegisterPersonalInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(_FamilyCountChanged(
      null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _PhoneChanged implements RegisterPersonalInfoEvent {
  const _PhoneChanged(this.value);

  final String value;

  /// Create a copy of RegisterPersonalInfoEvent
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
    return 'RegisterPersonalInfoEvent.phoneChanged(value: $value)';
  }
}

/// @nodoc
abstract mixin class _$PhoneChangedCopyWith<$Res>
    implements $RegisterPersonalInfoEventCopyWith<$Res> {
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

  /// Create a copy of RegisterPersonalInfoEvent
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

class _ModeChanged implements RegisterPersonalInfoEvent {
  const _ModeChanged(this.isDonor);

  final bool isDonor;

  /// Create a copy of RegisterPersonalInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ModeChangedCopyWith<_ModeChanged> get copyWith =>
      __$ModeChangedCopyWithImpl<_ModeChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ModeChanged &&
            (identical(other.isDonor, isDonor) || other.isDonor == isDonor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDonor);

  @override
  String toString() {
    return 'RegisterPersonalInfoEvent.modeChanged(isDonor: $isDonor)';
  }
}

/// @nodoc
abstract mixin class _$ModeChangedCopyWith<$Res>
    implements $RegisterPersonalInfoEventCopyWith<$Res> {
  factory _$ModeChangedCopyWith(
          _ModeChanged value, $Res Function(_ModeChanged) _then) =
      __$ModeChangedCopyWithImpl;
  @useResult
  $Res call({bool isDonor});
}

/// @nodoc
class __$ModeChangedCopyWithImpl<$Res> implements _$ModeChangedCopyWith<$Res> {
  __$ModeChangedCopyWithImpl(this._self, this._then);

  final _ModeChanged _self;
  final $Res Function(_ModeChanged) _then;

  /// Create a copy of RegisterPersonalInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isDonor = null,
  }) {
    return _then(_ModeChanged(
      null == isDonor
          ? _self.isDonor
          : isDonor // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _Submitted implements RegisterPersonalInfoEvent {
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
    return 'RegisterPersonalInfoEvent.submitted()';
  }
}

/// @nodoc
mixin _$RegisterPersonalInfoState {
  String get firstName;
  String get lastName;
  String? get familyCount;
  String get phone;
  bool get isDonorFlow;
  bool get isSubmitting;
  bool get showErrors;
  bool get completed;

  /// Create a copy of RegisterPersonalInfoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RegisterPersonalInfoStateCopyWith<RegisterPersonalInfoState> get copyWith =>
      _$RegisterPersonalInfoStateCopyWithImpl<RegisterPersonalInfoState>(
          this as RegisterPersonalInfoState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegisterPersonalInfoState &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.familyCount, familyCount) ||
                other.familyCount == familyCount) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.isDonorFlow, isDonorFlow) ||
                other.isDonorFlow == isDonorFlow) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.showErrors, showErrors) ||
                other.showErrors == showErrors) &&
            (identical(other.completed, completed) ||
                other.completed == completed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, familyCount,
      phone, isDonorFlow, isSubmitting, showErrors, completed);

  @override
  String toString() {
    return 'RegisterPersonalInfoState(firstName: $firstName, lastName: $lastName, familyCount: $familyCount, phone: $phone, isDonorFlow: $isDonorFlow, isSubmitting: $isSubmitting, showErrors: $showErrors, completed: $completed)';
  }
}

/// @nodoc
abstract mixin class $RegisterPersonalInfoStateCopyWith<$Res> {
  factory $RegisterPersonalInfoStateCopyWith(RegisterPersonalInfoState value,
          $Res Function(RegisterPersonalInfoState) _then) =
      _$RegisterPersonalInfoStateCopyWithImpl;
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String? familyCount,
      String phone,
      bool isDonorFlow,
      bool isSubmitting,
      bool showErrors,
      bool completed});
}

/// @nodoc
class _$RegisterPersonalInfoStateCopyWithImpl<$Res>
    implements $RegisterPersonalInfoStateCopyWith<$Res> {
  _$RegisterPersonalInfoStateCopyWithImpl(this._self, this._then);

  final RegisterPersonalInfoState _self;
  final $Res Function(RegisterPersonalInfoState) _then;

  /// Create a copy of RegisterPersonalInfoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? familyCount = freezed,
    Object? phone = null,
    Object? isDonorFlow = null,
    Object? isSubmitting = null,
    Object? showErrors = null,
    Object? completed = null,
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
      familyCount: freezed == familyCount
          ? _self.familyCount
          : familyCount // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      isDonorFlow: null == isDonorFlow
          ? _self.isDonorFlow
          : isDonorFlow // ignore: cast_nullable_to_non_nullable
              as bool,
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

/// Adds pattern-matching-related methods to [RegisterPersonalInfoState].
extension RegisterPersonalInfoStatePatterns on RegisterPersonalInfoState {
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
    TResult Function(_RegisterPersonalInfoState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RegisterPersonalInfoState() when $default != null:
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
    TResult Function(_RegisterPersonalInfoState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RegisterPersonalInfoState():
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
    TResult? Function(_RegisterPersonalInfoState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RegisterPersonalInfoState() when $default != null:
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
            String? familyCount,
            String phone,
            bool isDonorFlow,
            bool isSubmitting,
            bool showErrors,
            bool completed)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RegisterPersonalInfoState() when $default != null:
        return $default(
            _that.firstName,
            _that.lastName,
            _that.familyCount,
            _that.phone,
            _that.isDonorFlow,
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
            String firstName,
            String lastName,
            String? familyCount,
            String phone,
            bool isDonorFlow,
            bool isSubmitting,
            bool showErrors,
            bool completed)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RegisterPersonalInfoState():
        return $default(
            _that.firstName,
            _that.lastName,
            _that.familyCount,
            _that.phone,
            _that.isDonorFlow,
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
            String firstName,
            String lastName,
            String? familyCount,
            String phone,
            bool isDonorFlow,
            bool isSubmitting,
            bool showErrors,
            bool completed)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RegisterPersonalInfoState() when $default != null:
        return $default(
            _that.firstName,
            _that.lastName,
            _that.familyCount,
            _that.phone,
            _that.isDonorFlow,
            _that.isSubmitting,
            _that.showErrors,
            _that.completed);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _RegisterPersonalInfoState implements RegisterPersonalInfoState {
  const _RegisterPersonalInfoState(
      {this.firstName = '',
      this.lastName = '',
      this.familyCount,
      this.phone = '',
      this.isDonorFlow = false,
      this.isSubmitting = false,
      this.showErrors = false,
      this.completed = false});

  @override
  @JsonKey()
  final String firstName;
  @override
  @JsonKey()
  final String lastName;
  @override
  final String? familyCount;
  @override
  @JsonKey()
  final String phone;
  @override
  @JsonKey()
  final bool isDonorFlow;
  @override
  @JsonKey()
  final bool isSubmitting;
  @override
  @JsonKey()
  final bool showErrors;
  @override
  @JsonKey()
  final bool completed;

  /// Create a copy of RegisterPersonalInfoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RegisterPersonalInfoStateCopyWith<_RegisterPersonalInfoState>
      get copyWith =>
          __$RegisterPersonalInfoStateCopyWithImpl<_RegisterPersonalInfoState>(
              this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterPersonalInfoState &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.familyCount, familyCount) ||
                other.familyCount == familyCount) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.isDonorFlow, isDonorFlow) ||
                other.isDonorFlow == isDonorFlow) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.showErrors, showErrors) ||
                other.showErrors == showErrors) &&
            (identical(other.completed, completed) ||
                other.completed == completed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, familyCount,
      phone, isDonorFlow, isSubmitting, showErrors, completed);

  @override
  String toString() {
    return 'RegisterPersonalInfoState(firstName: $firstName, lastName: $lastName, familyCount: $familyCount, phone: $phone, isDonorFlow: $isDonorFlow, isSubmitting: $isSubmitting, showErrors: $showErrors, completed: $completed)';
  }
}

/// @nodoc
abstract mixin class _$RegisterPersonalInfoStateCopyWith<$Res>
    implements $RegisterPersonalInfoStateCopyWith<$Res> {
  factory _$RegisterPersonalInfoStateCopyWith(_RegisterPersonalInfoState value,
          $Res Function(_RegisterPersonalInfoState) _then) =
      __$RegisterPersonalInfoStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String? familyCount,
      String phone,
      bool isDonorFlow,
      bool isSubmitting,
      bool showErrors,
      bool completed});
}

/// @nodoc
class __$RegisterPersonalInfoStateCopyWithImpl<$Res>
    implements _$RegisterPersonalInfoStateCopyWith<$Res> {
  __$RegisterPersonalInfoStateCopyWithImpl(this._self, this._then);

  final _RegisterPersonalInfoState _self;
  final $Res Function(_RegisterPersonalInfoState) _then;

  /// Create a copy of RegisterPersonalInfoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? familyCount = freezed,
    Object? phone = null,
    Object? isDonorFlow = null,
    Object? isSubmitting = null,
    Object? showErrors = null,
    Object? completed = null,
  }) {
    return _then(_RegisterPersonalInfoState(
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      familyCount: freezed == familyCount
          ? _self.familyCount
          : familyCount // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      isDonorFlow: null == isDonorFlow
          ? _self.isDonorFlow
          : isDonorFlow // ignore: cast_nullable_to_non_nullable
              as bool,
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
