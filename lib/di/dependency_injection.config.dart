// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i10;

import '../application/authentication/authentication_bloc.dart' as _i31;
import '../application/authentication/change_password/change_password_bloc.dart'
    as _i22;
import '../application/authentication/login/login_bloc.dart' as _i24;
import '../application/authentication/reset_password/reset_password_bloc.dart'
    as _i27;
import '../application/authentication/sign_up/sign_up_bloc.dart' as _i29;
import '../application/common/app/app_cubit.dart' as _i19;
import '../application/schedule/history/history_bloc.dart' as _i23;
import '../application/schedule/tutor_schedule/tutor_schedule_bloc.dart'
    as _i15;
import '../application/schedule/upcoming_class/upcoming_class_bloc.dart'
    as _i16;
import '../application/tutor/recommended_tutors/recommended_tutors_bloc.dart'
    as _i26;
import '../application/tutor/search_tutors/search_tutors_bloc.dart' as _i28;
import '../application/tutor/tutor_details/tutor_details_bloc.dart' as _i30;
import '../application/user/profile/profile_bloc.dart' as _i25;
import '../domain/authentication/interfaces/i_authentication_service.dart'
    as _i20;
import '../domain/common/app/i_app_repository.dart' as _i3;
import '../domain/schedule/interfaces/i_schedule_repository.dart' as _i7;
import '../domain/tutor/interfaces/i_tutor_repository.dart' as _i13;
import '../domain/user/interfaces/i_user_repository.dart' as _i17;
import '../infrastructure/authentication/repositories/mock_authentication_service.dart'
    as _i21;
import '../infrastructure/common/app/app_repository.dart' as _i4;
import '../infrastructure/common/db/shared_preference_storage.dart' as _i9;
import '../infrastructure/common/di/app_injectable_module.dart' as _i32;
import '../infrastructure/course/repositories/mock_course_repository.dart'
    as _i6;
import '../infrastructure/schedule/repositories/mock_schedule_repository.dart'
    as _i8;
import '../infrastructure/tutor/repository/mock_tutor_repository.dart' as _i14;
import '../infrastructure/user/data_source/i_tutor_data_source.dart' as _i11;
import '../infrastructure/user/data_source/local_tutor_data_source.dart'
    as _i12;
import '../infrastructure/user/repositories/mock_user_repository.dart'
    as _i18; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i6.MockCourseRepository>(() => _i6.MockCourseRepository());
  gh.lazySingleton<_i7.ScheduleRepository>(() => _i8.MockScheduleRepository(
      get<_i5.Box<String>>(instanceName: 'mockSecret')));
  gh.lazySingleton<_i9.SharedPreferenceStorage>(
      () => _i9.SharedPreferenceStorageImpl());
  await gh.factoryAsync<_i10.SharedPreferences>(() => appInjectableModule.prefs,
      preResolve: true);
  gh.singleton<_i11.TutorDataSource>(_i12.LocalTutorDataSource(),
      dispose: (i) => i.dispose());
  gh.lazySingleton<_i13.TutorRepository>(
      () => _i14.MockTutorRepository(get<_i11.TutorDataSource>()));
  gh.factory<_i15.TutorScheduleBloc>(
      () => _i15.TutorScheduleBloc(get<_i7.ScheduleRepository>()));
  gh.factory<_i16.UpcomingClassBloc>(
      () => _i16.UpcomingClassBloc(get<_i7.ScheduleRepository>()));
  gh.lazySingleton<_i17.UserRepository>(() => _i18.MockUserRepository(
      get<_i5.Box<String>>(instanceName: 'mockSecret')));
  gh.factory<_i19.AppCubit>(
      () => _i19.AppCubit(appRepository: get<_i3.AppRepository>()));
  gh.lazySingleton<_i20.AuthenticationService>(() =>
      _i21.MockAuthenticationService(
          get<_i5.Box<String>>(instanceName: 'mockSecret'),
          cacheBox: get<_i5.Box<String>>(instanceName: 'mockCacheSecret')));
  gh.factory<_i22.ChangePasswordBloc>(
      () => _i22.ChangePasswordBloc(get<_i20.AuthenticationService>()));
  gh.factory<_i23.HistoryBloc>(
      () => _i23.HistoryBloc(get<_i7.ScheduleRepository>()));
  gh.factory<_i24.LoginBloc>(
      () => _i24.LoginBloc(get<_i20.AuthenticationService>()));
  gh.factory<_i25.ProfileBloc>(() => _i25.ProfileBloc(
      get<_i20.AuthenticationService>(), get<_i17.UserRepository>()));
  gh.factory<_i26.RecommendedTutorsBloc>(
      () => _i26.RecommendedTutorsBloc(get<_i13.TutorRepository>()));
  gh.factory<_i27.ResetPasswordBloc>(
      () => _i27.ResetPasswordBloc(get<_i20.AuthenticationService>()));
  gh.factory<_i28.SearchTutorsBloc>(
      () => _i28.SearchTutorsBloc(get<_i13.TutorRepository>()));
  gh.factory<_i29.SignUpBloc>(
      () => _i29.SignUpBloc(get<_i20.AuthenticationService>()));
  gh.factory<_i30.TutorDetailsBloc>(
      () => _i30.TutorDetailsBloc(get<_i13.TutorRepository>()));
  gh.factory<_i31.AuthenticationBloc>(
      () => _i31.AuthenticationBloc(get<_i20.AuthenticationService>()));
  return get;
}

class _$AppInjectableModule extends _i32.AppInjectableModule {}
