import 'package:dartz/dartz.dart';
import 'package:gooddeeds/shared/domain/failure.dart' as d;
import 'package:gooddeeds/shared/network/models/api_error.dart';
import 'package:gooddeeds/shared/network/models/api_result.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/beneficiary_signup_response_entity.dart';
import '../../domain/repositories/beneficiary_signup_repository.dart';
import '../datasources/beneficiary_signup_remote_datasource.dart';
import '../models/mappers.dart';

@Injectable(as: BeneficiarySignupRepository)
class BeneficiarySignupRepositoryImpl implements BeneficiarySignupRepository {
  BeneficiarySignupRepositoryImpl(this._remoteDataSource);

  final BeneficiarySignupRemoteDataSource _remoteDataSource;

  @override
  Future<Either<d.Failure, BeneficiarySignupResponseEntity>> signup({
    required String firstName,
    required String lastName,
    required String email,
    required String phoneNumber,
    required String password,
    required String passwordConfirmation,
    required String familySize,
    required String address,
    required String city,
    required String state,
    required String zipCode,
    required String affectedEvent,
    required String statement,
    String? familyPhotoPath,
  }) async {
    try {
      final data = {
        'first_name': firstName,
        'last_name': lastName,
        'email': email,
        'phone_number': phoneNumber,
        'password': password,
        'password_confirmation': passwordConfirmation,
        'family_size': familySize,
        'address': address,
        'city': city,
        'state': state,
        'zip_code': zipCode,
        'affected_event': affectedEvent,
        'statement': statement,
      };

      final result = await _remoteDataSource.signup(data, familyPhotoPath);

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
