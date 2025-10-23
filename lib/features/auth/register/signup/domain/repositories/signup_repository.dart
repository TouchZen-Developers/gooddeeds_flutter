import 'package:dartz/dartz.dart';
import 'package:gooddeeds/shared/domain/failure.dart' as d;
import '../entities/signup_response_entity.dart';

abstract class SignupRepository {
  Future<Either<d.Failure, SignupResponseEntity>> signup({
    required String firstName,
    required String lastName,
    required String phoneNumber,
    required String email,
    required String password,
    required String passwordConfirmation,
  });
}
