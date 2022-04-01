// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i9;

import '../application/authentication/authentication_bloc.dart' as _i28;
import '../application/authentication/change_password/change_password_bloc.dart'
    as _i20;
import '../application/authentication/login/login_bloc.dart' as _i21;
import '../application/authentication/reset_password/reset_password_bloc.dart'
    as _i24;
import '../application/authentication/sign_up/sign_up_bloc.dart' as _i26;
import '../application/common/app/app_cubit.dart' as _i17;
import '../application/schedule/tutor_schedule/tutor_schedule_bloc.dart'
    as _i14;
import '../application/tutor/recommended_tutors/recommended_tutors_bloc.dart'
    as _i23;
import '../application/tutor/search_tutors/search_tutors_bloc.dart' as _i25;
import '../application/tutor/tutor_details/tutor_details_bloc.dart' as _i27;
import '../application/user/profile/profile_bloc.dart' as _i22;
import '../domain/authentication/interfaces/i_authentication_service.dart'
    as _i18;
import '../domain/common/app/i_app_repository.dart' as _i3;
import '../domain/schedule/interfaces/i_schedule_repository.dart' as _i6;
import '../domain/tutor/interfaces/i_tutor_repository.dart' as _i12;
import '../domain/user/interfaces/i_user_repository.dart' as _i15;
import '../infrastructure/authentication/repositories/mock_authentication_service.dart'
    as _i19;
import '../infrastructure/common/app/app_repository.dart' as _i4;
import '../infrastructure/common/db/shared_preference_storage.dart' as _i8;
import '../infrastructure/common/di/app_injectable_module.dart' as _i29;
import '../infrastructure/schedule/repositories/mock_schedule_repository.dart'
    as _i7;
import '../infrastructure/tutor/repository/mock_tutor_repository.dart' as _i13;
import '../infrastructure/user/data_source/i_tutor_data_source.dart' as _i10;
import '../infrastructure/user/data_source/local_tutor_data_source.dart'
    as _i11;
import '../infrastructure/user/repositories/mock_user_repository.dart'
    as _i16; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i6.ScheduleRepository>(() => _i7.MockScheduleRepository(
      get<_i5.Box<String>>(instanceName: 'mockSecret')));
  gh.lazySingleton<_i8.SharedPreferenceStorage>(
      () => _i8.SharedPreferenceStorageImpl());
  await gh.factoryAsync<_i9.SharedPreferences>(() => appInjectableModule.prefs,
      preResolve: true);
  gh.singleton<_i10.TutorDataSource>(_i11.LocalTutorDataSource(),
      dispose: (i) => i.dispose());
  gh.lazySingleton<_i12.TutorRepository>(
      () => _i13.MockTutorRepository(get<_i10.TutorDataSource>()));
  gh.factory<_i14.TutorScheduleBloc>(
      () => _i14.TutorScheduleBloc(get<_i6.ScheduleRepository>()));
  gh.lazySingleton<_i15.UserRepository>(() => _i16.MockUserRepository(
      get<_i5.Box<String>>(instanceName: 'mockSecret')));
  gh.factory<_i17.AppCubit>(
      () => _i17.AppCubit(appRepository: get<_i3.AppRepository>()));
  gh.lazySingleton<_i18.AuthenticationService>(() =>
      _i19.MockAuthenticationService(
          get<_i5.Box<String>>(instanceName: 'mockSecret'),
          cacheBox: get<_i5.Box<String>>(instanceName: 'mockCacheSecret')));
  gh.factory<_i20.ChangePasswordBloc>(
      () => _i20.ChangePasswordBloc(get<_i18.AuthenticationService>()));
  gh.factory<_i21.LoginBloc>(
      () => _i21.LoginBloc(get<_i18.AuthenticationService>()));
  gh.factory<_i22.ProfileBloc>(() => _i22.ProfileBloc(
      get<_i18.AuthenticationService>(), get<_i15.UserRepository>()));
  gh.factory<_i23.RecommendedTutorsBloc>(
      () => _i23.RecommendedTutorsBloc(get<_i12.TutorRepository>()));
  gh.factory<_i24.ResetPasswordBloc>(
      () => _i24.ResetPasswordBloc(get<_i18.AuthenticationService>()));
  gh.factory<_i25.SearchTutorsBloc>(
      () => _i25.SearchTutorsBloc(get<_i12.TutorRepository>()));
  gh.factory<_i26.SignUpBloc>(
      () => _i26.SignUpBloc(get<_i18.AuthenticationService>()));
  gh.factory<_i27.TutorDetailsBloc>(
      () => _i27.TutorDetailsBloc(get<_i12.TutorRepository>()));
  gh.factory<_i28.AuthenticationBloc>(
      () => _i28.AuthenticationBloc(get<_i18.AuthenticationService>()));
  return get;
}

class _$AppInjectableModule extends _i29.AppInjectableModule {}
