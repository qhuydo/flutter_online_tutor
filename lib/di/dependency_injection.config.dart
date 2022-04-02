// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i9;

import '../application/authentication/authentication_bloc.dart' as _i30;
import '../application/authentication/change_password/change_password_bloc.dart'
    as _i21;
import '../application/authentication/login/login_bloc.dart' as _i23;
import '../application/authentication/reset_password/reset_password_bloc.dart'
    as _i26;
import '../application/authentication/sign_up/sign_up_bloc.dart' as _i28;
import '../application/common/app/app_cubit.dart' as _i18;
import '../application/schedule/history/history_bloc.dart' as _i22;
import '../application/schedule/tutor_schedule/tutor_schedule_bloc.dart'
    as _i14;
import '../application/schedule/upcoming_class/upcoming_class_bloc.dart'
    as _i15;
import '../application/tutor/recommended_tutors/recommended_tutors_bloc.dart'
    as _i25;
import '../application/tutor/search_tutors/search_tutors_bloc.dart' as _i27;
import '../application/tutor/tutor_details/tutor_details_bloc.dart' as _i29;
import '../application/user/profile/profile_bloc.dart' as _i24;
import '../domain/authentication/interfaces/i_authentication_service.dart'
    as _i19;
import '../domain/common/app/i_app_repository.dart' as _i3;
import '../domain/schedule/interfaces/i_schedule_repository.dart' as _i6;
import '../domain/tutor/interfaces/i_tutor_repository.dart' as _i12;
import '../domain/user/interfaces/i_user_repository.dart' as _i16;
import '../infrastructure/authentication/repositories/mock_authentication_service.dart'
    as _i20;
import '../infrastructure/common/app/app_repository.dart' as _i4;
import '../infrastructure/common/db/shared_preference_storage.dart' as _i8;
import '../infrastructure/common/di/app_injectable_module.dart' as _i31;
import '../infrastructure/schedule/repositories/mock_schedule_repository.dart'
    as _i7;
import '../infrastructure/tutor/repository/mock_tutor_repository.dart' as _i13;
import '../infrastructure/user/data_source/i_tutor_data_source.dart' as _i10;
import '../infrastructure/user/data_source/local_tutor_data_source.dart'
    as _i11;
import '../infrastructure/user/repositories/mock_user_repository.dart'
    as _i17; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i15.UpcomingClassBloc>(
      () => _i15.UpcomingClassBloc(get<_i6.ScheduleRepository>()));
  gh.lazySingleton<_i16.UserRepository>(() => _i17.MockUserRepository(
      get<_i5.Box<String>>(instanceName: 'mockSecret')));
  gh.factory<_i18.AppCubit>(
      () => _i18.AppCubit(appRepository: get<_i3.AppRepository>()));
  gh.lazySingleton<_i19.AuthenticationService>(() =>
      _i20.MockAuthenticationService(
          get<_i5.Box<String>>(instanceName: 'mockSecret'),
          cacheBox: get<_i5.Box<String>>(instanceName: 'mockCacheSecret')));
  gh.factory<_i21.ChangePasswordBloc>(
      () => _i21.ChangePasswordBloc(get<_i19.AuthenticationService>()));
  gh.factory<_i22.HistoryBloc>(
      () => _i22.HistoryBloc(get<_i6.ScheduleRepository>()));
  gh.factory<_i23.LoginBloc>(
      () => _i23.LoginBloc(get<_i19.AuthenticationService>()));
  gh.factory<_i24.ProfileBloc>(() => _i24.ProfileBloc(
      get<_i19.AuthenticationService>(), get<_i16.UserRepository>()));
  gh.factory<_i25.RecommendedTutorsBloc>(
      () => _i25.RecommendedTutorsBloc(get<_i12.TutorRepository>()));
  gh.factory<_i26.ResetPasswordBloc>(
      () => _i26.ResetPasswordBloc(get<_i19.AuthenticationService>()));
  gh.factory<_i27.SearchTutorsBloc>(
      () => _i27.SearchTutorsBloc(get<_i12.TutorRepository>()));
  gh.factory<_i28.SignUpBloc>(
      () => _i28.SignUpBloc(get<_i19.AuthenticationService>()));
  gh.factory<_i29.TutorDetailsBloc>(
      () => _i29.TutorDetailsBloc(get<_i12.TutorRepository>()));
  gh.factory<_i30.AuthenticationBloc>(
      () => _i30.AuthenticationBloc(get<_i19.AuthenticationService>()));
  return get;
}

class _$AppInjectableModule extends _i31.AppInjectableModule {}
