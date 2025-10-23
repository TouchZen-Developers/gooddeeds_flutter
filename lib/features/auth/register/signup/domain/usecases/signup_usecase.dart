import 'package:dartz/dartz.dart';
import 'package:gooddeeds/shared/domain/failure.dart';
import 'package:injectable/injectable.dart';

import '../entities/signup_response_entity.dart';
import '../repositories/signup_repository.dart';

@injectable
class SignupUseCase {
  SignupUseCase(this._repository);
  final SignupRepository _repository;

  Future<Either<Failure, SignupResponseEntity>> call({
    required String firstName,
    required String lastName,
    required String phoneNumber,
    required String email,
    required String password,
    required String passwordConfirmation,
  }) async {
    return _repository.signup(
      firstName: firstName.trim(),
      lastName: lastName.trim(),
      phoneNumber: phoneNumber.trim(),
      email: email.trim(),
      password: password,
      passwordConfirmation: passwordConfirmation,
    );
  }
}
