// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:flutter/material.dart' as _i409;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../../features/auth/forget_password/data/datasources/forgot_password_remote_datasource.dart'
    as _i366;
import '../../../features/auth/forget_password/data/repositories/forgot_password_repository_impl.dart'
    as _i916;
import '../../../features/auth/forget_password/domain/repositories/forgot_password_repository.dart'
    as _i103;
import '../../../features/auth/forget_password/domain/usecases/send_otp_usecase.dart'
    as _i924;
import '../../../features/auth/forget_password/presentation/bloc/forgot_password_bloc.dart'
    as _i828;
import '../../../features/auth/google_signin/presentation/bloc/google_signin_bloc.dart'
    as _i834;
import '../../../features/auth/login/data/datasources/login_remote_datasource.dart'
    as _i1056;
import '../../../features/auth/login/data/repositories/login_repository_impl.dart'
    as _i897;
import '../../../features/auth/login/domain/repositories/login_repository.dart'
    as _i325;
import '../../../features/auth/login/domain/usecases/login_usecase.dart'
    as _i178;
import '../../../features/auth/login/presentation/bloc/login_bloc.dart'
    as _i1072;
import '../../../features/auth/logout/data/datasources/logout_remote_datasource.dart'
    as _i203;
import '../../../features/auth/logout/data/repositories/logout_repository_impl.dart'
    as _i684;
import '../../../features/auth/logout/domain/repositories/logout_repository.dart'
    as _i494;
import '../../../features/auth/logout/domain/usecases/logout_usecase.dart'
    as _i55;
import '../../../features/auth/logout/presentation/bloc/logout_bloc.dart'
    as _i880;
import '../../../features/auth/profile/data/datasources/profile_remote_datasource.dart'
    as _i998;
import '../../../features/auth/profile/data/repositories/profile_repository_impl.dart'
    as _i450;
import '../../../features/auth/profile/domain/repositories/profile_repository.dart'
    as _i380;
import '../../../features/auth/profile/domain/usecases/get_profile_usecase.dart'
    as _i653;
import '../../../features/auth/register/beneficiary_signup/data/datasources/beneficiary_signup_remote_datasource.dart'
    as _i56;
import '../../../features/auth/register/beneficiary_signup/data/datasources/verify_beneficiary_otp_remote_datasource.dart'
    as _i259;
import '../../../features/auth/register/beneficiary_signup/data/repositories/beneficiary_signup_repository_impl.dart'
    as _i942;
import '../../../features/auth/register/beneficiary_signup/data/repositories/verify_beneficiary_otp_repository_impl.dart'
    as _i654;
import '../../../features/auth/register/beneficiary_signup/domain/repositories/beneficiary_signup_repository.dart'
    as _i63;
import '../../../features/auth/register/beneficiary_signup/domain/repositories/verify_beneficiary_otp_repository.dart'
    as _i218;
import '../../../features/auth/register/beneficiary_signup/domain/usecases/beneficiary_signup_usecase.dart'
    as _i1030;
import '../../../features/auth/register/beneficiary_signup/domain/usecases/verify_beneficiary_otp_usecase.dart'
    as _i404;
import '../../../features/auth/register/contact_info/presentation/bloc/register_contact_info_bloc.dart'
    as _i563;
import '../../../features/auth/register/email/presentation/bloc/register_email_bloc.dart'
    as _i196;
import '../../../features/auth/register/email/verify/data/datasources/verify_signup_otp_remote_datasource.dart'
    as _i319;
import '../../../features/auth/register/email/verify/data/repositories/verify_signup_otp_repository_impl.dart'
    as _i643;
import '../../../features/auth/register/email/verify/domain/repositories/verify_signup_otp_repository.dart'
    as _i565;
import '../../../features/auth/register/email/verify/domain/usecases/resend_signup_otp_usecase.dart'
    as _i605;
import '../../../features/auth/register/email/verify/domain/usecases/verify_signup_otp_usecase.dart'
    as _i201;
import '../../../features/auth/register/email/verify/presentation/bloc/verify_email_bloc.dart'
    as _i51;
import '../../../features/auth/register/family_photo/presentation/bloc/register_family_photo_bloc.dart'
    as _i543;
import '../../../features/auth/register/parent_registration/presentation/bloc/parent_registration_bloc.dart'
    as _i1055;
import '../../../features/auth/register/personal_info/presentation/bloc/register_personal_info_bloc.dart'
    as _i925;
import '../../../features/auth/register/register_impact/data/datasources/affected_events_remote_datasource.dart'
    as _i863;
import '../../../features/auth/register/register_impact/data/repositories/affected_events_repository_impl.dart'
    as _i719;
import '../../../features/auth/register/register_impact/domain/repositories/affected_events_repository.dart'
    as _i1064;
import '../../../features/auth/register/register_impact/domain/usecases/get_affected_events_usecase.dart'
    as _i206;
import '../../../features/auth/register/register_impact/presentation/bloc/register_impact_bloc.dart'
    as _i242;
import '../../../features/auth/register/signup/data/datasources/signup_remote_datasource.dart'
    as _i169;
import '../../../features/auth/register/signup/data/repositories/signup_repository_impl.dart'
    as _i116;
import '../../../features/auth/register/signup/domain/repositories/signup_repository.dart'
    as _i201;
import '../../../features/auth/register/signup/domain/usecases/signup_usecase.dart'
    as _i918;
import '../../../features/auth/register_choice/presentation/bloc/register_choice_bloc.dart'
    as _i515;
import '../../../features/auth/reset_password/data/datasources/reset_password_remote_datasource.dart'
    as _i685;
import '../../../features/auth/reset_password/data/repositories/reset_password_repository_impl.dart'
    as _i123;
import '../../../features/auth/reset_password/domain/repositories/reset_password_repository.dart'
    as _i325;
import '../../../features/auth/reset_password/domain/usecases/reset_password_usecase.dart'
    as _i76;
import '../../../features/auth/reset_password/presentation/bloc/reset_password_bloc.dart'
    as _i989;
import '../../../features/auth/social/data/datasources/social_auth_remote_datasource.dart'
    as _i206;
import '../../../features/auth/social/data/repositories/social_auth_repository_impl.dart'
    as _i963;
import '../../../features/auth/social/domain/repositories/social_auth_repository.dart'
    as _i1056;
import '../../../features/auth/social/domain/usecases/complete_profile_usecase.dart'
    as _i991;
import '../../../features/auth/social/presentation/bloc/social_auth_bloc.dart'
    as _i896;
import '../../../features/auth/verify_reset_code/data/datasources/verify_reset_code_remote_datasource.dart'
    as _i745;
import '../../../features/auth/verify_reset_code/data/repositories/verify_reset_code_repository_impl.dart'
    as _i784;
import '../../../features/auth/verify_reset_code/domain/repositories/verify_reset_code_repository.dart'
    as _i319;
import '../../../features/auth/verify_reset_code/domain/usecases/verify_otp_usecase.dart'
    as _i1020;
import '../../../features/auth/verify_reset_code/presentation/bloc/verify_reset_code_bloc.dart'
    as _i934;
import '../../../features/beneficiary/status/data/datasources/beneficiary_status_remote_datasource.dart'
    as _i149;
import '../../../features/beneficiary/status/data/repositories/beneficiary_status_repository_impl.dart'
    as _i1039;
import '../../../features/beneficiary/status/domain/repositories/beneficiary_status_repository.dart'
    as _i391;
import '../../../features/beneficiary/status/domain/usecases/get_beneficiary_status_usecase.dart'
    as _i642;
import '../../../features/beneficiary/status/presentation/bloc/beneficiary_status_bloc.dart'
    as _i136;
import '../../../features/info/presentation/bloc/info_onboarding_bloc.dart'
    as _i330;
import '../../../features/splash/presentation/bloc/splash_bloc.dart' as _i976;
import '../../../shared/network/api_config.dart' as _i834;
import '../../../shared/network/error_handler.dart' as _i136;
import '../../../shared/network/interceptors/auth_interceptor.dart' as _i309;
import '../../../shared/network/interceptors/error_interceptor.dart' as _i273;
import '../../../shared/network/interceptors/logging_interceptor.dart' as _i776;
import '../../../shared/services/beneficiary_status_dialog_service.dart'
    as _i903;
import '../../../shared/services/deep_link_service.dart' as _i713;
import '../../../shared/services/google_signin_service.dart' as _i255;
import '../../../shared/services/secure_storage_service.dart' as _i763;
import 'modules/network_module.dart' as _i851;
import 'modules/prefs_module.dart' as _i12;
import 'modules/storage_module.dart' as _i148;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final prefsModule = _$PrefsModule();
    final storageModule = _$StorageModule();
    final networkModule = _$NetworkModule();
    gh.factory<_i196.RegisterEmailBloc>(() => _i196.RegisterEmailBloc());
    gh.factory<_i330.InfoOnboardingBloc>(() => _i330.InfoOnboardingBloc());
    gh.factory<_i776.LoggingInterceptor>(() => _i776.LoggingInterceptor());
    gh.factory<_i776.PrettyLoggingInterceptor>(
        () => _i776.PrettyLoggingInterceptor());
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => prefsModule.sharedPreferences,
      preResolve: true,
    );
    gh.singleton<_i563.RegisterContactInfoBloc>(
        () => _i563.RegisterContactInfoBloc());
    gh.singleton<_i543.RegisterFamilyPhotoBloc>(
        () => _i543.RegisterFamilyPhotoBloc.create());
    gh.singleton<_i834.ApiConfig>(() => _i834.ApiConfig());
    gh.singleton<_i713.DeepLinkService>(() => _i713.DeepLinkService());
    gh.singleton<_i255.GoogleSignInService>(() => _i255.GoogleSignInService());
    gh.singleton<_i558.FlutterSecureStorage>(
        () => storageModule.flutterSecureStorage);
    gh.singleton<_i409.GlobalKey<_i409.NavigatorState>>(
      () => networkModule.rootNavigatorKey,
      instanceName: 'rootNavigatorKey',
    );
    gh.singleton<_i903.BeneficiaryStatusDialogService>(() =>
        _i903.BeneficiaryStatusDialogService(gh<_i460.SharedPreferences>()));
    gh.factory<_i515.RegisterChoiceBloc>(
        () => _i515.RegisterChoiceBloc(gh<_i460.SharedPreferences>()));
    gh.factory<_i834.GoogleSignInBloc>(
        () => _i834.GoogleSignInBloc(gh<_i255.GoogleSignInService>()));
    gh.singleton<_i763.SecureStorageService>(() => _i763.SecureStorageService(
          gh<_i558.FlutterSecureStorage>(),
          gh<_i460.SharedPreferences>(),
          gh<_i255.GoogleSignInService>(),
        ));
    gh.factory<_i136.ErrorHandler>(() => _i136.ErrorHandler(
        gh<_i409.GlobalKey<_i409.NavigatorState>>(
            instanceName: 'rootNavigatorKey')));
    gh.factory<_i309.AuthInterceptor>(
        () => _i309.AuthInterceptor(gh<_i763.SecureStorageService>()));
    gh.factory<_i273.ErrorInterceptor>(() => _i273.ErrorInterceptor(
          gh<_i763.SecureStorageService>(),
          gh<_i409.GlobalKey<_i409.NavigatorState>>(
              instanceName: 'rootNavigatorKey'),
          gh<_i136.ErrorHandler>(),
        ));
    gh.singleton<_i361.Dio>(() => networkModule.dio(
          gh<_i834.ApiConfig>(),
          gh<_i309.AuthInterceptor>(),
          gh<_i273.ErrorInterceptor>(),
          gh<_i776.PrettyLoggingInterceptor>(),
        ));
    gh.factory<_i745.VerifyResetCodeRemoteDataSource>(
        () => _i745.VerifyResetCodeRemoteDataSourceImpl(gh<_i361.Dio>()));
    gh.factory<_i56.BeneficiarySignupRemoteDataSource>(
        () => _i56.BeneficiarySignupRemoteDataSourceImpl(gh<_i361.Dio>()));
    gh.factory<_i149.BeneficiaryStatusRemoteDataSource>(
        () => _i149.BeneficiaryStatusRemoteDataSourceImpl(gh<_i361.Dio>()));
    gh.factory<_i203.LogoutRemoteDataSource>(
        () => _i203.LogoutRemoteDataSourceImpl(gh<_i361.Dio>()));
    gh.factory<_i366.ForgotPasswordRemoteDataSource>(
        () => _i366.ForgotPasswordRemoteDataSourceImpl(gh<_i361.Dio>()));
    gh.factory<_i685.ResetPasswordRemoteDataSource>(
        () => _i685.ResetPasswordRemoteDataSourceImpl(gh<_i361.Dio>()));
    gh.factory<_i494.LogoutRepository>(() => _i684.LogoutRepositoryImpl(
          gh<_i203.LogoutRemoteDataSource>(),
          gh<_i763.SecureStorageService>(),
        ));
    gh.factory<_i259.VerifyBeneficiaryOtpRemoteDataSource>(
        () => _i259.VerifyBeneficiaryOtpRemoteDataSourceImpl(gh<_i361.Dio>()));
    gh.factory<_i319.VerifyResetCodeRepository>(() =>
        _i784.VerifyResetCodeRepositoryImpl(
            gh<_i745.VerifyResetCodeRemoteDataSource>()));
    gh.factory<_i863.AffectedEventsRemoteDataSource>(
        () => _i863.AffectedEventsRemoteDataSourceImpl(gh<_i361.Dio>()));
    gh.factory<_i218.VerifyBeneficiaryOtpRepository>(() =>
        _i654.VerifyBeneficiaryOtpRepositoryImpl(
            gh<_i259.VerifyBeneficiaryOtpRemoteDataSource>()));
    gh.factory<_i103.ForgotPasswordRepository>(() =>
        _i916.ForgotPasswordRepositoryImpl(
            gh<_i366.ForgotPasswordRemoteDataSource>()));
    gh.factory<_i1064.AffectedEventsRepository>(() =>
        _i719.AffectedEventsRepositoryImpl(
            gh<_i863.AffectedEventsRemoteDataSource>()));
    gh.factory<_i924.SendOtpUseCase>(
        () => _i924.SendOtpUseCase(gh<_i103.ForgotPasswordRepository>()));
    gh.factory<_i404.VerifyBeneficiaryOtpUseCase>(() =>
        _i404.VerifyBeneficiaryOtpUseCase(
            gh<_i218.VerifyBeneficiaryOtpRepository>()));
    gh.factory<_i391.BeneficiaryStatusRepository>(() =>
        _i1039.BeneficiaryStatusRepositoryImpl(
            gh<_i149.BeneficiaryStatusRemoteDataSource>()));
    gh.factory<_i206.SocialAuthRemoteDataSource>(
        () => _i206.SocialAuthRemoteDataSourceImpl(gh<_i361.Dio>()));
    gh.factory<_i325.ResetPasswordRepository>(() =>
        _i123.ResetPasswordRepositoryImpl(
            gh<_i685.ResetPasswordRemoteDataSource>()));
    gh.factory<_i169.SignupRemoteDataSource>(
        () => _i169.SignupRemoteDataSourceImpl(gh<_i361.Dio>()));
    gh.factory<_i319.VerifySignupOtpRemoteDataSource>(
        () => _i319.VerifySignupOtpRemoteDataSourceImpl(gh<_i361.Dio>()));
    gh.factory<_i998.ProfileRemoteDataSource>(
        () => _i998.ProfileRemoteDataSourceImpl(gh<_i361.Dio>()));
    gh.factory<_i63.BeneficiarySignupRepository>(() =>
        _i942.BeneficiarySignupRepositoryImpl(
            gh<_i56.BeneficiarySignupRemoteDataSource>()));
    gh.factory<_i1056.LoginRemoteDataSource>(
        () => _i1056.LoginRemoteDataSourceImpl(gh<_i361.Dio>()));
    gh.factory<_i1030.BeneficiarySignupUseCase>(() =>
        _i1030.BeneficiarySignupUseCase(
            gh<_i63.BeneficiarySignupRepository>()));
    gh.factory<_i828.ForgotPasswordBloc>(
        () => _i828.ForgotPasswordBloc(gh<_i924.SendOtpUseCase>()));
    gh.factory<_i642.GetBeneficiaryStatusUseCase>(() =>
        _i642.GetBeneficiaryStatusUseCase(
            gh<_i391.BeneficiaryStatusRepository>()));
    gh.factory<_i55.LogoutUseCase>(
        () => _i55.LogoutUseCase(gh<_i494.LogoutRepository>()));
    gh.factory<_i1020.VerifyOtpUseCase>(
        () => _i1020.VerifyOtpUseCase(gh<_i319.VerifyResetCodeRepository>()));
    gh.factory<_i201.SignupRepository>(
        () => _i116.SignupRepositoryImpl(gh<_i169.SignupRemoteDataSource>()));
    gh.factory<_i136.BeneficiaryStatusBloc>(() =>
        _i136.BeneficiaryStatusBloc(gh<_i642.GetBeneficiaryStatusUseCase>()));
    gh.factory<_i380.ProfileRepository>(
        () => _i450.ProfileRepositoryImpl(gh<_i998.ProfileRemoteDataSource>()));
    gh.factory<_i1056.SocialAuthRepository>(() =>
        _i963.SocialAuthRepositoryImpl(gh<_i206.SocialAuthRemoteDataSource>()));
    gh.factory<_i76.ResetPasswordUseCase>(
        () => _i76.ResetPasswordUseCase(gh<_i325.ResetPasswordRepository>()));
    gh.singleton<_i1055.ParentRegistrationBloc>(() =>
        _i1055.ParentRegistrationBloc(gh<_i1030.BeneficiarySignupUseCase>()));
    gh.factory<_i565.VerifySignupOtpRepository>(() =>
        _i643.VerifySignupOtpRepositoryImpl(
            gh<_i319.VerifySignupOtpRemoteDataSource>()));
    gh.factory<_i325.LoginRepository>(() => _i897.LoginRepositoryImpl(
          gh<_i1056.LoginRemoteDataSource>(),
          gh<_i763.SecureStorageService>(),
          gh<_i460.SharedPreferences>(),
          gh<_i903.BeneficiaryStatusDialogService>(),
        ));
    gh.factory<_i653.GetProfileUseCase>(
        () => _i653.GetProfileUseCase(gh<_i380.ProfileRepository>()));
    gh.factory<_i880.LogoutBloc>(
        () => _i880.LogoutBloc(gh<_i55.LogoutUseCase>()));
    gh.factory<_i206.GetAffectedEventsUseCase>(() =>
        _i206.GetAffectedEventsUseCase(gh<_i1064.AffectedEventsRepository>()));
    gh.factory<_i918.SignupUseCase>(
        () => _i918.SignupUseCase(gh<_i201.SignupRepository>()));
    gh.factory<_i605.ResendSignupOtpUseCase>(() =>
        _i605.ResendSignupOtpUseCase(gh<_i565.VerifySignupOtpRepository>()));
    gh.factory<_i201.VerifySignupOtpUseCase>(() =>
        _i201.VerifySignupOtpUseCase(gh<_i565.VerifySignupOtpRepository>()));
    gh.factory<_i178.LoginUseCase>(
        () => _i178.LoginUseCase(gh<_i325.LoginRepository>()));
    gh.factory<_i934.VerifyResetCodeBloc>(
        () => _i934.VerifyResetCodeBloc(gh<_i1020.VerifyOtpUseCase>()));
    gh.factory<_i991.CompleteProfileUseCase>(
        () => _i991.CompleteProfileUseCase(gh<_i1056.SocialAuthRepository>()));
    gh.singleton<_i242.RegisterImpactBloc>(() => _i242.RegisterImpactBloc(
          gh<_i1030.BeneficiarySignupUseCase>(),
          gh<_i206.GetAffectedEventsUseCase>(),
        ));
    gh.factory<_i1072.LoginBloc>(
        () => _i1072.LoginBloc(gh<_i178.LoginUseCase>()));
    gh.factory<_i976.SplashBloc>(() => _i976.SplashBloc(
          gh<_i763.SecureStorageService>(),
          gh<_i653.GetProfileUseCase>(),
        ));
    gh.factory<_i989.ResetPasswordBloc>(
        () => _i989.ResetPasswordBloc(gh<_i76.ResetPasswordUseCase>()));
    gh.factory<_i51.VerifyEmailBloc>(() => _i51.VerifyEmailBloc(
          gh<_i201.VerifySignupOtpUseCase>(),
          gh<_i605.ResendSignupOtpUseCase>(),
        ));
    gh.singleton<_i925.RegisterPersonalInfoBloc>(
        () => _i925.RegisterPersonalInfoBloc(gh<_i918.SignupUseCase>()));
    gh.factory<_i896.SocialAuthBloc>(() => _i896.SocialAuthBloc(
          gh<_i991.CompleteProfileUseCase>(),
          gh<_i763.SecureStorageService>(),
          gh<_i653.GetProfileUseCase>(),
        ));
    return this;
  }
}

class _$PrefsModule extends _i12.PrefsModule {}

class _$StorageModule extends _i148.StorageModule {}

class _$NetworkModule extends _i851.NetworkModule {}
