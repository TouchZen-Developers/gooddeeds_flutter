import 'package:dio/dio.dart';
import 'package:gooddeeds/shared/network/dio_extensions.dart';
import 'package:gooddeeds/shared/network/models/api_result.dart';
import 'package:injectable/injectable.dart';

import '../models/reset_password_dto.dart';

/// Abstract interface for reset password remote data source
abstract class ResetPasswordRemoteDataSource {
  /// Performs reset password API call
  Future<ApiResult<ResetPasswordDto>> resetPassword(Map<String, dynamic> body);
}

/// Implementation of ResetPasswordRemoteDataSource using Dio extensions
@Injectable(as: ResetPasswordRemoteDataSource)
class ResetPasswordRemoteDataSourceImpl
    implements ResetPasswordRemoteDataSource {
  ResetPasswordRemoteDataSourceImpl(this.httpClient);

  final Dio httpClient;

  @override
  Future<ApiResult<ResetPasswordDto>> resetPassword(
    Map<String, dynamic> body,
  ) async {
    return await httpClient.safePost(
      'forgot-password/reset',
      (json) => ResetPasswordDto.fromJson(json),
      data: body,
    );
  }
}
