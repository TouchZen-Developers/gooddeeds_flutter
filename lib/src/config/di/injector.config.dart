// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:go_router/go_router.dart' as _i583;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../../features/auth/forget_password/presentation/bloc/forgot_password_bloc.dart'
    as _i828;
import '../../../features/auth/login/presentation/bloc/login_bloc.dart'
    as _i1072;
import '../../../features/auth/register/contact_info/presentation/bloc/register_contact_info_bloc.dart'
    as _i563;
import '../../../features/auth/register/email/presentation/bloc/register_email_bloc.dart'
    as _i196;
import '../../../features/auth/register/family_photo/presentation/bloc/register_family_photo_bloc.dart'
    as _i543;
import '../../../features/auth/register/personal_info/presentation/bloc/register_personal_info_bloc.dart'
    as _i925;
import '../../../features/auth/register/register_impact/presentation/bloc/register_impact_bloc.dart'
    as _i242;
import '../../../features/auth/register_choice/presentation/bloc/register_choice_bloc.dart'
    as _i515;
import '../../../features/auth/reset_password/presentation/bloc/reset_password_bloc.dart'
    as _i989;
import '../../../features/auth/verify_reset_code/presentation/bloc/verify_reset_code_bloc.dart'
    as _i934;
import '../../../features/info/presentation/bloc/info_onboarding_bloc.dart'
    as _i330;
import '../../../features/splash/presentation/bloc/splash_bloc.dart' as _i976;
import 'modules/prefs_module.dart' as _i12;
import 'modules/router_module.dart' as _i322;

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
    final routerModule = _$RouterModule();
    gh.factory<_i976.SplashBloc>(() => _i976.SplashBloc());
    gh.factory<_i989.ResetPasswordBloc>(() => _i989.ResetPasswordBloc());
    gh.factory<_i828.ForgotPasswordBloc>(() => _i828.ForgotPasswordBloc());
    gh.factory<_i934.VerifyResetCodeBloc>(() => _i934.VerifyResetCodeBloc());
    gh.factory<_i515.RegisterChoiceBloc>(() => _i515.RegisterChoiceBloc());
    gh.factory<_i563.RegisterContactInfoBloc>(
        () => _i563.RegisterContactInfoBloc());
    gh.factory<_i925.RegisterPersonalInfoBloc>(
        () => _i925.RegisterPersonalInfoBloc());
    gh.factory<_i242.RegisterImpactBloc>(() => _i242.RegisterImpactBloc());
    gh.factory<_i196.RegisterEmailBloc>(() => _i196.RegisterEmailBloc());
    gh.factory<_i543.RegisterFamilyPhotoBloc>(
        () => _i543.RegisterFamilyPhotoBloc.create());
    gh.factory<_i1072.LoginBloc>(() => _i1072.LoginBloc());
    gh.factory<_i989.ResetPasswordBloc>(() => _i989.ResetPasswordBloc());
    gh.factory<_i934.VerifyResetCodeBloc>(() => _i934.VerifyResetCodeBloc());
    gh.factory<_i330.InfoOnboardingBloc>(() => _i330.InfoOnboardingBloc());
    gh.factory<_i976.SplashBloc>(() => _i976.SplashBloc());
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => prefsModule.prefs,
      preResolve: true,
    );
    gh.lazySingleton<_i583.GoRouter>(() => routerModule.router());
    gh.factory<_i515.RegisterChoiceBloc>(
        () => _i515.RegisterChoiceBloc(gh<_i460.SharedPreferences>()));
    return this;
  }
}

class _$PrefsModule extends _i12.PrefsModule {}

class _$RouterModule extends _i322.RouterModule {}
