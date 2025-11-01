import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../../shared/domain/failure.dart';
import '../entities/complete_profile_entity.dart';
import '../repositories/social_auth_repository.dart';

@injectable
class CompleteProfileUseCase {
  CompleteProfileUseCase(this._repository);

  final SocialAuthRepository _repository;

  Future<Either<Failure, CompleteProfileResponseEntity>> call(
    CompleteProfileRequestEntity request,
  ) {
    return _repository.completeProfile(request);
  }
}
