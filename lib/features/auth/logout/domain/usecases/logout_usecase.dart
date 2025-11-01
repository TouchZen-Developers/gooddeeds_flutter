import 'package:dartz/dartz.dart';
import 'package:gooddeeds/shared/domain/failure.dart';
import 'package:injectable/injectable.dart';

import '../entities/logout_response_entity.dart';
import '../repositories/logout_repository.dart';

@injectable
class LogoutUseCase {
  LogoutUseCase(this._repository);

  final LogoutRepository _repository;

  Future<Either<Failure, LogoutResponseEntity>> call() async {
    return _repository.logout();
  }
}
