import 'package:dartz/dartz.dart';
import 'package:gooddeeds/shared/domain/failure.dart';
import 'package:injectable/injectable.dart';

import '../entities/login_response_entity.dart';
import '../repositories/login_repository.dart';

@injectable
class LoginUseCase {
  LoginUseCase(this._repository);
  final LoginRepository _repository;

  Future<Either<Failure, LoginResponseEntity>> call({
    required String email,
    required String password,
  }) async {
    if (email.trim().isEmpty) {
      return const Left(Failure('Email is required'));
    }
    if (password.trim().isEmpty) {
      return const Left(Failure('Password is required'));
    }
    return _repository.login(email: email.trim(), password: password);
  }
}
