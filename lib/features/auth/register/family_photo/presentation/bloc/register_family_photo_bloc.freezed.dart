// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_family_photo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegisterFamilyPhotoEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RegisterFamilyPhotoEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RegisterFamilyPhotoEvent()';
  }
}

/// @nodoc
class $RegisterFamilyPhotoEventCopyWith<$Res> {
  $RegisterFamilyPhotoEventCopyWith(
      RegisterFamilyPhotoEvent _, $Res Function(RegisterFamilyPhotoEvent) __);
}

/// Adds pattern-matching-related methods to [RegisterFamilyPhotoEvent].
extension RegisterFamilyPhotoEventPatterns on RegisterFamilyPhotoEvent {
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
    TResult Function(_PickFromGallery value)? pickFromGallery,
    TResult Function(_PickFromCamera value)? pickFromCamera,
    TResult Function(_StartUpload value)? startUpload,
    TResult Function(_Delete value)? delete,
    TResult Function(_NeedPhotoError value)? needPhotoError,
    TResult Function(_ClearError value)? clearError,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PickFromGallery() when pickFromGallery != null:
        return pickFromGallery(_that);
      case _PickFromCamera() when pickFromCamera != null:
        return pickFromCamera(_that);
      case _StartUpload() when startUpload != null:
        return startUpload(_that);
      case _Delete() when delete != null:
        return delete(_that);
      case _NeedPhotoError() when needPhotoError != null:
        return needPhotoError(_that);
      case _ClearError() when clearError != null:
        return clearError(_that);
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
    required TResult Function(_PickFromGallery value) pickFromGallery,
    required TResult Function(_PickFromCamera value) pickFromCamera,
    required TResult Function(_StartUpload value) startUpload,
    required TResult Function(_Delete value) delete,
    required TResult Function(_NeedPhotoError value) needPhotoError,
    required TResult Function(_ClearError value) clearError,
  }) {
    final _that = this;
    switch (_that) {
      case _PickFromGallery():
        return pickFromGallery(_that);
      case _PickFromCamera():
        return pickFromCamera(_that);
      case _StartUpload():
        return startUpload(_that);
      case _Delete():
        return delete(_that);
      case _NeedPhotoError():
        return needPhotoError(_that);
      case _ClearError():
        return clearError(_that);
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
    TResult? Function(_PickFromGallery value)? pickFromGallery,
    TResult? Function(_PickFromCamera value)? pickFromCamera,
    TResult? Function(_StartUpload value)? startUpload,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_NeedPhotoError value)? needPhotoError,
    TResult? Function(_ClearError value)? clearError,
  }) {
    final _that = this;
    switch (_that) {
      case _PickFromGallery() when pickFromGallery != null:
        return pickFromGallery(_that);
      case _PickFromCamera() when pickFromCamera != null:
        return pickFromCamera(_that);
      case _StartUpload() when startUpload != null:
        return startUpload(_that);
      case _Delete() when delete != null:
        return delete(_that);
      case _NeedPhotoError() when needPhotoError != null:
        return needPhotoError(_that);
      case _ClearError() when clearError != null:
        return clearError(_that);
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
    TResult Function()? pickFromGallery,
    TResult Function()? pickFromCamera,
    TResult Function(File file)? startUpload,
    TResult Function()? delete,
    TResult Function(String message)? needPhotoError,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PickFromGallery() when pickFromGallery != null:
        return pickFromGallery();
      case _PickFromCamera() when pickFromCamera != null:
        return pickFromCamera();
      case _StartUpload() when startUpload != null:
        return startUpload(_that.file);
      case _Delete() when delete != null:
        return delete();
      case _NeedPhotoError() when needPhotoError != null:
        return needPhotoError(_that.message);
      case _ClearError() when clearError != null:
        return clearError();
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
    required TResult Function() pickFromGallery,
    required TResult Function() pickFromCamera,
    required TResult Function(File file) startUpload,
    required TResult Function() delete,
    required TResult Function(String message) needPhotoError,
    required TResult Function() clearError,
  }) {
    final _that = this;
    switch (_that) {
      case _PickFromGallery():
        return pickFromGallery();
      case _PickFromCamera():
        return pickFromCamera();
      case _StartUpload():
        return startUpload(_that.file);
      case _Delete():
        return delete();
      case _NeedPhotoError():
        return needPhotoError(_that.message);
      case _ClearError():
        return clearError();
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
    TResult? Function()? pickFromGallery,
    TResult? Function()? pickFromCamera,
    TResult? Function(File file)? startUpload,
    TResult? Function()? delete,
    TResult? Function(String message)? needPhotoError,
    TResult? Function()? clearError,
  }) {
    final _that = this;
    switch (_that) {
      case _PickFromGallery() when pickFromGallery != null:
        return pickFromGallery();
      case _PickFromCamera() when pickFromCamera != null:
        return pickFromCamera();
      case _StartUpload() when startUpload != null:
        return startUpload(_that.file);
      case _Delete() when delete != null:
        return delete();
      case _NeedPhotoError() when needPhotoError != null:
        return needPhotoError(_that.message);
      case _ClearError() when clearError != null:
        return clearError();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _PickFromGallery implements RegisterFamilyPhotoEvent {
  const _PickFromGallery();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _PickFromGallery);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RegisterFamilyPhotoEvent.pickFromGallery()';
  }
}

/// @nodoc

class _PickFromCamera implements RegisterFamilyPhotoEvent {
  const _PickFromCamera();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _PickFromCamera);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RegisterFamilyPhotoEvent.pickFromCamera()';
  }
}

/// @nodoc

class _StartUpload implements RegisterFamilyPhotoEvent {
  const _StartUpload(this.file);

  final File file;

  /// Create a copy of RegisterFamilyPhotoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StartUploadCopyWith<_StartUpload> get copyWith =>
      __$StartUploadCopyWithImpl<_StartUpload>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StartUpload &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file);

  @override
  String toString() {
    return 'RegisterFamilyPhotoEvent.startUpload(file: $file)';
  }
}

/// @nodoc
abstract mixin class _$StartUploadCopyWith<$Res>
    implements $RegisterFamilyPhotoEventCopyWith<$Res> {
  factory _$StartUploadCopyWith(
          _StartUpload value, $Res Function(_StartUpload) _then) =
      __$StartUploadCopyWithImpl;
  @useResult
  $Res call({File file});
}

/// @nodoc
class __$StartUploadCopyWithImpl<$Res> implements _$StartUploadCopyWith<$Res> {
  __$StartUploadCopyWithImpl(this._self, this._then);

  final _StartUpload _self;
  final $Res Function(_StartUpload) _then;

  /// Create a copy of RegisterFamilyPhotoEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? file = null,
  }) {
    return _then(_StartUpload(
      null == file
          ? _self.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _Delete implements RegisterFamilyPhotoEvent {
  const _Delete();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Delete);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RegisterFamilyPhotoEvent.delete()';
  }
}

/// @nodoc

class _NeedPhotoError implements RegisterFamilyPhotoEvent {
  const _NeedPhotoError(this.message);

  final String message;

  /// Create a copy of RegisterFamilyPhotoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NeedPhotoErrorCopyWith<_NeedPhotoError> get copyWith =>
      __$NeedPhotoErrorCopyWithImpl<_NeedPhotoError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NeedPhotoError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'RegisterFamilyPhotoEvent.needPhotoError(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$NeedPhotoErrorCopyWith<$Res>
    implements $RegisterFamilyPhotoEventCopyWith<$Res> {
  factory _$NeedPhotoErrorCopyWith(
          _NeedPhotoError value, $Res Function(_NeedPhotoError) _then) =
      __$NeedPhotoErrorCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$NeedPhotoErrorCopyWithImpl<$Res>
    implements _$NeedPhotoErrorCopyWith<$Res> {
  __$NeedPhotoErrorCopyWithImpl(this._self, this._then);

  final _NeedPhotoError _self;
  final $Res Function(_NeedPhotoError) _then;

  /// Create a copy of RegisterFamilyPhotoEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_NeedPhotoError(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _ClearError implements RegisterFamilyPhotoEvent {
  const _ClearError();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ClearError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RegisterFamilyPhotoEvent.clearError()';
  }
}

/// @nodoc
mixin _$RegisterFamilyPhotoState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RegisterFamilyPhotoState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RegisterFamilyPhotoState()';
  }
}

/// @nodoc
class $RegisterFamilyPhotoStateCopyWith<$Res> {
  $RegisterFamilyPhotoStateCopyWith(
      RegisterFamilyPhotoState _, $Res Function(RegisterFamilyPhotoState) __);
}

/// Adds pattern-matching-related methods to [RegisterFamilyPhotoState].
extension RegisterFamilyPhotoStatePatterns on RegisterFamilyPhotoState {
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
    TResult Function(_Idle value)? idle,
    TResult Function(_Uploading value)? uploading,
    TResult Function(_Ready value)? ready,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Idle() when idle != null:
        return idle(_that);
      case _Uploading() when uploading != null:
        return uploading(_that);
      case _Ready() when ready != null:
        return ready(_that);
      case _Deleting() when deleting != null:
        return deleting(_that);
      case _Error() when error != null:
        return error(_that);
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
    required TResult Function(_Idle value) idle,
    required TResult Function(_Uploading value) uploading,
    required TResult Function(_Ready value) ready,
    required TResult Function(_Deleting value) deleting,
    required TResult Function(_Error value) error,
  }) {
    final _that = this;
    switch (_that) {
      case _Idle():
        return idle(_that);
      case _Uploading():
        return uploading(_that);
      case _Ready():
        return ready(_that);
      case _Deleting():
        return deleting(_that);
      case _Error():
        return error(_that);
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
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Uploading value)? uploading,
    TResult? Function(_Ready value)? ready,
    TResult? Function(_Deleting value)? deleting,
    TResult? Function(_Error value)? error,
  }) {
    final _that = this;
    switch (_that) {
      case _Idle() when idle != null:
        return idle(_that);
      case _Uploading() when uploading != null:
        return uploading(_that);
      case _Ready() when ready != null:
        return ready(_that);
      case _Deleting() when deleting != null:
        return deleting(_that);
      case _Error() when error != null:
        return error(_that);
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
    TResult Function()? idle,
    TResult Function(double progress)? uploading,
    TResult Function(File file)? ready,
    TResult Function()? deleting,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Idle() when idle != null:
        return idle();
      case _Uploading() when uploading != null:
        return uploading(_that.progress);
      case _Ready() when ready != null:
        return ready(_that.file);
      case _Deleting() when deleting != null:
        return deleting();
      case _Error() when error != null:
        return error(_that.message);
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
    required TResult Function() idle,
    required TResult Function(double progress) uploading,
    required TResult Function(File file) ready,
    required TResult Function() deleting,
    required TResult Function(String message) error,
  }) {
    final _that = this;
    switch (_that) {
      case _Idle():
        return idle();
      case _Uploading():
        return uploading(_that.progress);
      case _Ready():
        return ready(_that.file);
      case _Deleting():
        return deleting();
      case _Error():
        return error(_that.message);
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
    TResult? Function()? idle,
    TResult? Function(double progress)? uploading,
    TResult? Function(File file)? ready,
    TResult? Function()? deleting,
    TResult? Function(String message)? error,
  }) {
    final _that = this;
    switch (_that) {
      case _Idle() when idle != null:
        return idle();
      case _Uploading() when uploading != null:
        return uploading(_that.progress);
      case _Ready() when ready != null:
        return ready(_that.file);
      case _Deleting() when deleting != null:
        return deleting();
      case _Error() when error != null:
        return error(_that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Idle implements RegisterFamilyPhotoState {
  const _Idle();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Idle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RegisterFamilyPhotoState.idle()';
  }
}

/// @nodoc

class _Uploading implements RegisterFamilyPhotoState {
  const _Uploading(this.progress);

  final double progress;

  /// Create a copy of RegisterFamilyPhotoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UploadingCopyWith<_Uploading> get copyWith =>
      __$UploadingCopyWithImpl<_Uploading>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Uploading &&
            (identical(other.progress, progress) ||
                other.progress == progress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, progress);

  @override
  String toString() {
    return 'RegisterFamilyPhotoState.uploading(progress: $progress)';
  }
}

/// @nodoc
abstract mixin class _$UploadingCopyWith<$Res>
    implements $RegisterFamilyPhotoStateCopyWith<$Res> {
  factory _$UploadingCopyWith(
          _Uploading value, $Res Function(_Uploading) _then) =
      __$UploadingCopyWithImpl;
  @useResult
  $Res call({double progress});
}

/// @nodoc
class __$UploadingCopyWithImpl<$Res> implements _$UploadingCopyWith<$Res> {
  __$UploadingCopyWithImpl(this._self, this._then);

  final _Uploading _self;
  final $Res Function(_Uploading) _then;

  /// Create a copy of RegisterFamilyPhotoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? progress = null,
  }) {
    return _then(_Uploading(
      null == progress
          ? _self.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _Ready implements RegisterFamilyPhotoState {
  const _Ready(this.file);

  final File file;

  /// Create a copy of RegisterFamilyPhotoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ReadyCopyWith<_Ready> get copyWith =>
      __$ReadyCopyWithImpl<_Ready>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Ready &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file);

  @override
  String toString() {
    return 'RegisterFamilyPhotoState.ready(file: $file)';
  }
}

/// @nodoc
abstract mixin class _$ReadyCopyWith<$Res>
    implements $RegisterFamilyPhotoStateCopyWith<$Res> {
  factory _$ReadyCopyWith(_Ready value, $Res Function(_Ready) _then) =
      __$ReadyCopyWithImpl;
  @useResult
  $Res call({File file});
}

/// @nodoc
class __$ReadyCopyWithImpl<$Res> implements _$ReadyCopyWith<$Res> {
  __$ReadyCopyWithImpl(this._self, this._then);

  final _Ready _self;
  final $Res Function(_Ready) _then;

  /// Create a copy of RegisterFamilyPhotoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? file = null,
  }) {
    return _then(_Ready(
      null == file
          ? _self.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _Deleting implements RegisterFamilyPhotoState {
  const _Deleting();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Deleting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RegisterFamilyPhotoState.deleting()';
  }
}

/// @nodoc

class _Error implements RegisterFamilyPhotoState {
  const _Error(this.message);

  final String message;

  /// Create a copy of RegisterFamilyPhotoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Error &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'RegisterFamilyPhotoState.error(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res>
    implements $RegisterFamilyPhotoStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) =
      __$ErrorCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

  /// Create a copy of RegisterFamilyPhotoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_Error(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
