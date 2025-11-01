import 'package:dartz/dartz.dart';
import 'package:gooddeeds/shared/domain/failure.dart';
import 'package:injectable/injectable.dart';

import '../entities/verify_beneficiary_otp_entity.dart';
import '../repositories/verify_beneficiary_otp_repository.dart';

@injectable
class VerifyBeneficiaryOtpUseCase {
  VerifyBeneficiaryOtpUseCase(this._repository);

  final VerifyBeneficiaryOtpRepository _repository;

  Future<Either<Failure, VerifyBeneficiaryOtpEntity>> call({
    required String email,
    required String otp,
  }) async {
    return _repository.verifyOtp(email: email.trim(), otp: otp.trim());
  }
}




