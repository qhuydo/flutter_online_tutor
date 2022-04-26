// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i8;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i11;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i19;

import '../application/authentication/authentication_bloc.dart' as _i49;
import '../application/authentication/change_password/change_password_bloc.dart'
    as _i32;
import '../application/authentication/login/login_bloc.dart' as _i39;
import '../application/authentication/reset_password/reset_password_bloc.dart'
    as _i42;
import '../application/authentication/sign_up/sign_up_bloc.dart' as _i45;
import '../application/common/app/app_cubit.dart' as _i29;
import '../application/course_ebook/course_details/course_details_bloc.dart'
    as _i33;
import '../application/course_ebook/course_list/course_list_bloc.dart' as _i34;
import '../application/course_ebook/ebook_details/ebook_details_bloc.dart'
    as _i9;
import '../application/course_ebook/ebook_list/ebook_list_bloc.dart' as _i10;
import '../application/schedule/history/history_bloc.dart' as _i38;
import '../application/schedule/tutor_schedule/tutor_schedule_bloc.dart'
    as _i24;
import '../application/schedule/upcoming_class/upcoming_class_bloc.dart'
    as _i25;
import '../application/tutor/favourite_tutors/favourite_tutors_cubit.dart'
    as _i37;
import '../application/tutor/recommended_tutors/recommended_tutors_bloc.dart'
    as _i41;
import '../application/tutor/search_tutors/search_tutors_bloc.dart' as _i44;
import '../application/tutor/tutor_details/tutor_details_bloc.dart' as _i46;
import '../application/user/profile/profile_bloc.dart' as _i40;
import '../domain/authentication/interfaces/i_authentication_service.dart'
    as _i30;
import '../domain/common/app/i_app_repository.dart' as _i3;
import '../domain/common/interfaces/i_internet_connection_service.dart' as _i12;
import '../domain/course_ebook/interfaces/i_course_repository.dart' as _i6;
import '../domain/schedule/interfaces/i_schedule_repository.dart' as _i14;
import '../domain/tutor/interfaces/i_tutor_repository.dart' as _i22;
import '../domain/user/interfaces/i_user_repository.dart' as _i26;
import '../infrastructure/authentication/repositories/authentication_service.dart'
    as _i50;
import '../infrastructure/authentication/repositories/mock_authentication_service.dart'
    as _i31;
import '../infrastructure/common/app/app_repository.dart' as _i4;
import '../infrastructure/common/db/secure_hive_storage.dart' as _i16;
import '../infrastructure/common/db/shared_preference_storage.dart' as _i18;
import '../infrastructure/common/di/app_injectable_module.dart' as _i51;
import '../infrastructure/common/network/api_client.dart' as _i28;
import '../infrastructure/common/network/dio_interceptors.dart' as _i36;
import '../infrastructure/common/network/internet_connection_service.dart'
    as _i13;
import '../infrastructure/common/network/server_url.dart' as _i17;
import '../infrastructure/course_ebook/repositories/course_repository.dart'
    as _i35;
import '../infrastructure/course_ebook/repositories/mock_course_repository.dart'
    as _i7;
import '../infrastructure/schedule/repositories/mock_schedule_repository.dart'
    as _i15;
import '../infrastructure/schedule/repositories/schedule_repository.dart'
    as _i43;
import '../infrastructure/tutor/data_source/i_tutor_data_source.dart' as _i20;
import '../infrastructure/tutor/data_source/local_tutor_data_source.dart'
    as _i21;
import '../infrastructure/tutor/repository/mock_tutor_repository.dart' as _i23;
import '../infrastructure/tutor/repository/tutor_repository.dart' as _i47;
import '../infrastructure/user/repositories/mock_user_repository.dart' as _i27;
import '../infrastructure/user/repositories/user_repository.dart' as _i48;

const String _mock = 'mock';
const String _prod = 'prod';
const String _dev = 'dev';
const String _test = 'test';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final appInjectableModule = _$AppInjectableModule();
  gh.lazySingleton<_i3.AppRepository>(() => _i4.AppRepositoryImpl());
  await gh.factoryAsync<_i5.Box<String>>(
      () => appInjectableModule.mockCacheSecretBox,
      instanceName: 'mockCacheSecret',
      preResolve: true);
  await gh.factoryAsync<_i5.Box<String>>(
      () => appInjectableModule.mockSecretBox,
      instanceName: 'mockSecret',
      preResolve: true);
  gh.lazySingleton<_i6.CourseRepository>(() => _i7.MockCourseRepository(),
      registerFor: {_mock});
  gh.lazySingleton<_i8.Dio>(() => appInjectableModule.dio);
  gh.factory<_i9.EbookDetailsBloc>(
      () => _i9.EbookDetailsBloc(get<_i6.CourseRepository>()));
  gh.factory<_i10.EbookListBloc>(
      () => _i10.EbookListBloc(get<_i6.CourseRepository>()));
  gh.singleton<_i11.FlutterSecureStorage>(appInjectableModule.secureStorage);
  gh.lazySingleton<_i12.InternetConnectionService>(
      () => _i13.InternetConnectionServiceImpl(),
      dispose: (i) => i.dispose());
  gh.lazySingleton<_i14.ScheduleRepository>(
      () => _i15.MockScheduleRepository(
          get<_i5.Box<String>>(instanceName: 'mockSecret')),
      registerFor: {_mock});
  await gh.singletonAsync<_i16.SecureHiveStorage>(
      () => appInjectableModule
          .secureHiveStorage(get<_i11.FlutterSecureStorage>()),
      preResolve: true);
  gh.singleton<_i17.ServerUrl>(_i17.ServerUrlProd(), registerFor: {_prod});
  gh.singleton<_i17.ServerUrl>(_i17.ServerUrlDev(),
      registerFor: {_dev, _test, _mock});
  gh.lazySingleton<_i18.SharedPreferenceStorage>(
      () => _i18.SharedPreferenceStorageImpl());
  await gh.factoryAsync<_i19.SharedPreferences>(() => appInjectableModule.prefs,
      preResolve: true);
  gh.singleton<_i20.TutorDataSource>(_i21.LocalTutorDataSource(),
      dispose: (i) => i.dispose());
  gh.lazySingleton<_i22.TutorRepository>(
      () => _i23.MockTutorRepository(get<_i20.TutorDataSource>()),
      registerFor: {_mock});
  gh.factory<_i24.TutorScheduleBloc>(
      () => _i24.TutorScheduleBloc(get<_i14.ScheduleRepository>()));
  gh.factory<_i25.UpcomingClassBloc>(
      () => _i25.UpcomingClassBloc(get<_i14.ScheduleRepository>()));
  gh.lazySingleton<_i26.UserRepository>(
      () => _i27.MockUserRepository(
          get<_i5.Box<String>>(instanceName: 'mockSecret')),
      registerFor: {_mock});
  gh.lazySingleton<_i28.ApiClient>(
      () => _i28.ApiClient(get<_i8.Dio>(), get<_i17.ServerUrl>()));
  gh.factory<_i29.AppCubit>(() => _i29.AppCubit(
      get<_i3.AppRepository>(), get<_i12.InternetConnectionService>()));
  gh.lazySingleton<_i30.AuthenticationService>(
      () => _i31.MockAuthenticationService(
          get<_i5.Box<String>>(instanceName: 'mockSecret'),
          cacheBox: get<_i5.Box<String>>(instanceName: 'mockCacheSecret')),
      registerFor: {_mock},
      dispose: (i) => i.dispose());
  await gh.factoryAsync<_i5.Box<String>>(
      () => appInjectableModule.secretBox(get<_i16.SecureHiveStorage>()),
      instanceName: 'secret',
      preResolve: true);
  gh.factory<_i32.ChangePasswordBloc>(
      () => _i32.ChangePasswordBloc(get<_i30.AuthenticationService>()));
  gh.factory<_i33.CourseDetailsBloc>(
      () => _i33.CourseDetailsBloc(get<_i6.CourseRepository>()));
  gh.factory<_i34.CourseListBloc>(
      () => _i34.CourseListBloc(get<_i6.CourseRepository>()));
  gh.lazySingleton<_i6.CourseRepository>(
      () => _i35.CourseRepositoryImpl(get<_i28.ApiClient>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i36.DioInterceptor>(() => _i36.DioInterceptor(
      get<_i8.Dio>(),
      get<_i30.AuthenticationService>(),
      get<_i17.ServerUrl>()));
  gh.factory<_i37.FavouriteTutorsCubit>(
      () => _i37.FavouriteTutorsCubit(get<_i22.TutorRepository>()));
  gh.factory<_i38.HistoryBloc>(
      () => _i38.HistoryBloc(get<_i14.ScheduleRepository>()));
  gh.factory<_i39.LoginBloc>(
      () => _i39.LoginBloc(get<_i30.AuthenticationService>()));
  gh.factory<_i40.ProfileBloc>(
      () => _i40.ProfileBloc(get<_i26.UserRepository>()));
  gh.factory<_i41.RecommendedTutorsBloc>(
      () => _i41.RecommendedTutorsBloc(get<_i22.TutorRepository>()));
  gh.factory<_i42.ResetPasswordBloc>(
      () => _i42.ResetPasswordBloc(get<_i30.AuthenticationService>()));
  gh.lazySingleton<_i14.ScheduleRepository>(
      () => _i43.ScheduleRepositoryImpl(
          get<_i5.Box<String>>(instanceName: 'secret'), get<_i28.ApiClient>()),
      registerFor: {_dev, _prod, _test});
  gh.factory<_i44.SearchTutorsBloc>(
      () => _i44.SearchTutorsBloc(get<_i22.TutorRepository>()));
  gh.factory<_i45.SignUpBloc>(
      () => _i45.SignUpBloc(get<_i30.AuthenticationService>()));
  gh.factory<_i46.TutorDetailsBloc>(
      () => _i46.TutorDetailsBloc(get<_i22.TutorRepository>()));
  gh.lazySingleton<_i22.TutorRepository>(
      () => _i47.TutorRepositoryImpl(
          get<_i20.TutorDataSource>(), get<_i28.ApiClient>()),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i26.UserRepository>(
      () => _i48.UserRepositoryImpl(
          get<_i5.Box<String>>(instanceName: 'secret'), get<_i28.ApiClient>()),
      registerFor: {_dev, _prod, _test});
  gh.factory<_i49.AuthenticationBloc>(
      () => _i49.AuthenticationBloc(get<_i30.AuthenticationService>()));
  gh.singleton<_i30.AuthenticationService>(
      _i50.AuthenticationServiceImpl(
          get<_i5.Box<String>>(instanceName: 'secret'), get<_i28.ApiClient>()),
      registerFor: {_dev, _prod, _test},
      dispose: (i) => i.dispose());
  return get;
}

class _$AppInjectableModule extends _i51.AppInjectableModule {}
