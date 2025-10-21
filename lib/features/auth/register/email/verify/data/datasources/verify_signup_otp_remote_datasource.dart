import 'package:dio/dio.dart';
import 'package:gooddeeds/shared/network/dio_extensions.dart';
import 'package:gooddeeds/shared/network/models/api_result.dart';
import 'package:injectable/injectable.dart';

import '../models/verify_signup_otp_dto.dart';

/// Abstract interface for verify signup OTP remote data source
abstract class VerifySignupOtpRemoteDataSource {
  /// Performs verify OTP API call
  Future<ApiResult<VerifySignupOtpDto>> verifyOtp(Map<String, dynamic> body);

  /// Performs resend OTP API call
  Future<ApiResult<VerifySignupOtpDto>> resendOtp(Map<String, dynamic> body);
}

/// Implementation of VerifySignupOtpRemoteDataSource using Dio extensions
@Injectable(as: VerifySignupOtpRemoteDataSource)
class VerifySignupOtpRemoteDataSourceImpl
    implements VerifySignupOtpRemoteDataSource {
  VerifySignupOtpRemoteDataSourceImpl(this.httpClient);

  final Dio httpClient;

  @override
  Future<ApiResult<VerifySignupOtpDto>> verifyOtp(
    Map<String, dynamic> body,
  ) async {
    return await httpClient.safePost(
      'auth/signup/verify-otp',
      (json) => VerifySignupOtpDto.fromJson(json),
      data: body,
    );
  }

  @override
  Future<ApiResult<VerifySignupOtpDto>> resendOtp(
    Map<String, dynamic> body,
  ) async {
    return await httpClient.safePost(
      'auth/signup/resend-otp',
      (json) => VerifySignupOtpDto.fromJson(json),
      data: body,
    );
  }
}
