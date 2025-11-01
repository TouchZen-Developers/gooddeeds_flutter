import 'package:dio/dio.dart';
import 'package:gooddeeds/shared/network/dio_extensions.dart';
import 'package:gooddeeds/shared/network/models/api_result.dart';
import 'package:injectable/injectable.dart';

import '../models/profile_dto.dart';

abstract class ProfileRemoteDataSource {
  Future<ApiResult<ProfileUserDto>> getProfile();
}

@Injectable(as: ProfileRemoteDataSource)
class ProfileRemoteDataSourceImpl implements ProfileRemoteDataSource {
  ProfileRemoteDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<ApiResult<ProfileUserDto>> getProfile() async {
    return await _dio.safeGet(
      'me',
      (json) => ProfileDataDto.fromJson(json).user,
    );
  }
}
