import 'package:dio/dio.dart';
import 'package:gooddeeds/shared/network/dio_extensions.dart';
import 'package:gooddeeds/shared/network/models/api_result.dart';
import 'package:injectable/injectable.dart';

import '../models/complete_profile_dto.dart';

abstract class SocialAuthRemoteDataSource {
  Future<ApiResult<CompleteProfileResponseDto>> completeProfile(
    CompleteProfileRequestDto request,
  );
}

@Injectable(as: SocialAuthRemoteDataSource)
class SocialAuthRemoteDataSourceImpl implements SocialAuthRemoteDataSource {
  SocialAuthRemoteDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<ApiResult<CompleteProfileResponseDto>> completeProfile(
    CompleteProfileRequestDto request,
  ) async {
    return await _dio.safePost(
      'auth/social/complete-profile',
      (json) =>
          CompleteProfileResponseDto.fromJson(json as Map<String, dynamic>),
      data: request.toJson(),
    );
  }
}
