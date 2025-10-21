import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:gooddeeds/shared/network/api_config.dart';
import 'package:gooddeeds/shared/network/interceptors/auth_interceptor.dart';
import 'package:gooddeeds/shared/network/interceptors/error_interceptor.dart';
import 'package:gooddeeds/shared/network/interceptors/logging_interceptor.dart';
import 'package:injectable/injectable.dart';

@module
abstract class NetworkModule {
  /// Provides a configured Dio instance with basic configuration
  ///
  /// This Dio instance is pre-configured with:
  /// - Base URL and timeouts from ApiConfig
  /// - Default headers
  ///
  @singleton
  Dio dio(
    ApiConfig config,
    AuthInterceptor authInterceptor,
    ErrorInterceptor errorInterceptor,
    PrettyLoggingInterceptor loggingInterceptor,
  ) {
    final dio = Dio(
      BaseOptions(
        baseUrl: ApiConfig.baseUrl,
        connectTimeout: ApiConfig.connectTimeout,
        receiveTimeout: ApiConfig.receiveTimeout,
        sendTimeout: ApiConfig.sendTimeout,
        headers: ApiConfig.defaultHeaders,
      ),
    );

    dio.interceptors.addAll([
      authInterceptor,
      loggingInterceptor, // Logging first to see raw responses
      errorInterceptor, // Error handling after logging
    ]);

    return dio;
  }

  @singleton
  @Named('rootNavigatorKey')
  GlobalKey<NavigatorState> get rootNavigatorKey => GlobalKey<NavigatorState>();
}
