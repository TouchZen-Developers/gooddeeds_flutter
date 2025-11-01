import 'package:dartz/dartz.dart';
import 'package:gooddeeds/shared/domain/failure.dart';

import '../entities/complete_profile_entity.dart';

abstract class SocialAuthRepository {
  Future<Either<Failure, CompleteProfileResponseEntity>> completeProfile(
    CompleteProfileRequestEntity request,
  );
}
