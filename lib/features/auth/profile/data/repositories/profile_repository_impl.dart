import 'package:dartz/dartz.dart';
import 'package:gooddeeds/shared/domain/failure.dart' as d;
import 'package:gooddeeds/shared/network/models/api_error.dart';
import 'package:gooddeeds/shared/network/models/api_result.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/profile_entity.dart';
import '../../domain/repositories/profile_repository.dart';
import '../datasources/profile_remote_datasource.dart';
import '../models/mappers.dart';

@Injectable(as: ProfileRepository)
class ProfileRepositoryImpl implements ProfileRepository {
  ProfileRepositoryImpl(this._remote);

  final ProfileRemoteDataSource _remote;

  @override
  Future<Either<d.Failure, ProfileUserEntity>> getProfile() async {
    try {
      final result = await _remote.getProfile();
      switch (result) {
        case Success(:final data):
          return Right(data.toEntity());
        case Failure(:final error):
          return Left(d.Failure(error.displayMessage));
      }
    } catch (_) {
      return const Left(d.Failure('An unexpected error occurred'));
    }
  }
}
