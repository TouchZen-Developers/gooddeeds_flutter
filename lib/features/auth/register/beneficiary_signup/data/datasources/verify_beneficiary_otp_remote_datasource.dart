import 'package:dio/dio.dart';
import 'package:gooddeeds/shared/network/dio_extensions.dart';
import 'package:gooddeeds/shared/network/models/api_result.dart';
import 'package:injectable/injectable.dart';

import '../models/verify_beneficiary_otp_dto.dart';

/// Abstract interface for verify beneficiary OTP remote data source
abstract class VerifyBeneficiaryOtpRemoteDataSource {
  /// Performs verify OTP API call for beneficiary
  Future<ApiResult<VerifyBeneficiaryOtpDto>> verifyOtp(
    Map<String, dynamic> body,
  );
}

/// Implementation of VerifyBeneficiaryOtpRemoteDataSource using Dio extensions
@Injectable(as: VerifyBeneficiaryOtpRemoteDataSource)
class VerifyBeneficiaryOtpRemoteDataSourceImpl
    implements VerifyBeneficiaryOtpRemoteDataSource {
  VerifyBeneficiaryOtpRemoteDataSourceImpl(this.httpClient);

  final Dio httpClient;

  @override
  Future<ApiResult<VerifyBeneficiaryOtpDto>> verifyOtp(
    Map<String, dynamic> body,
  ) async {
    return await httpClient.safePost(
      'auth/signup/verify-otp',
      (json) {
        // Response has a 'data' wrapper
        final data = json['data'] as Map<String, dynamic>;
        return VerifyBeneficiaryOtpDto.fromJson({
          'message': json['message'],
          'user': data['user'],
          'beneficiary': data['beneficiary'],
        });
      },
      data: body,
    );
  }
}
