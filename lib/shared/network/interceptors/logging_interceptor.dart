import 'dart:developer' as developer;

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@injectable
class LoggingInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (kDebugMode) {
      _logRequest(options);
    }
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (kDebugMode) {
      _logResponse(response);
    }
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (kDebugMode) {
      _logError(err);
    }
    super.onError(err, handler);
  }

  void _logRequest(RequestOptions options) {
    developer
        .log('┌─────────────────────────────────────────────────────────────');
    developer.log('│ REQUEST');
    developer
        .log('├─────────────────────────────────────────────────────────────');
    developer.log('│ ${options.method.toUpperCase()} ${options.uri}');
    developer.log('│ Headers: ${options.headers}');
    if (options.data != null) {
      developer.log('│ Data: ${options.data}');
    }
    developer
        .log('└─────────────────────────────────────────────────────────────');
  }

  void _logResponse(Response response) {
    developer
        .log('┌─────────────────────────────────────────────────────────────');
    developer.log('│ RESPONSE');
    developer
        .log('├─────────────────────────────────────────────────────────────');
    developer.log('│ ${response.statusCode} ${response.requestOptions.uri}');
    developer.log('│ Headers: ${response.headers}');
    developer.log('│ Data: ${response.data}');
    developer
        .log('└─────────────────────────────────────────────────────────────');
  }

  void _logError(DioException error) {
    developer
        .log('┌─────────────────────────────────────────────────────────────');
    developer.log('│ ERROR');
    developer
        .log('├─────────────────────────────────────────────────────────────');
    developer.log('│ ${error.type} - ${error.requestOptions.uri}');
    developer.log('│ Message: ${error.message}');
    if (error.response != null) {
      developer.log('│ Status Code: ${error.response?.statusCode}');
      developer.log('│ Response Data: ${error.response?.data}');
    }
    developer
        .log('└─────────────────────────────────────────────────────────────');
  }
}

// Alternative: Use PrettyDioLogger for more detailed logging
@injectable
class PrettyLoggingInterceptor extends PrettyDioLogger {
  PrettyLoggingInterceptor()
      : super(
          requestHeader: kDebugMode,
          requestBody: kDebugMode,
          responseBody: kDebugMode,
          responseHeader: false,
          error: true,
          compact: true,
          maxWidth: 90,
          logPrint: (object) =>
              developer.log(object.toString()), // Ensure errors are logged
        );
}
