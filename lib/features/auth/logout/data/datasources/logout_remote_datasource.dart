import 'package:dio/dio.dart';
import 'package:gooddeeds/shared/network/dio_extensions.dart';
import 'package:gooddeeds/shared/network/models/api_result.dart';
import 'package:injectable/injectable.dart';

import '../models/logout_response_dto.dart';

/// Abstract interface for logout remote data source
///
/// This interface defines the contract for logout-related API operations
/// and allows for easy testing and mocking
abstract class LogoutRemoteDataSource {
  /// Performs logout API call
  ///
  /// Returns the logout response from the server
  Future<ApiResult<LogoutResponseDto>> logout();
}

/// Implementation of LogoutRemoteDataSource using Dio extensions
///
/// This class handles the actual API communication for logout operations
/// using the safe Dio extensions for consistent error handling
@Injectable(as: LogoutRemoteDataSource)
class LogoutRemoteDataSourceImpl implements LogoutRemoteDataSource {
  LogoutRemoteDataSourceImpl(this.httpClient);

  final Dio httpClient;

  @override
  Future<ApiResult<LogoutResponseDto>> logout() async {
    return await httpClient.safePost(
      'logout',
      (json) => LogoutResponseDto.fromJson(json),
    );
  }
}
