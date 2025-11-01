import 'package:dartz/dartz.dart';
import 'package:gooddeeds/shared/domain/failure.dart';

import '../entities/logout_response_entity.dart';

abstract class LogoutRepository {
  Future<Either<Failure, LogoutResponseEntity>> logout();
}
