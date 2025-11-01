import 'package:dartz/dartz.dart';
import 'package:gooddeeds/shared/domain/failure.dart';
import 'package:injectable/injectable.dart';

import '../entities/profile_entity.dart';
import '../repositories/profile_repository.dart';

@injectable
class GetProfileUseCase {
  GetProfileUseCase(this._repo);

  final ProfileRepository _repo;

  Future<Either<Failure, ProfileUserEntity>> call() => _repo.getProfile();
}
