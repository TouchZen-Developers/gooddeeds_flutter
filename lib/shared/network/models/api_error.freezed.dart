// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ApiError {
  String get message;

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ApiErrorCopyWith<ApiError> get copyWith =>
      _$ApiErrorCopyWithImpl<ApiError>(this as ApiError, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ApiError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'ApiError(message: $message)';
  }
}

/// @nodoc
abstract mixin class $ApiErrorCopyWith<$Res> {
  factory $ApiErrorCopyWith(ApiError value, $Res Function(ApiError) _then) =
      _$ApiErrorCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$ApiErrorCopyWithImpl<$Res> implements $ApiErrorCopyWith<$Res> {
  _$ApiErrorCopyWithImpl(this._self, this._then);

  final ApiError _self;
  final $Res Function(ApiError) _then;

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_self.copyWith(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [ApiError].
extension ApiErrorPatterns on ApiError {
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
    TResult Function(NetworkError value)? network,
    TResult Function(ServerError value)? server,
    TResult Function(UnauthorizedError value)? unauthorized,
    TResult Function(ForbiddenError value)? forbidden,
    TResult Function(NotFoundError value)? notFound,
    TResult Function(ValidationError value)? validation,
    TResult Function(UnknownError value)? unknown,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case NetworkError() when network != null:
        return network(_that);
      case ServerError() when server != null:
        return server(_that);
      case UnauthorizedError() when unauthorized != null:
        return unauthorized(_that);
      case ForbiddenError() when forbidden != null:
        return forbidden(_that);
      case NotFoundError() when notFound != null:
        return notFound(_that);
      case ValidationError() when validation != null:
        return validation(_that);
      case UnknownError() when unknown != null:
        return unknown(_that);
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
    required TResult Function(NetworkError value) network,
    required TResult Function(ServerError value) server,
    required TResult Function(UnauthorizedError value) unauthorized,
    required TResult Function(ForbiddenError value) forbidden,
    required TResult Function(NotFoundError value) notFound,
    required TResult Function(ValidationError value) validation,
    required TResult Function(UnknownError value) unknown,
  }) {
    final _that = this;
    switch (_that) {
      case NetworkError():
        return network(_that);
      case ServerError():
        return server(_that);
      case UnauthorizedError():
        return unauthorized(_that);
      case ForbiddenError():
        return forbidden(_that);
      case NotFoundError():
        return notFound(_that);
      case ValidationError():
        return validation(_that);
      case UnknownError():
        return unknown(_that);
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
    TResult? Function(NetworkError value)? network,
    TResult? Function(ServerError value)? server,
    TResult? Function(UnauthorizedError value)? unauthorized,
    TResult? Function(ForbiddenError value)? forbidden,
    TResult? Function(NotFoundError value)? notFound,
    TResult? Function(ValidationError value)? validation,
    TResult? Function(UnknownError value)? unknown,
  }) {
    final _that = this;
    switch (_that) {
      case NetworkError() when network != null:
        return network(_that);
      case ServerError() when server != null:
        return server(_that);
      case UnauthorizedError() when unauthorized != null:
        return unauthorized(_that);
      case ForbiddenError() when forbidden != null:
        return forbidden(_that);
      case NotFoundError() when notFound != null:
        return notFound(_that);
      case ValidationError() when validation != null:
        return validation(_that);
      case UnknownError() when unknown != null:
        return unknown(_that);
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
    TResult Function(String message)? network,
    TResult Function(
            int statusCode, String message, Map<String, dynamic>? data)?
        server,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? forbidden,
    TResult Function(String message)? notFound,
    TResult Function(String message, Map<String, List<String>>? errors)?
        validation,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case NetworkError() when network != null:
        return network(_that.message);
      case ServerError() when server != null:
        return server(_that.statusCode, _that.message, _that.data);
      case UnauthorizedError() when unauthorized != null:
        return unauthorized(_that.message);
      case ForbiddenError() when forbidden != null:
        return forbidden(_that.message);
      case NotFoundError() when notFound != null:
        return notFound(_that.message);
      case ValidationError() when validation != null:
        return validation(_that.message, _that.errors);
      case UnknownError() when unknown != null:
        return unknown(_that.message);
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
    required TResult Function(String message) network,
    required TResult Function(
            int statusCode, String message, Map<String, dynamic>? data)
        server,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) forbidden,
    required TResult Function(String message) notFound,
    required TResult Function(String message, Map<String, List<String>>? errors)
        validation,
    required TResult Function(String message) unknown,
  }) {
    final _that = this;
    switch (_that) {
      case NetworkError():
        return network(_that.message);
      case ServerError():
        return server(_that.statusCode, _that.message, _that.data);
      case UnauthorizedError():
        return unauthorized(_that.message);
      case ForbiddenError():
        return forbidden(_that.message);
      case NotFoundError():
        return notFound(_that.message);
      case ValidationError():
        return validation(_that.message, _that.errors);
      case UnknownError():
        return unknown(_that.message);
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
    TResult? Function(String message)? network,
    TResult? Function(
            int statusCode, String message, Map<String, dynamic>? data)?
        server,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? forbidden,
    TResult? Function(String message)? notFound,
    TResult? Function(String message, Map<String, List<String>>? errors)?
        validation,
    TResult? Function(String message)? unknown,
  }) {
    final _that = this;
    switch (_that) {
      case NetworkError() when network != null:
        return network(_that.message);
      case ServerError() when server != null:
        return server(_that.statusCode, _that.message, _that.data);
      case UnauthorizedError() when unauthorized != null:
        return unauthorized(_that.message);
      case ForbiddenError() when forbidden != null:
        return forbidden(_that.message);
      case NotFoundError() when notFound != null:
        return notFound(_that.message);
      case ValidationError() when validation != null:
        return validation(_that.message, _that.errors);
      case UnknownError() when unknown != null:
        return unknown(_that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc

class NetworkError implements ApiError {
  const NetworkError({required this.message});

  @override
  final String message;

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NetworkErrorCopyWith<NetworkError> get copyWith =>
      _$NetworkErrorCopyWithImpl<NetworkError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NetworkError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'ApiError.network(message: $message)';
  }
}

/// @nodoc
abstract mixin class $NetworkErrorCopyWith<$Res>
    implements $ApiErrorCopyWith<$Res> {
  factory $NetworkErrorCopyWith(
          NetworkError value, $Res Function(NetworkError) _then) =
      _$NetworkErrorCopyWithImpl;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$NetworkErrorCopyWithImpl<$Res> implements $NetworkErrorCopyWith<$Res> {
  _$NetworkErrorCopyWithImpl(this._self, this._then);

  final NetworkError _self;
  final $Res Function(NetworkError) _then;

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(NetworkError(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class ServerError implements ApiError {
  const ServerError(
      {required this.statusCode,
      required this.message,
      final Map<String, dynamic>? data})
      : _data = data;

  final int statusCode;
  @override
  final String message;
  final Map<String, dynamic>? _data;
  Map<String, dynamic>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ServerErrorCopyWith<ServerError> get copyWith =>
      _$ServerErrorCopyWithImpl<ServerError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ServerError &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, statusCode, message,
      const DeepCollectionEquality().hash(_data));

  @override
  String toString() {
    return 'ApiError.server(statusCode: $statusCode, message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class $ServerErrorCopyWith<$Res>
    implements $ApiErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) _then) =
      _$ServerErrorCopyWithImpl;
  @override
  @useResult
  $Res call({int statusCode, String message, Map<String, dynamic>? data});
}

/// @nodoc
class _$ServerErrorCopyWithImpl<$Res> implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(this._self, this._then);

  final ServerError _self;
  final $Res Function(ServerError) _then;

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? statusCode = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(ServerError(
      statusCode: null == statusCode
          ? _self.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc

class UnauthorizedError implements ApiError {
  const UnauthorizedError({required this.message});

  @override
  final String message;

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UnauthorizedErrorCopyWith<UnauthorizedError> get copyWith =>
      _$UnauthorizedErrorCopyWithImpl<UnauthorizedError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UnauthorizedError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'ApiError.unauthorized(message: $message)';
  }
}

/// @nodoc
abstract mixin class $UnauthorizedErrorCopyWith<$Res>
    implements $ApiErrorCopyWith<$Res> {
  factory $UnauthorizedErrorCopyWith(
          UnauthorizedError value, $Res Function(UnauthorizedError) _then) =
      _$UnauthorizedErrorCopyWithImpl;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$UnauthorizedErrorCopyWithImpl<$Res>
    implements $UnauthorizedErrorCopyWith<$Res> {
  _$UnauthorizedErrorCopyWithImpl(this._self, this._then);

  final UnauthorizedError _self;
  final $Res Function(UnauthorizedError) _then;

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(UnauthorizedError(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class ForbiddenError implements ApiError {
  const ForbiddenError({required this.message});

  @override
  final String message;

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ForbiddenErrorCopyWith<ForbiddenError> get copyWith =>
      _$ForbiddenErrorCopyWithImpl<ForbiddenError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ForbiddenError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'ApiError.forbidden(message: $message)';
  }
}

/// @nodoc
abstract mixin class $ForbiddenErrorCopyWith<$Res>
    implements $ApiErrorCopyWith<$Res> {
  factory $ForbiddenErrorCopyWith(
          ForbiddenError value, $Res Function(ForbiddenError) _then) =
      _$ForbiddenErrorCopyWithImpl;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$ForbiddenErrorCopyWithImpl<$Res>
    implements $ForbiddenErrorCopyWith<$Res> {
  _$ForbiddenErrorCopyWithImpl(this._self, this._then);

  final ForbiddenError _self;
  final $Res Function(ForbiddenError) _then;

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(ForbiddenError(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class NotFoundError implements ApiError {
  const NotFoundError({required this.message});

  @override
  final String message;

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NotFoundErrorCopyWith<NotFoundError> get copyWith =>
      _$NotFoundErrorCopyWithImpl<NotFoundError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotFoundError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'ApiError.notFound(message: $message)';
  }
}

/// @nodoc
abstract mixin class $NotFoundErrorCopyWith<$Res>
    implements $ApiErrorCopyWith<$Res> {
  factory $NotFoundErrorCopyWith(
          NotFoundError value, $Res Function(NotFoundError) _then) =
      _$NotFoundErrorCopyWithImpl;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$NotFoundErrorCopyWithImpl<$Res>
    implements $NotFoundErrorCopyWith<$Res> {
  _$NotFoundErrorCopyWithImpl(this._self, this._then);

  final NotFoundError _self;
  final $Res Function(NotFoundError) _then;

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(NotFoundError(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class ValidationError implements ApiError {
  const ValidationError(
      {required this.message, final Map<String, List<String>>? errors})
      : _errors = errors;

  @override
  final String message;
  final Map<String, List<String>>? _errors;
  Map<String, List<String>>? get errors {
    final value = _errors;
    if (value == null) return null;
    if (_errors is EqualUnmodifiableMapView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ValidationErrorCopyWith<ValidationError> get copyWith =>
      _$ValidationErrorCopyWithImpl<ValidationError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ValidationError &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_errors));

  @override
  String toString() {
    return 'ApiError.validation(message: $message, errors: $errors)';
  }
}

/// @nodoc
abstract mixin class $ValidationErrorCopyWith<$Res>
    implements $ApiErrorCopyWith<$Res> {
  factory $ValidationErrorCopyWith(
          ValidationError value, $Res Function(ValidationError) _then) =
      _$ValidationErrorCopyWithImpl;
  @override
  @useResult
  $Res call({String message, Map<String, List<String>>? errors});
}

/// @nodoc
class _$ValidationErrorCopyWithImpl<$Res>
    implements $ValidationErrorCopyWith<$Res> {
  _$ValidationErrorCopyWithImpl(this._self, this._then);

  final ValidationError _self;
  final $Res Function(ValidationError) _then;

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
    Object? errors = freezed,
  }) {
    return _then(ValidationError(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      errors: freezed == errors
          ? _self._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>?,
    ));
  }
}

/// @nodoc

class UnknownError implements ApiError {
  const UnknownError({required this.message});

  @override
  final String message;

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UnknownErrorCopyWith<UnknownError> get copyWith =>
      _$UnknownErrorCopyWithImpl<UnknownError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UnknownError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'ApiError.unknown(message: $message)';
  }
}

/// @nodoc
abstract mixin class $UnknownErrorCopyWith<$Res>
    implements $ApiErrorCopyWith<$Res> {
  factory $UnknownErrorCopyWith(
          UnknownError value, $Res Function(UnknownError) _then) =
      _$UnknownErrorCopyWithImpl;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$UnknownErrorCopyWithImpl<$Res> implements $UnknownErrorCopyWith<$Res> {
  _$UnknownErrorCopyWithImpl(this._self, this._then);

  final UnknownError _self;
  final $Res Function(UnknownError) _then;

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(UnknownError(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
