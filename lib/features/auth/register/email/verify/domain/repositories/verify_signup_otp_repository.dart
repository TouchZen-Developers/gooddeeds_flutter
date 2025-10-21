import 'package:dartz/dartz.dart';
import 'package:gooddeeds/shared/domain/failure.dart' as d;
import '../entities/verify_signup_otp_entity.dart';

abstract class VerifySignupOtpRepository {
  Future<Either<d.Failure, VerifySignupOtpEntity>> verifyOtp({
    required String email,
    required String otp,
  });

  Future<Either<d.Failure, VerifySignupOtpEntity>> resendOtp({
    required String email,
  });
}
