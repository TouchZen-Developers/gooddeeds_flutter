import 'package:dartz/dartz.dart';
import 'package:gooddeeds/shared/domain/failure.dart';
import 'package:injectable/injectable.dart';

import '../entities/send_otp_entity.dart';
import '../repositories/forgot_password_repository.dart';

@injectable
class SendOtpUseCase {
  SendOtpUseCase(this._repository);
  final ForgotPasswordRepository _repository;

  Future<Either<Failure, SendOtpEntity>> call({
    required String email,
  }) async {
    return _repository.sendOtp(email: email.trim());
  }
}
