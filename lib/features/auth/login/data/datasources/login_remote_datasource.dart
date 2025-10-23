import 'package:dio/dio.dart';
import 'package:gooddeeds/shared/network/dio_extensions.dart';
import 'package:gooddeeds/shared/network/models/api_result.dart';
import 'package:injectable/injectable.dart';

import '../models/login_response_dto.dart';

/// Abstract interface for login remote data source
///
/// This interface defines the contract for login-related API operations
/// and allows for easy testing and mocking
abstract class LoginRemoteDataSource {
  /// Performs login API call with email and password
  ///
  /// [body] - Request body containing email and password
  Future<ApiResult<LoginResponseDto>> login(Map<String, dynamic> body);
}

/// Implementation of LoginRemoteDataSource using Dio extensions
///
/// This class handles the actual API communication for login operations
/// using the safe Dio extensions for consistent error handling
@Injectable(as: LoginRemoteDataSource)
class LoginRemoteDataSourceImpl implements LoginRemoteDataSource {
  LoginRemoteDataSourceImpl(this.httpClient);

  final Dio httpClient;

  @override
  Future<ApiResult<LoginResponseDto>> login(Map<String, dynamic> body) async {
    return await httpClient.safePost(
      'login',
      (json) => LoginResponseDto.fromJson(json),
      data: body,
    );
  }
}
