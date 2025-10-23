import 'package:dartz/dartz.dart';
import 'package:gooddeeds/shared/domain/failure.dart' as d;
import 'package:gooddeeds/shared/network/models/api_error.dart';
import 'package:gooddeeds/shared/network/models/api_result.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/verify_signup_otp_entity.dart';
import '../../domain/repositories/verify_signup_otp_repository.dart';
import '../datasources/verify_signup_otp_remote_datasource.dart';
import '../models/mappers.dart';

@Injectable(as: VerifySignupOtpRepository)
class VerifySignupOtpRepositoryImpl implements VerifySignupOtpRepository {
  VerifySignupOtpRepositoryImpl(this._remoteDataSource);
  final VerifySignupOtpRemoteDataSource _remoteDataSource;

  @override
  Future<Either<d.Failure, VerifySignupOtpEntity>> verifyOtp({
    required String email,
    required String otp,
  }) async {
    try {
      final result = await _remoteDataSource.verifyOtp({
        'email': email,
        'otp': otp,
      });

      return switch (result) {
        Success(:final data) => Right(data.toEntity()),
        Failure(:final error) => Left(d.Failure(_getErrorMessage(error))),
      };
    } catch (e) {
      return const Left(d.Failure('An unexpected error occurred'));
    }
  }

  @override
  Future<Either<d.Failure, VerifySignupOtpEntity>> resendOtp({
    required String email,
  }) async {
    try {
      final result = await _remoteDataSource.resendOtp({
        'email': email,
      });

      return switch (result) {
        Success(:final data) => Right(data.toEntity()),
        Failure(:final error) => Left(d.Failure(_getErrorMessage(error))),
      };
    } catch (e) {
      return const Left(d.Failure('An unexpected error occurred'));
    }
  }

  String _getErrorMessage(ApiError error) {
    return switch (error) {
      NetworkError(:final message) => message,
      ServerError(:final message) => message,
      UnauthorizedError(:final message) => message,
      ForbiddenError(:final message) => message,
      NotFoundError(:final message) => message,
      ValidationError(:final message) => message,
      UnknownError(:final message) => message,
    };
  }
}
