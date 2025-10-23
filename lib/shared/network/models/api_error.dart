import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_error.freezed.dart';

@freezed
sealed class ApiError with _$ApiError {
  const factory ApiError.network({
    required String message,
  }) = NetworkError;

  const factory ApiError.server({
    required int statusCode,
    required String message,
    Map<String, dynamic>? data,
  }) = ServerError;

  const factory ApiError.unauthorized({
    required String message,
  }) = UnauthorizedError;

  const factory ApiError.forbidden({
    required String message,
  }) = ForbiddenError;

  const factory ApiError.notFound({
    required String message,
  }) = NotFoundError;

  const factory ApiError.validation({
    required String message,
    Map<String, List<String>>? errors,
  }) = ValidationError;

  const factory ApiError.unknown({
    required String message,
  }) = UnknownError;
}

extension ApiErrorExtension on ApiError {
  String get displayMessage => switch (this) {
        NetworkError(:final message) => message,
        ServerError(:final message) => message,
        UnauthorizedError(:final message) => message,
        ForbiddenError(:final message) => message,
        NotFoundError(:final message) => message,
        ValidationError(:final message) => message,
        UnknownError(:final message) => message,
      };

  bool get isNetworkError => this is NetworkError;

  bool get isServerError => this is ServerError;

  bool get isUnauthorized => this is UnauthorizedError;

  bool get isForbidden => this is ForbiddenError;

  bool get isNotFound => this is NotFoundError;

  bool get isValidationError => this is ValidationError;

  bool get isUnknownError => this is UnknownError;
}
