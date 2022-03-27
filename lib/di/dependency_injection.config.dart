// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i7;

import '../application/authentication/authentication_bloc.dart' as _i12;
import '../application/authentication/login/login_bloc.dart' as _i11;
import '../application/common/app/app_cubit.dart' as _i8;
import '../domain/authentication/interfaces/i_authentication_service.dart'
    as _i9;
import '../domain/common/app/i_app_repository.dart' as _i3;
import '../infrastructure/authentication/repositories/mock_authentication_service.dart'
    as _i10;
import '../infrastructure/common/app/app_repository.dart' as _i4;
import '../infrastructure/common/db/shared_preference_storage.dart' as _i6;
import '../infrastructure/common/di/app_injectable_module.dart'
    as _i13; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final appInjectableModule = _$AppInjectableModule();
  gh.lazySingleton<_i3.AppRepository>(() => _i4.AppRepositoryImpl());
  await gh.factoryAsync<_i5.Box<String>>(() => appInjectableModule.secretBox,
      instanceName: 'Box', preResolve: true);
  await gh.factoryAsync<_i5.Box<String>>(
      () => appInjectableModule.mockSecretBox,
      instanceName: 'mockSecret',
      preResolve: true);
  gh.lazySingleton<_i6.SharedPreferenceStorage>(
      () => _i6.SharedPreferenceStorageImpl());
  await gh.factoryAsync<_i7.SharedPreferences>(() => appInjectableModule.prefs,
      preResolve: true);
  gh.factory<_i8.AppCubit>(
      () => _i8.AppCubit(appRepository: get<_i3.AppRepository>()));
  gh.lazySingleton<_i9.AuthenticationService>(() =>
      _i10.MockAuthenticationService(
          get<_i5.Box<String>>(instanceName: 'mockSecret'),
          cacheBox: get<_i5.Box<String>>()));
  gh.factory<_i11.LoginBloc>(
      () => _i11.LoginBloc(get<_i9.AuthenticationService>()));
  gh.factory<_i12.AuthenticationBloc>(
      () => _i12.AuthenticationBloc(get<_i9.AuthenticationService>()));
  return get;
}

class _$AppInjectableModule extends _i13.AppInjectableModule {}
