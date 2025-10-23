import 'package:dartz/dartz.dart';
import 'package:gooddeeds/shared/domain/failure.dart';
import 'package:injectable/injectable.dart';

import '../entities/beneficiary_signup_response_entity.dart';
import '../repositories/beneficiary_signup_repository.dart';

@injectable
class BeneficiarySignupUseCase {
  BeneficiarySignupUseCase(this._repository);
  final BeneficiarySignupRepository _repository;

  Future<Either<Failure, BeneficiarySignupResponseEntity>> call({
    required String firstName,
    required String lastName,
    required String email,
    required String phoneNumber,
    required String password,
    required String passwordConfirmation,
    required String familySize,
    required String address,
    required String city,
    required String state,
    required String zipCode,
    required String affectedEvent,
    required String statement,
    String? familyPhotoPath,
  }) async {
    return _repository.signup(
      firstName: firstName.trim(),
      lastName: lastName.trim(),
      email: email.trim(),
      phoneNumber: phoneNumber.trim(),
      password: password,
      passwordConfirmation: passwordConfirmation,
      familySize: familySize.trim(),
      address: address.trim(),
      city: city.trim(),
      state: state.trim(),
      zipCode: zipCode.trim(),
      affectedEvent: affectedEvent.trim(),
      statement: statement.trim(),
      familyPhotoPath: familyPhotoPath,
    );
  }
}
