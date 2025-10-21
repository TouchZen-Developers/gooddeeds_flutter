import 'package:dartz/dartz.dart';
import 'package:gooddeeds/shared/domain/failure.dart';
import 'package:injectable/injectable.dart';

import '../entities/verify_otp_entity.dart';
import '../repositories/verify_reset_code_repository.dart';

@injectable
class VerifyOtpUseCase {
  VerifyOtpUseCase(this._repository);
  final VerifyResetCodeRepository _repository;

  Future<Either<Failure, VerifyOtpEntity>> call({
    required String email,
    required String otp,
  }) async {
    return _repository.verifyOtp(email: email.trim(), otp: otp.trim());
  }
}
