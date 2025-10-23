import 'package:dartz/dartz.dart';
import 'package:gooddeeds/shared/domain/failure.dart';

import '../entities/reset_password_entity.dart';

abstract class ResetPasswordRepository {
  Future<Either<Failure, ResetPasswordEntity>> resetPassword({
    required String verificationToken,
    required String password,
    required String passwordConfirmation,
  });
}
