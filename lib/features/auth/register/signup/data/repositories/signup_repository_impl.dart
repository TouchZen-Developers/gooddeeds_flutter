import 'package:dartz/dartz.dart';
import 'package:gooddeeds/shared/domain/failure.dart' as d;
import 'package:gooddeeds/shared/network/models/api_error.dart';
import 'package:gooddeeds/shared/network/models/api_result.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/signup_response_entity.dart';
import '../../domain/repositories/signup_repository.dart';
import '../datasources/signup_remote_datasource.dart';
import '../models/mappers.dart';

@Injectable(as: SignupRepository)
class SignupRepositoryImpl implements SignupRepository {
  SignupRepositoryImpl(this._remoteDataSource);
  final SignupRemoteDataSource _remoteDataSource;

  @override
  Future<Either<d.Failure, SignupResponseEntity>> signup({
    required String firstName,
    required String lastName,
    required String phoneNumber,
    required String email,
    required String password,
    required String passwordConfirmation,
  }) async {
    try {
      final result = await _remoteDataSource.signup({
        'first_name': firstName,
        'last_name': lastName,
        'phone_number': phoneNumber,
        'email': email,
        'password': password,
        'password_confirmation': passwordConfirmation,
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
