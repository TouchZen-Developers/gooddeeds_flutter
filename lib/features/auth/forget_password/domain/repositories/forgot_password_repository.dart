import 'package:dartz/dartz.dart';
import 'package:gooddeeds/shared/domain/failure.dart';

import '../entities/send_otp_entity.dart';

abstract class ForgotPasswordRepository {
  Future<Either<Failure, SendOtpEntity>> sendOtp({
    required String email,
  });
}
