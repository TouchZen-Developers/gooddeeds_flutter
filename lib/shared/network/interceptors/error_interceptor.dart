import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gooddeeds/src/config/routes/route_paths.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../api_config.dart';
import '../error_handler.dart';
import '../models/api_error.dart';

/// A Dio interceptor that handles HTTP errors and converts them into standardized ApiError objects.
///
/// This interceptor:
/// - Maps DioException types to appropriate ApiError instances
/// - Handles HTTP status codes and maps them to specific error types
/// - Automatically handles 401 Unauthorized responses by clearing tokens and redirecting to login
/// - Provides user-friendly error messages in Persian
@injectable
class ErrorInterceptor extends Interceptor {
  /// Creates an ErrorInterceptor instance
  ///
  /// [prefs] - SharedPreferences instance for storing/retrieving tokens
  /// [navigatorKey] - Global navigator key for navigation operations
  /// [errorHandler] - ErrorHandler for displaying errors to user
  ErrorInterceptor(
    this._prefs,
    @Named('rootNavigatorKey') this._navigatorKey,
    this._errorHandler,
  );

  /// SharedPreferences instance for managing local storage
  final SharedPreferences _prefs;

  /// Global navigator key for handling navigation
  final GlobalKey<NavigatorState> _navigatorKey;

  /// ErrorHandler for displaying errors to user
  final ErrorHandler _errorHandler;

  /// Handles Dio errors by converting them to ApiError and processing special cases
  ///
  /// [err] - The DioException that occurred
  /// [handler] - The error handler to continue or reject the request
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final apiError = _mapDioExceptionToApiError(err);

    // Handle 401 Unauthorized - clear token and navigate to login
    if (err.response?.statusCode == 401) {
      _handleUnauthorized();
    }

    // Show error snackbar automatically for HTTP errors
    if (err.type == DioExceptionType.badResponse) {
      _errorHandler.showError(apiError);
    }

    handler.reject(
      DioException(
        requestOptions: err.requestOptions,
        error: apiError,
        type: err.type,
        response: err.response,
      ),
    );
  }

  /// Maps DioException types to appropriate ApiError instances
  ///
  /// [exception] - The DioException to map
  /// Returns an ApiError with appropriate type and message
  ApiError _mapDioExceptionToApiError(DioException exception) {
    switch (exception.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return const ApiError.network(
          message:
              'Unable to connect to server. Please check your internet connection.',
        );

      case DioExceptionType.badResponse:
        return _mapStatusCodeToApiError(exception.response!);

      case DioExceptionType.cancel:
        return const ApiError.unknown(message: 'Request was cancelled');

      case DioExceptionType.connectionError:
        return const ApiError.network(
          message:
              'Connection error to server. Please check your internet connection.',
        );

      case DioExceptionType.badCertificate:
        return const ApiError.network(
          message: 'Server security certificate error',
        );

      case DioExceptionType.unknown:
        return const ApiError.unknown(
          message: 'An unknown error occurred. Please try again.',
        );
    }
  }

  /// Maps HTTP status codes to appropriate ApiError instances
  ///
  /// [response] - The HTTP response containing status code and data
  /// Returns an ApiError with appropriate type based on status code
  ApiError _mapStatusCodeToApiError(Response response) {
    final statusCode = response.statusCode!;
    final data = response.data;
    String message = 'Server error occurred';

    if (data is Map<String, dynamic> && data.containsKey('message')) {
      message = data['message'].toString();
    } else if (data is String) {
      message = data;
    }

    switch (statusCode) {
      case 400:
        return ApiError.validation(
          message: message,
          errors: data is Map<String, dynamic> && data.containsKey('errors')
              ? Map<String, List<String>>.from(data['errors'])
              : null,
        );

      case 401:
        return ApiError.unauthorized(message: message);

      case 403:
        return ApiError.forbidden(message: message);

      case 404:
        return ApiError.notFound(message: message);

      case 500:
      case 502:
      case 503:
      case 504:
        return ApiError.server(
          statusCode: statusCode,
          message: message,
          data: data is Map<String, dynamic> ? data : null,
        );

      default:
        return ApiError.server(
          statusCode: statusCode,
          message: message,
          data: data is Map<String, dynamic> ? data : null,
        );
    }
  }

  /// Handles 401 Unauthorized responses by clearing stored tokens and redirecting to login
  ///
  /// This method:
  /// - Removes the authentication token from SharedPreferences
  /// - Navigates the user back to the login screen
  void _handleUnauthorized() {
    // Clear token
    _prefs.remove(ApiConfig.tokenKey);

    // Navigate to login
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _navigatorKey.currentContext?.go(RoutePaths.login);
    });
  }
}
