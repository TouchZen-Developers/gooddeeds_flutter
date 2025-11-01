import 'package:dartz/dartz.dart';
import 'package:gooddeeds/shared/data/user_role.dart';
import 'package:gooddeeds/shared/domain/failure.dart' as d;
import 'package:gooddeeds/shared/network/models/api_error.dart';
import 'package:gooddeeds/shared/network/models/api_result.dart';
import 'package:gooddeeds/shared/services/secure_storage_service.dart';
import 'package:gooddeeds/shared/services/beneficiary_status_dialog_service.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../domain/entities/login_response_entity.dart';
import '../../domain/repositories/login_repository.dart';
import '../datasources/login_remote_datasource.dart';
import '../mapper/mappers.dart';

@Injectable(as: LoginRepository)
class LoginRepositoryImpl implements LoginRepository {
  LoginRepositoryImpl(
    this._remoteDataSource,
    this._secureStorageService,
    this._prefs,
    this._dialogService,
  );

  final LoginRemoteDataSource _remoteDataSource;
  final SecureStorageService _secureStorageService;
  final SharedPreferences _prefs;
  final BeneficiaryStatusDialogService _dialogService;

  @override
  Future<Either<d.Failure, LoginResponseEntity>> login({
    required String email,
    required String password,
  }) async {
    try {
      final result = await _remoteDataSource.login({
        'email': email,
        'password': password,
      });

      switch (result) {
        case Success(:final data):
          final loginResponseEntity = data.toEntity();

          // Save to SecureStorage
          await _secureStorageService.saveToken(loginResponseEntity.token);
          // Normalize role to new vocabulary (beneficiary / Donorr)
          final serverRole = loginResponseEntity.user.role;
          final mappedRole = serverRole == 'beneficiary'
              ? 'beneficiary'
              : 'Donorr';
          await _secureStorageService.saveUserData({
            'id': loginResponseEntity.user.id,
            'name': loginResponseEntity.user.name,
            'email': loginResponseEntity.user.email,
            'role': mappedRole,
          });

          // Save user role to SharedPreferences
          await _prefs.setString(kPrefUserRole, mappedRole);

          // Reset first time after login flag for new login session
          await _dialogService.resetFirstTimeAfterLogin();

          return Right(loginResponseEntity);
        case Failure(:final error):
          return Left(d.Failure(error.displayMessage));
      }
    } catch (e) {
      return const Left(d.Failure('An unexpected error occurred'));
    }
  }
}
