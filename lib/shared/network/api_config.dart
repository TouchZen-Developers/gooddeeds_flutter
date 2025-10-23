import 'package:injectable/injectable.dart';

@singleton
class ApiConfig {
  static const String baseUrl = 'https://api.gooddeeds.co/api/';
  static const Duration connectTimeout = Duration(seconds: 30);
  static const Duration receiveTimeout = Duration(seconds: 30);
  static const Duration sendTimeout = Duration(seconds: 30);

  // Headers
  static const Map<String, String> defaultHeaders = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  };

  // Token key for SharedPreferences
  static const String tokenKey = 'auth_token';
}
