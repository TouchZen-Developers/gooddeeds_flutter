import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../../shared/domain/failure.dart' as d;
import '../../../../../shared/network/models/api_error.dart';
import '../../../../../shared/network/models/api_result.dart';
import '../../domain/entities/complete_profile_entity.dart';
import '../../domain/repositories/social_auth_repository.dart';
import '../datasources/social_auth_remote_datasource.dart';
import '../models/mappers.dart';

@Injectable(as: SocialAuthRepository)
class SocialAuthRepositoryImpl implements SocialAuthRepository {
  SocialAuthRepositoryImpl(
    this._remoteDataSource,
  );

  final SocialAuthRemoteDataSource _remoteDataSource;

  @override
  Future<Either<d.Failure, CompleteProfileResponseEntity>> completeProfile(
    CompleteProfileRequestEntity request,
  ) async {
    try {
      final dto = request.toDto();
      final result = await _remoteDataSource.completeProfile(dto);

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
