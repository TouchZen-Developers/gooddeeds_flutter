import 'package:dartz/dartz.dart';
import 'package:gooddeeds/shared/domain/failure.dart' as d;
import 'package:gooddeeds/shared/network/models/api_error.dart';
import 'package:gooddeeds/shared/network/models/api_result.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/reset_password_entity.dart';
import '../../domain/repositories/reset_password_repository.dart';
import '../datasources/reset_password_remote_datasource.dart';
import '../models/mappers.dart';

@Injectable(as: ResetPasswordRepository)
class ResetPasswordRepositoryImpl implements ResetPasswordRepository {
  ResetPasswordRepositoryImpl(this._remoteDataSource);

  final ResetPasswordRemoteDataSource _remoteDataSource;

  @override
  Future<Either<d.Failure, ResetPasswordEntity>> resetPassword({
    required String verificationToken,
    required String password,
    required String passwordConfirmation,
  }) async {
    try {
      final result = await _remoteDataSource.resetPassword({
        'verification_token': verificationToken,
        'password': password,
        'password_confirmation': passwordConfirmation,
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
