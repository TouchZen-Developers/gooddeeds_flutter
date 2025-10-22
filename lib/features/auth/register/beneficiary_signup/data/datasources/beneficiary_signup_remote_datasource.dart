import 'dart:io';

import 'package:dio/dio.dart';
import 'package:gooddeeds/shared/network/dio_extensions.dart';
import 'package:gooddeeds/shared/network/models/api_result.dart';
import 'package:injectable/injectable.dart';

import '../models/beneficiary_signup_dto.dart';

/// Abstract interface for beneficiary signup remote data source
abstract class BeneficiarySignupRemoteDataSource {
  /// Performs beneficiary signup API call with multipart/form-data
  Future<ApiResult<BeneficiarySignupDto>> signup(
    Map<String, dynamic> data,
    String? photoPath,
  );
}

/// Implementation of BeneficiarySignupRemoteDataSource using Dio with FormData
@Injectable(as: BeneficiarySignupRemoteDataSource)
class BeneficiarySignupRemoteDataSourceImpl
    implements BeneficiarySignupRemoteDataSource {
  BeneficiarySignupRemoteDataSourceImpl(this.httpClient);

  final Dio httpClient;

  @override
  Future<ApiResult<BeneficiarySignupDto>> signup(
    Map<String, dynamic> data,
    String? photoPath,
  ) async {
    try {
      final formData = FormData.fromMap(data);

      // Add file if photo path is provided
      if (photoPath != null && photoPath.isNotEmpty) {
        final file = File(photoPath);
        if (await file.exists()) {
          formData.files.add(
            MapEntry(
              'family_photo',
              await MultipartFile.fromFile(
                photoPath,
                filename: photoPath.split('/').last,
              ),
            ),
          );
        }
      }

      return await httpClient.safePost(
        'auth/beneficiaries/signup',
        (json) => BeneficiarySignupDto.fromJson(json),
        data: formData,
      );
    } catch (e) {
      rethrow;
    }
  }
}
