import 'package:dio/dio.dart';

import 'models/api_error.dart';
import 'models/api_result.dart';

/// Extension methods for Dio to provide safe API calls with automatic error handling
/// and standardized response processing for the GoodDeeds API structure.
///
/// This extension handles the standard API response format:
/// {"success": true, "message": "...", "data": {...}}
extension DioExtensions on Dio {
  /// Performs a safe POST request with automatic error handling and response mapping
  ///
  /// [path] - The API endpoint path
  /// [mapper] - Function to map JSON response to model
  /// [data] - Request body data
  /// [queryParameters] - URL query parameters
  /// [options] - Request options
  /// [cancelToken] - Cancel token for request cancellation
  ///
  /// Returns ApiResult{T} with success or failure
  Future<ApiResult<T>> safePost<T>(
    String path,
    T Function(dynamic) mapper, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
      final response = await post(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );

      // Handle {"success": true, "data": {...}}
      if (response.data is Map<String, dynamic>) {
        final responseData = response.data as Map<String, dynamic>;

        // Extract data from nested response
        if (responseData.containsKey('data')) {
          final dataField = responseData['data'];
          return ApiResult.success(mapper(dataField));
        }
      }

      return ApiResult.success(mapper(response.data));
    } on DioException catch (e) {
      // Error already handled by ErrorInterceptor
      // Return failure with mapped error
      if (e.error is ApiError) {
        return ApiResult.failure(e.error as ApiError);
      }

      return ApiResult.failure(
        const ApiError.unknown(message: 'An unexpected error occurred'),
      );
    } catch (e) {
      return ApiResult.failure(
        ApiError.unknown(message: 'Unexpected error: $e'),
      );
    }
  }

  /// Performs a safe GET request with automatic error handling and response mapping
  ///
  /// [path] - The API endpoint path
  /// [mapper] - Function to map JSON response to model
  /// [queryParameters] - URL query parameters
  /// [options] - Request options
  /// [cancelToken] - Cancel token for request cancellation
  ///
  /// Returns ApiResult{T} with success or failure
  Future<ApiResult<T>> safeGet<T>(
    String path,
    T Function(dynamic) mapper, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
      final response = await get(
        path,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );

      // Handle {"success": true, "data": {...}}
      if (response.data is Map<String, dynamic>) {
        final responseData = response.data as Map<String, dynamic>;

        // Extract data from nested response
        if (responseData.containsKey('data')) {
          final dataField = responseData['data'];
          return ApiResult.success(mapper(dataField));
        }
      }

      return ApiResult.success(mapper(response.data));
    } on DioException catch (e) {
      // Error already handled by ErrorInterceptor
      if (e.error is ApiError) {
        return ApiResult.failure(e.error as ApiError);
      }

      return ApiResult.failure(
        const ApiError.unknown(message: 'An unexpected error occurred'),
      );
    } catch (e) {
      return ApiResult.failure(
        ApiError.unknown(message: 'Unexpected error: $e'),
      );
    }
  }

  /// Performs a safe PUT request with automatic error handling and response mapping
  ///
  /// [path] - The API endpoint path
  /// [mapper] - Function to map JSON response to model
  /// [data] - Request body data
  /// [queryParameters] - URL query parameters
  /// [options] - Request options
  /// [cancelToken] - Cancel token for request cancellation
  ///
  /// Returns ApiResult{T} with success or failure
  Future<ApiResult<T>> safePut<T>(
    String path,
    T Function(dynamic) mapper, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
      final response = await put(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );

      // Handle {"success": true, "data": {...}}
      if (response.data is Map<String, dynamic>) {
        final responseData = response.data as Map<String, dynamic>;

        // Extract data from nested response
        if (responseData.containsKey('data')) {
          final dataField = responseData['data'];
          return ApiResult.success(mapper(dataField));
        }
      }

      return ApiResult.success(mapper(response.data));
    } on DioException catch (e) {
      // Error already handled by ErrorInterceptor
      if (e.error is ApiError) {
        return ApiResult.failure(e.error as ApiError);
      }

      return ApiResult.failure(
        const ApiError.unknown(message: 'An unexpected error occurred'),
      );
    } catch (e) {
      return ApiResult.failure(
        ApiError.unknown(message: 'Unexpected error: $e'),
      );
    }
  }

  /// Performs a safe DELETE request with automatic error handling and response mapping
  ///
  /// [path] - The API endpoint path
  /// [mapper] - Function to map JSON response to model
  /// [data] - Request body data
  /// [queryParameters] - URL query parameters
  /// [options] - Request options
  /// [cancelToken] - Cancel token for request cancellation
  ///
  /// Returns ApiResult{T} with success or failure
  Future<ApiResult<T>> safeDelete<T>(
    String path,
    T Function(dynamic) mapper, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
      final response = await delete(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );

      // Handle {"success": true, "data": {...}}
      if (response.data is Map<String, dynamic>) {
        final responseData = response.data as Map<String, dynamic>;

        // Extract data from nested response
        if (responseData.containsKey('data')) {
          final dataField = responseData['data'];
          return ApiResult.success(mapper(dataField));
        }
      }

      return ApiResult.success(mapper(response.data));
    } on DioException catch (e) {
      // Error already handled by ErrorInterceptor
      if (e.error is ApiError) {
        return ApiResult.failure(e.error as ApiError);
      }

      return ApiResult.failure(
        const ApiError.unknown(message: 'An unexpected error occurred'),
      );
    } catch (e) {
      return ApiResult.failure(
        ApiError.unknown(message: 'Unexpected error: $e'),
      );
    }
  }

  /// Performs a safe PATCH request with automatic error handling and response mapping
  ///
  /// [path] - The API endpoint path
  /// [mapper] - Function to map JSON response to model
  /// [data] - Request body data
  /// [queryParameters] - URL query parameters
  /// [options] - Request options
  /// [cancelToken] - Cancel token for request cancellation
  ///
  /// Returns ApiResult{T} with success or failure
  Future<ApiResult<T>> safePatch<T>(
    String path,
    T Function(dynamic) mapper, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
      final response = await patch(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );

      // Handle {"success": true, "data": {...}}
      if (response.data is Map<String, dynamic>) {
        final responseData = response.data as Map<String, dynamic>;

        // Extract data from nested response
        if (responseData.containsKey('data')) {
          final dataField = responseData['data'];
          return ApiResult.success(mapper(dataField));
        }
      }

      return ApiResult.success(mapper(response.data));
    } on DioException catch (e) {
      // Error already handled by ErrorInterceptor
      if (e.error is ApiError) {
        return ApiResult.failure(e.error as ApiError);
      }

      return ApiResult.failure(
        const ApiError.unknown(message: 'An unexpected error occurred'),
      );
    } catch (e) {
      return ApiResult.failure(
        ApiError.unknown(message: 'Unexpected error: $e'),
      );
    }
  }
}
