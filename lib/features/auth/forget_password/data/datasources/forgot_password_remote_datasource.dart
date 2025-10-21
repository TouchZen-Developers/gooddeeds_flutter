import 'package:dio/dio.dart';
import 'package:gooddeeds/shared/network/dio_extensions.dart';
import 'package:gooddeeds/shared/network/models/api_result.dart';
import 'package:injectable/injectable.dart';

import '../models/send_otp_dto.dart';

/// Abstract interface for forgot password remote data source
abstract class ForgotPasswordRemoteDataSource {
  /// Sends OTP to user's email
  Future<ApiResult<SendOtpDto>> sendOtp(Map<String, dynamic> body);
}

/// Implementation of ForgotPasswordRemoteDataSource using Dio extensions
@Injectable(as: ForgotPasswordRemoteDataSource)
class ForgotPasswordRemoteDataSourceImpl
    implements ForgotPasswordRemoteDataSource {
  ForgotPasswordRemoteDataSourceImpl(this.httpClient);

  final Dio httpClient;

  @override
  Future<ApiResult<SendOtpDto>> sendOtp(Map<String, dynamic> body) async {
    return await httpClient.safePost(
      'forgot-password/send-otp',
      (json) => SendOtpDto.fromJson(json),
      data: body,
    );
  }
}
