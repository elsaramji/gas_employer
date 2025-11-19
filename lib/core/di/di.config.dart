// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/auth/data/data_source/auth_data_source.dart' as _i364;
import '../../features/auth/data/repo/auth_repo_impl.dart' as _i984;
import '../../features/auth/domain/repo/auth_repo.dart' as _i170;
import '../../features/auth/domain/usecases/login_with_phone_usecase.dart'
    as _i959;
import '../../features/auth/domain/usecases/verfiy_phon_usecase.dart' as _i213;
import '../../features/auth/persenetiton/login/login_cubit.dart' as _i1002;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i1002.LoginCubit>(() => _i1002.LoginCubit());
    gh.factory<_i364.AuthDataSource>(() => _i364.AuthDataSourceFirebaseImpl());
    gh.factory<_i170.AuthRepo>(
      () => _i984.AuthRepoImpl(gh<_i364.AuthDataSource>()),
    );
    gh.factory<_i959.LoginWithPhoneUsecase>(
      () => _i959.LoginWithPhoneUsecase(gh<_i170.AuthRepo>()),
    );
    gh.factory<_i213.VerfiyPhonUsecase>(
      () => _i213.VerfiyPhonUsecase(gh<_i170.AuthRepo>()),
    );
    return this;
  }
}
