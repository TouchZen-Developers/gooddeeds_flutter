import 'package:dartz/dartz.dart';
import 'package:gooddeeds/shared/domain/failure.dart' as d;
import '../entities/beneficiary_signup_response_entity.dart';

abstract class BeneficiarySignupRepository {
  Future<Either<d.Failure, BeneficiarySignupResponseEntity>> signup({
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
  });
}
