import 'package:dartz/dartz.dart';
import 'package:gooddeeds/shared/domain/failure.dart';

import '../entities/profile_entity.dart';

abstract class ProfileRepository {
  Future<Either<Failure, ProfileUserEntity>> getProfile();
}

