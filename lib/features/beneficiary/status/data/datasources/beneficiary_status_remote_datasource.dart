import 'package:dio/dio.dart';
import 'package:gooddeeds/shared/network/dio_extensions.dart';
import 'package:gooddeeds/shared/network/models/api_result.dart';
import 'package:injectable/injectable.dart';

import '../models/beneficiary_status_dto.dart';

/// Abstract interface for beneficiary status remote data source
abstract class BeneficiaryStatusRemoteDataSource {
  /// Gets beneficiary status
  Future<ApiResult<BeneficiaryStatusDto>> getBeneficiaryStatus();
}

/// Implementation of BeneficiaryStatusRemoteDataSource using Dio extensions
@Injectable(as: BeneficiaryStatusRemoteDataSource)
class BeneficiaryStatusRemoteDataSourceImpl
    implements BeneficiaryStatusRemoteDataSource {
  BeneficiaryStatusRemoteDataSourceImpl(this.httpClient);

  final Dio httpClient;

  @override
  Future<ApiResult<BeneficiaryStatusDto>> getBeneficiaryStatus() async {
    return await httpClient.safeGet(
      'beneficiaries/status',
      (json) => BeneficiaryStatusDto.fromJson(json),
    );
  }
}
