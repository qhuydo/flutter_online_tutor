// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i8;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i21;

import '../application/authentication/authentication_bloc.dart' as _i54;
import '../application/authentication/change_password/change_password_bloc.dart'
    as _i35;
import '../application/authentication/login/login_bloc.dart' as _i42;
import '../application/authentication/reset_password/reset_password_bloc.dart'
    as _i47;
import '../application/authentication/sign_up/sign_up_bloc.dart' as _i50;
import '../application/become_tutor/become_tutor_bloc.dart' as _i34;
import '../application/common/app/app_cubit.dart' as _i31;
import '../application/course_ebook/course_details/course_details_bloc.dart'
    as _i36;
import '../application/course_ebook/course_list/course_list_bloc.dart' as _i37;
import '../application/course_ebook/ebook_list/ebook_list_bloc.dart' as _i9;
import '../application/meeting/meeting_bloc.dart' as _i13;
import '../application/message/list/message_list_bloc.dart' as _i43;
import '../application/schedule/history/history_bloc.dart' as _i41;
import '../application/schedule/tutor_schedule/tutor_schedule_bloc.dart'
    as _i26;
import '../application/schedule/upcoming_class/upcoming_class_bloc.dart'
    as _i27;
import '../application/tutor/favourite_tutors/favourite_tutors_cubit.dart'
    as _i40;
import '../application/tutor/recommended_tutors/recommended_tutors_bloc.dart'
    as _i46;
import '../application/tutor/search_tutors/search_tutors_bloc.dart' as _i49;
import '../application/tutor/tutor_details/tutor_details_bloc.dart' as _i51;
import '../application/user/profile/profile_bloc.dart' as _i45;
import '../domain/authentication/interfaces/i_authentication_service.dart'
    as _i32;
import '../domain/common/app/i_app_repository.dart' as _i3;
import '../domain/common/interfaces/i_internet_connection_service.dart' as _i11;
import '../domain/course_ebook/interfaces/i_course_repository.dart' as _i6;
import '../domain/message/interfaces/i_message_service.dart' as _i14;
import '../domain/schedule/interfaces/i_schedule_repository.dart' as _i16;
import '../domain/tutor/interfaces/i_tutor_repository.dart' as _i24;
import '../domain/user/interfaces/i_user_repository.dart' as _i28;
import '../infrastructure/authentication/repositories/authentication_service.dart'
    as _i55;
import '../infrastructure/authentication/repositories/mock_authentication_service.dart'
    as _i33;
import '../infrastructure/common/app/app_repository.dart' as _i4;
import '../infrastructure/common/db/secure_hive_storage.dart' as _i18;
import '../infrastructure/common/db/shared_preference_storage.dart' as _i20;
import '../infrastructure/common/di/app_injectable_module.dart' as _i56;
import '../infrastructure/common/network/api_client.dart' as _i30;
import '../infrastructure/common/network/dio_interceptors.dart' as _i39;
import '../infrastructure/common/network/internet_connection_service.dart'
    as _i12;
import '../infrastructure/common/network/server_url.dart' as _i19;
import '../infrastructure/course_ebook/repositories/course_repository.dart'
    as _i38;
import '../infrastructure/course_ebook/repositories/mock_course_repository.dart'
    as _i7;
import '../infrastructure/message/services/message_service.dart' as _i44;
import '../infrastructure/message/services/mock_message_service.dart' as _i15;
import '../infrastructure/schedule/repositories/mock_schedule_repository.dart'
    as _i17;
import '../infrastructure/schedule/repositories/schedule_repository.dart'
    as _i48;
import '../infrastructure/tutor/data_source/i_tutor_data_source.dart' as _i22;
import '../infrastructure/tutor/data_source/local_tutor_data_source.dart'
    as _i23;
import '../infrastructure/tutor/repository/mock_tutor_repository.dart' as _i25;
import '../infrastructure/tutor/repository/tutor_repository.dart' as _i52;
import '../infrastructure/user/repositories/mock_user_repository.dart' as _i29;
import '../infrastructure/user/repositories/user_repository.dart' as _i53;

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
      () => appInjectableModule.mockSecretBox,
      instanceName: 'mockSecret',
      preResolve: true);
  await gh.factoryAsync<_i5.Box<String>>(
      () => appInjectableModule.mockCacheSecretBox,
      instanceName: 'mockCacheSecret',
      preResolve: true);
  gh.lazySingleton<_i6.CourseRepository>(() => _i7.MockCourseRepository(),
      registerFor: {_mock});
  gh.lazySingleton<_i8.Dio>(() => appInjectableModule.dio);
  gh.factory<_i9.EbookListBloc>(
      () => _i9.EbookListBloc(get<_i6.CourseRepository>()));
  gh.singleton<_i10.FlutterSecureStorage>(appInjectableModule.secureStorage);
  gh.lazySingleton<_i11.InternetConnectionService>(
      () => _i12.InternetConnectionServiceImpl(),
      dispose: (i) => i.dispose());
  gh.factory<_i13.MeetingBloc>(() => _i13.MeetingBloc());
  gh.lazySingleton<_i14.MessageService>(() => _i15.MockMessageService(),
      registerFor: {_mock}, dispose: (i) => i.dispose());
  gh.lazySingleton<_i16.ScheduleRepository>(
      () => _i17.MockScheduleRepository(
          get<_i5.Box<String>>(instanceName: 'mockSecret')),
      registerFor: {_mock},
      dispose: (i) => i.dispose());
  await gh.singletonAsync<_i18.SecureHiveStorage>(
      () => appInjectableModule
          .secureHiveStorage(get<_i10.FlutterSecureStorage>()),
      preResolve: true);
  gh.singleton<_i19.ServerUrl>(_i19.ServerUrlProd(), registerFor: {_prod});
  gh.singleton<_i19.ServerUrl>(_i19.ServerUrlDev(),
      registerFor: {_dev, _test, _mock});
  gh.lazySingleton<_i20.SharedPreferenceStorage>(
      () => _i20.SharedPreferenceStorageImpl());
  await gh.factoryAsync<_i21.SharedPreferences>(() => appInjectableModule.prefs,
      preResolve: true);
  gh.singleton<_i22.TutorDataSource>(_i23.LocalTutorDataSource(),
      dispose: (i) => i.dispose());
  gh.lazySingleton<_i24.TutorRepository>(
      () => _i25.MockTutorRepository(get<_i22.TutorDataSource>()),
      registerFor: {_mock});
  gh.factory<_i26.TutorScheduleBloc>(
      () => _i26.TutorScheduleBloc(get<_i16.ScheduleRepository>()));
  gh.factory<_i27.UpcomingClassBloc>(
      () => _i27.UpcomingClassBloc(get<_i16.ScheduleRepository>()));
  gh.lazySingleton<_i28.UserRepository>(
      () => _i29.MockUserRepository(
          get<_i5.Box<String>>(instanceName: 'mockSecret')),
      registerFor: {_mock});
  gh.lazySingleton<_i30.ApiClient>(
      () => _i30.ApiClient(get<_i8.Dio>(), get<_i19.ServerUrl>()));
  gh.factory<_i31.AppCubit>(() => _i31.AppCubit(
      get<_i3.AppRepository>(), get<_i11.InternetConnectionService>()));
  gh.lazySingleton<_i32.AuthenticationService>(
      () => _i33.MockAuthenticationService(
          get<_i5.Box<String>>(instanceName: 'mockSecret'),
          cacheBox: get<_i5.Box<String>>(instanceName: 'mockCacheSecret')),
      registerFor: {_mock},
      dispose: (i) => i.dispose());
  gh.factory<_i34.BecomeTutorBloc>(() => _i34.BecomeTutorBloc(
      get<_i28.UserRepository>(), get<_i24.TutorRepository>()));
  await gh.factoryAsync<_i5.Box<String>>(
      () => appInjectableModule.secretBox(get<_i18.SecureHiveStorage>()),
      instanceName: 'secret',
      preResolve: true);
  gh.factory<_i35.ChangePasswordBloc>(
      () => _i35.ChangePasswordBloc(get<_i32.AuthenticationService>()));
  gh.factory<_i36.CourseDetailsBloc>(
      () => _i36.CourseDetailsBloc(get<_i6.CourseRepository>()));
  gh.factory<_i37.CourseListBloc>(
      () => _i37.CourseListBloc(get<_i6.CourseRepository>()));
  gh.lazySingleton<_i6.CourseRepository>(
      () => _i38.CourseRepositoryImpl(get<_i30.ApiClient>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i39.DioInterceptor>(() => _i39.DioInterceptor(
      get<_i8.Dio>(),
      get<_i32.AuthenticationService>(),
      get<_i19.ServerUrl>()));
  gh.factory<_i40.FavouriteTutorsCubit>(
      () => _i40.FavouriteTutorsCubit(get<_i24.TutorRepository>()));
  gh.factory<_i41.HistoryBloc>(
      () => _i41.HistoryBloc(get<_i16.ScheduleRepository>()));
  gh.factory<_i42.LoginBloc>(
      () => _i42.LoginBloc(get<_i32.AuthenticationService>()));
  gh.factory<_i43.MessageListBloc>(() => _i43.MessageListBloc(
      get<_i14.MessageService>(), get<_i28.UserRepository>()));
  gh.lazySingleton<_i14.MessageService>(
      () => _i44.MessageServiceImpl(get<_i19.ServerUrl>()),
      registerFor: {_dev, _prod, _test},
      dispose: (i) => i.dispose());
  gh.factory<_i45.ProfileBloc>(() => _i45.ProfileBloc(
      get<_i28.UserRepository>(), get<_i32.AuthenticationService>()));
  gh.factory<_i46.RecommendedTutorsBloc>(
      () => _i46.RecommendedTutorsBloc(get<_i24.TutorRepository>()));
  gh.factory<_i47.ResetPasswordBloc>(
      () => _i47.ResetPasswordBloc(get<_i32.AuthenticationService>()));
  gh.lazySingleton<_i16.ScheduleRepository>(
      () => _i48.ScheduleRepositoryImpl(
          get<_i5.Box<String>>(instanceName: 'secret'), get<_i30.ApiClient>()),
      registerFor: {_dev, _prod, _test},
      dispose: (i) => i.dispose());
  gh.factory<_i49.SearchTutorsBloc>(
      () => _i49.SearchTutorsBloc(get<_i24.TutorRepository>()));
  gh.factory<_i50.SignUpBloc>(
      () => _i50.SignUpBloc(get<_i32.AuthenticationService>()));
  gh.factory<_i51.TutorDetailsBloc>(
      () => _i51.TutorDetailsBloc(get<_i24.TutorRepository>()));
  gh.lazySingleton<_i24.TutorRepository>(
      () => _i52.TutorRepositoryImpl(
          get<_i22.TutorDataSource>(), get<_i30.ApiClient>()),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i28.UserRepository>(
      () => _i53.UserRepositoryImpl(
          get<_i5.Box<String>>(instanceName: 'secret'), get<_i30.ApiClient>()),
      registerFor: {_dev, _prod, _test});
  gh.factory<_i54.AuthenticationBloc>(
      () => _i54.AuthenticationBloc(get<_i32.AuthenticationService>()));
  gh.singleton<_i32.AuthenticationService>(
      _i55.AuthenticationServiceImpl(
          get<_i5.Box<String>>(instanceName: 'secret'), get<_i30.ApiClient>()),
      registerFor: {_dev, _prod, _test},
      dispose: (i) => i.dispose());
  return get;
}

class _$AppInjectableModule extends _i56.AppInjectableModule {}
