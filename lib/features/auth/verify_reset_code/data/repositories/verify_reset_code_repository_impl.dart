import 'package:dartz/dartz.dart';
import 'package:gooddeeds/shared/domain/failure.dart' as d;
import 'package:gooddeeds/shared/network/models/api_error.dart';
import 'package:gooddeeds/shared/network/models/api_result.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/verify_otp_entity.dart';
import '../../domain/repositories/verify_reset_code_repository.dart';
import '../datasources/verify_reset_code_remote_datasource.dart';
import '../models/mappers.dart';

@Injectable(as: VerifyResetCodeRepository)
class VerifyResetCodeRepositoryImpl implements VerifyResetCodeRepository {
  VerifyResetCodeRepositoryImpl(this._remoteDataSource);

  final VerifyResetCodeRemoteDataSource _remoteDataSource;

  @override
  Future<Either<d.Failure, VerifyOtpEntity>> verifyOtp({
    required String email,
    required String otp,
  }) async {
    try {
      final result = await _remoteDataSource.verifyOtp({
        'email': email,
        'otp': otp,
      });

      switch (result) {
        case Success(:final data):
          return Right(data.toEntity());
        case Failure(:final error):
          return Left(d.Failure(error.displayMessage));
      }
    } catch (e) {
      return const Left(d.Failure('An unexpected error occurred'));
    }
  }
}
