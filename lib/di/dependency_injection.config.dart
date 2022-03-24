// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i5;

import '../application/common/app/app_cubit.dart' as _i6;
import '../infrastructure/common/app/app_repository.dart' as _i3;
import '../infrastructure/common/db/shared_preference_storage.dart' as _i4;
import '../infrastructure/common/di/app_injectable_module.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final appInjectableModule = _$AppInjectableModule();
  gh.lazySingleton<_i3.AppRepository>(() => _i3.AppRepositoryImpl());
  gh.lazySingleton<_i4.SharedPreferenceStorage>(
      () => _i4.SharedPreferenceStorageImpl());
  await gh.factoryAsync<_i5.SharedPreferences>(() => appInjectableModule.prefs,
      preResolve: true);
  gh.factory<_i6.AppCubit>(
      () => _i6.AppCubit(appRepository: get<_i3.AppRepository>()));
  return get;
}

class _$AppInjectableModule extends _i7.AppInjectableModule {}
