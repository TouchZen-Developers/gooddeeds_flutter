import 'package:dartz/dartz.dart';
import 'package:gooddeeds/shared/domain/failure.dart';
import 'package:injectable/injectable.dart';

import '../entities/reset_password_entity.dart';
import '../repositories/reset_password_repository.dart';

@injectable
class ResetPasswordUseCase {
  ResetPasswordUseCase(this._repository);
  final ResetPasswordRepository _repository;

  Future<Either<Failure, ResetPasswordEntity>> call({
    required String verificationToken,
    required String password,
    required String passwordConfirmation,
  }) async {
    return _repository.resetPassword(
      verificationToken: verificationToken.trim(),
      password: password.trim(),
      passwordConfirmation: passwordConfirmation.trim(),
    );
  }
}
