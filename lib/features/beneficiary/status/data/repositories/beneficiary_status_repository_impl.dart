import 'package:dartz/dartz.dart';
import 'package:gooddeeds/shared/domain/failure.dart' as d;
import 'package:gooddeeds/shared/network/models/api_error.dart';
import 'package:gooddeeds/shared/network/models/api_result.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/beneficiary_status_entity.dart';
import '../../domain/repositories/beneficiary_status_repository.dart';
import '../datasources/beneficiary_status_remote_datasource.dart';
import '../mapper/mappers.dart';

@Injectable(as: BeneficiaryStatusRepository)
class BeneficiaryStatusRepositoryImpl implements BeneficiaryStatusRepository {
  BeneficiaryStatusRepositoryImpl(this._remoteDataSource);

  final BeneficiaryStatusRemoteDataSource _remoteDataSource;

  @override
  Future<Either<d.Failure, BeneficiaryStatusEntity>>
      getBeneficiaryStatus() async {
    try {
      final result = await _remoteDataSource.getBeneficiaryStatus();

      switch (result) {
        case Success(:final data):
          final beneficiaryStatusEntity = data.toEntity();
          return Right(beneficiaryStatusEntity);
        case Failure(:final error):
          return Left(d.Failure(error.displayMessage));
      }
    } catch (e) {
      return const Left(d.Failure('An unexpected error occurred'));
    }
  }
}
