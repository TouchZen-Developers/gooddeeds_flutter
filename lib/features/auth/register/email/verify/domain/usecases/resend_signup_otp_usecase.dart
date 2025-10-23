import 'package:dartz/dartz.dart';
import 'package:gooddeeds/shared/domain/failure.dart';
import 'package:injectable/injectable.dart';

import '../entities/verify_signup_otp_entity.dart';
import '../repositories/verify_signup_otp_repository.dart';

@injectable
class ResendSignupOtpUseCase {
  ResendSignupOtpUseCase(this._repository);
  final VerifySignupOtpRepository _repository;

  Future<Either<Failure, VerifySignupOtpEntity>> call({
    required String email,
  }) async {
    return _repository.resendOtp(email: email.trim());
  }
}
