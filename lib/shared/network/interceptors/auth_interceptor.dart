import 'package:dio/dio.dart';
import 'package:gooddeeds/shared/services/secure_storage_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthInterceptor extends Interceptor {
  AuthInterceptor(this._secureStorageService);

  final SecureStorageService _secureStorageService;

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await _secureStorageService.getToken();

    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }

    super.onRequest(options, handler);
  }
}
