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

import '../../../features/auth/forget_password/presentation/bloc/forgot_password_bloc.dart'
    as _i828;
import '../../../features/auth/login/presentation/bloc/login_bloc.dart'
    as _i1072;
import '../../../features/auth/register/email/presentation/bloc/register_email_bloc.dart'
    as _i196;
import '../../../features/auth/reset_password/presentation/bloc/reset_password_bloc.dart'
    as _i989;
import '../../../features/auth/verify_reset_code/presentation/bloc/verify_reset_code_bloc.dart'
    as _i934;
import '../../../features/info/presentation/bloc/info_onboarding_bloc.dart'
    as _i330;
import 'router_module.dart' as _i393;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final routerModule = _$RouterModule();
    gh.factory<_i828.ForgotPasswordBloc>(() => _i828.ForgotPasswordBloc());
    gh.factory<_i1072.LoginBloc>(() => _i1072.LoginBloc());
    gh.factory<_i196.RegisterEmailBloc>(() => _i196.RegisterEmailBloc());
    gh.factory<_i934.VerifyResetCodeBloc>(() => _i934.VerifyResetCodeBloc());
    gh.factory<_i330.InfoOnboardingBloc>(() => _i330.InfoOnboardingBloc());
    gh.factory<_i989.ResetPasswordBloc>(() => _i989.ResetPasswordBloc());
    gh.lazySingleton<_i583.GoRouter>(() => routerModule.router());
    return this;
  }
}

class _$RouterModule extends _i393.RouterModule {}
