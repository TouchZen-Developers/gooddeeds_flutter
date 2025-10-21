import 'package:dartz/dartz.dart';
import 'package:gooddeeds/shared/domain/failure.dart';

import '../entities/verify_otp_entity.dart';

abstract class VerifyResetCodeRepository {
  Future<Either<Failure, VerifyOtpEntity>> verifyOtp({
    required String email,
    required String otp,
  });
}
