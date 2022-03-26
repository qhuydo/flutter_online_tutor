// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i8;

import '../application/common/app/app_cubit.dart' as _i9;
import '../domain/authentication/interfaces/i_authentication_service.dart'
    as _i5;
import '../domain/common/app/i_app_repository.dart' as _i3;
import '../infrastructure/authentication/repositories/authentication_service.dart'
    as _i6;
import '../infrastructure/common/app/app_repository.dart' as _i4;
import '../infrastructure/common/db/shared_preference_storage.dart' as _i7;
import '../infrastructure/common/di/app_injectable_module.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final appInjectableModule = _$AppInjectableModule();
  gh.lazySingleton<_i3.AppRepository>(() => _i4.AppRepositoryImpl());
  gh.lazySingleton<_i5.AuthenticationService>(
      () => _i6.MockAuthenticationService());
  gh.lazySingleton<_i7.SharedPreferenceStorage>(
      () => _i7.SharedPreferenceStorageImpl());
  await gh.factoryAsync<_i8.SharedPreferences>(() => appInjectableModule.prefs,
      preResolve: true);
  gh.factory<_i9.AppCubit>(
      () => _i9.AppCubit(appRepository: get<_i3.AppRepository>()));
  return get;
}

class _$AppInjectableModule extends _i10.AppInjectableModule {}
