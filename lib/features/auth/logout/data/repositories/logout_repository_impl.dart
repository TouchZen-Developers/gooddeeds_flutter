import 'package:dartz/dartz.dart';
import 'package:gooddeeds/shared/domain/failure.dart' as d;
import 'package:gooddeeds/shared/network/models/api_error.dart';
import 'package:gooddeeds/shared/network/models/api_result.dart';
import 'package:gooddeeds/shared/services/secure_storage_service.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/logout_response_entity.dart';
import '../../domain/repositories/logout_repository.dart';
import '../datasources/logout_remote_datasource.dart';
import '../mapper/mappers.dart';

@Injectable(as: LogoutRepository)
class LogoutRepositoryImpl implements LogoutRepository {
  LogoutRepositoryImpl(
    this._remoteDataSource,
    this._secureStorageService,
  );

  final LogoutRemoteDataSource _remoteDataSource;
  final SecureStorageService _secureStorageService;

  @override
  Future<Either<d.Failure, LogoutResponseEntity>> logout() async {
    try {
      final result = await _remoteDataSource.logout();

      switch (result) {
        case Success(:final data):
          final logoutResponseEntity = data.toEntity();

          // Clear all auth data from both storages
          await _secureStorageService.clearAuthData();

          return Right(logoutResponseEntity);
        case Failure(:final error):
          return Left(d.Failure(error.displayMessage));
      }
    } catch (e) {
      return const Left(d.Failure('An unexpected error occurred'));
    }
  }
}
