import 'package:dio/dio.dart';
import 'package:gooddeeds/shared/network/dio_extensions.dart';
import 'package:gooddeeds/shared/network/models/api_result.dart';
import 'package:injectable/injectable.dart';

import '../models/signup_dto.dart';

/// Abstract interface for signup remote data source
abstract class SignupRemoteDataSource {
  /// Performs signup API call
  Future<ApiResult<SignupDto>> signup(Map<String, dynamic> body);
}

/// Implementation of SignupRemoteDataSource using Dio extensions
@Injectable(as: SignupRemoteDataSource)
class SignupRemoteDataSourceImpl implements SignupRemoteDataSource {
  SignupRemoteDataSourceImpl(this.httpClient);

  final Dio httpClient;

  @override
  Future<ApiResult<SignupDto>> signup(Map<String, dynamic> body) async {
    return await httpClient.safePost(
      'auth/signup',
      (json) => SignupDto.fromJson(json),
      data: body,
    );
  }
}
