import 'package:dartz/dartz.dart';
import 'package:gooddeeds/shared/domain/failure.dart';
import '../entities/login_response_entity.dart';

abstract class LoginRepository {
  Future<Either<Failure, LoginResponseEntity>> login({
    required String email,
    required String password,
  });
}
