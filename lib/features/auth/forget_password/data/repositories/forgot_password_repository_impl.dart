import 'package:dartz/dartz.dart';
import 'package:gooddeeds/shared/domain/failure.dart' as d;
import 'package:gooddeeds/shared/network/models/api_error.dart';
import 'package:gooddeeds/shared/network/models/api_result.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/send_otp_entity.dart';
import '../../domain/repositories/forgot_password_repository.dart';
import '../datasources/forgot_password_remote_datasource.dart';
import '../models/mappers.dart';

@Injectable(as: ForgotPasswordRepository)
class ForgotPasswordRepositoryImpl implements ForgotPasswordRepository {
  ForgotPasswordRepositoryImpl(this._remoteDataSource);

  final ForgotPasswordRemoteDataSource _remoteDataSource;

  @override
  Future<Either<d.Failure, SendOtpEntity>> sendOtp({
    required String email,
  }) async {
    try {
      final result = await _remoteDataSource.sendOtp({
        'email': email,
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
