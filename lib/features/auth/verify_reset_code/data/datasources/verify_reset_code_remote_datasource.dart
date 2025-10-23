import 'package:dio/dio.dart';
import 'package:gooddeeds/shared/network/dio_extensions.dart';
import 'package:gooddeeds/shared/network/models/api_result.dart';
import 'package:injectable/injectable.dart';

import '../models/verify_otp_dto.dart';

/// Abstract interface for verify reset code remote data source
abstract class VerifyResetCodeRemoteDataSource {
  /// Verifies OTP code
  Future<ApiResult<VerifyOtpDto>> verifyOtp(Map<String, dynamic> body);
}

/// Implementation of VerifyResetCodeRemoteDataSource using Dio extensions
@Injectable(as: VerifyResetCodeRemoteDataSource)
class VerifyResetCodeRemoteDataSourceImpl
    implements VerifyResetCodeRemoteDataSource {
  VerifyResetCodeRemoteDataSourceImpl(this.httpClient);

  final Dio httpClient;

  @override
  Future<ApiResult<VerifyOtpDto>> verifyOtp(Map<String, dynamic> body) async {
    return await httpClient.safePost(
      'forgot-password/verify-otp',
      (json) => VerifyOtpDto.fromJson(json),
      data: body,
    );
  }
}
