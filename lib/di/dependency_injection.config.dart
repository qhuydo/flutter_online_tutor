// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i7;

import '../application/authentication/authentication_bloc.dart' as _i24;
import '../application/authentication/change_password/change_password_bloc.dart'
    as _i17;
import '../application/authentication/login/login_bloc.dart' as _i18;
import '../application/authentication/reset_password/reset_password_bloc.dart'
    as _i21;
import '../application/authentication/sign_up/sign_up_bloc.dart' as _i23;
import '../application/common/app/app_cubit.dart' as _i14;
import '../application/tutor/recommended_tutors/recommended_tutors_bloc.dart'
    as _i20;
import '../application/tutor/search_tutors/search_tutors_bloc.dart' as _i22;
import '../application/user/profile/profile_bloc.dart' as _i19;
import '../domain/authentication/interfaces/i_authentication_service.dart'
    as _i15;
import '../domain/common/app/i_app_repository.dart' as _i3;
import '../domain/tutor/interfaces/i_tutor_repository.dart' as _i10;
import '../domain/user/interfaces/i_user_repository.dart' as _i12;
import '../infrastructure/authentication/repositories/mock_authentication_service.dart'
    as _i16;
import '../infrastructure/common/app/app_repository.dart' as _i4;
import '../infrastructure/common/db/shared_preference_storage.dart' as _i6;
import '../infrastructure/common/di/app_injectable_module.dart' as _i25;
import '../infrastructure/tutor/repository/mock_tutor_repository.dart' as _i11;
import '../infrastructure/user/data_source/i_tutor_data_source.dart' as _i8;
import '../infrastructure/user/data_source/local_tutor_data_source.dart' as _i9;
import '../infrastructure/user/repositories/mock_user_repository.dart'
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
  await gh.factoryAsync<_i5.Box<String>>(
      () => appInjectableModule.mockCacheSecretBox,
      instanceName: 'mockCacheSecret',
      preResolve: true);
  gh.lazySingleton<_i6.SharedPreferenceStorage>(
      () => _i6.SharedPreferenceStorageImpl());
  await gh.factoryAsync<_i7.SharedPreferences>(() => appInjectableModule.prefs,
      preResolve: true);
  gh.singleton<_i8.TutorDataSource>(_i9.LocalTutorDataSource(),
      dispose: (i) => i.dispose());
  gh.lazySingleton<_i10.TutorRepository>(
      () => _i11.MockTutorRepository(get<_i8.TutorDataSource>()));
  gh.lazySingleton<_i12.UserRepository>(() => _i13.MockUserRepository(
      get<_i5.Box<String>>(instanceName: 'mockSecret')));
  gh.factory<_i14.AppCubit>(
      () => _i14.AppCubit(appRepository: get<_i3.AppRepository>()));
  gh.lazySingleton<_i15.AuthenticationService>(() =>
      _i16.MockAuthenticationService(
          get<_i5.Box<String>>(instanceName: 'mockSecret'),
          cacheBox: get<_i5.Box<String>>(instanceName: 'mockCacheSecret')));
  gh.factory<_i17.ChangePasswordBloc>(
      () => _i17.ChangePasswordBloc(get<_i15.AuthenticationService>()));
  gh.factory<_i18.LoginBloc>(
      () => _i18.LoginBloc(get<_i15.AuthenticationService>()));
  gh.factory<_i19.ProfileBloc>(() => _i19.ProfileBloc(
      get<_i15.AuthenticationService>(), get<_i12.UserRepository>()));
  gh.factory<_i20.RecommendedTutorsBloc>(
      () => _i20.RecommendedTutorsBloc(get<_i10.TutorRepository>()));
  gh.factory<_i21.ResetPasswordBloc>(
      () => _i21.ResetPasswordBloc(get<_i15.AuthenticationService>()));
  gh.factory<_i22.SearchTutorsBloc>(
      () => _i22.SearchTutorsBloc(get<_i10.TutorRepository>()));
  gh.factory<_i23.SignUpBloc>(
      () => _i23.SignUpBloc(get<_i15.AuthenticationService>()));
  gh.factory<_i24.AuthenticationBloc>(
      () => _i24.AuthenticationBloc(get<_i15.AuthenticationService>()));
  return get;
}

class _$AppInjectableModule extends _i25.AppInjectableModule {}
