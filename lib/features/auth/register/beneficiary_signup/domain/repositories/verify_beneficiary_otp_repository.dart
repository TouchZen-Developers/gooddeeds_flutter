import 'package:dartz/dartz.dart';
import 'package:gooddeeds/shared/domain/failure.dart' as d;

import '../entities/verify_beneficiary_otp_entity.dart';

abstract class VerifyBeneficiaryOtpRepository {
  Future<Either<d.Failure, VerifyBeneficiaryOtpEntity>> verifyOtp({
    required String email,
    required String otp,
  });
}




