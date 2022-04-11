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

import '../application/authentication/authentication_bloc.dart' as _i43;
import '../application/authentication/change_password/change_password_bloc.dart'
    as _i32;
import '../application/authentication/login/login_bloc.dart' as _i36;
import '../application/authentication/reset_password/reset_password_bloc.dart'
    as _i39;
import '../application/authentication/sign_up/sign_up_bloc.dart' as _i41;
import '../application/common/app/app_cubit.dart' as _i29;
import '../application/course_ebook/course_details/course_details_bloc.dart'
    as _i33;
import '../application/course_ebook/course_list/course_list_bloc.dart' as _i34;
import '../application/course_ebook/ebook_details/ebook_details_bloc.dart'
    as _i9;
import '../application/course_ebook/ebook_list/ebook_list_bloc.dart' as _i10;
import '../application/schedule/history/history_bloc.dart' as _i35;
import '../application/schedule/tutor_schedule/tutor_schedule_bloc.dart'
    as _i24;
import '../application/schedule/upcoming_class/upcoming_class_bloc.dart'
    as _i25;
import '../application/tutor/recommended_tutors/recommended_tutors_bloc.dart'
    as _i38;
import '../application/tutor/search_tutors/search_tutors_bloc.dart' as _i40;
import '../application/tutor/tutor_details/tutor_details_bloc.dart' as _i42;
import '../application/user/profile/profile_bloc.dart' as _i37;
import '../domain/authentication/interfaces/i_authentication_service.dart'
    as _i30;
import '../domain/common/app/i_app_repository.dart' as _i3;
import '../domain/common/interfaces/i_internet_connection_service.dart' as _i12;
import '../domain/course_ebook/interfaces/i_course_repository.dart' as _i6;
import '../domain/schedule/interfaces/i_schedule_repository.dart' as _i14;
import '../domain/tutor/interfaces/i_tutor_repository.dart' as _i22;
import '../domain/user/interfaces/i_user_repository.dart' as _i26;
import '../infrastructure/authentication/repositories/mock_authentication_service.dart'
    as _i31;
import '../infrastructure/common/app/app_repository.dart' as _i4;
import '../infrastructure/common/db/secure_hive_storage.dart' as _i16;
import '../infrastructure/common/db/shared_preference_storage.dart' as _i18;
import '../infrastructure/common/di/app_injectable_module.dart' as _i44;
import '../infrastructure/common/network/api_client.dart' as _i28;
import '../infrastructure/common/network/internet_connection_service.dart'
    as _i13;
import '../infrastructure/common/network/server_url.dart' as _i17;
import '../infrastructure/course/repositories/mock_course_repository.dart'
    as _i7;
import '../infrastructure/schedule/repositories/mock_schedule_repository.dart'
    as _i15;
import '../infrastructure/tutor/repository/mock_tutor_repository.dart' as _i23;
import '../infrastructure/user/data_source/i_tutor_data_source.dart' as _i20;
import '../infrastructure/user/data_source/local_tutor_data_source.dart'
    as _i21;
import '../infrastructure/user/repositories/mock_user_repository.dart' as _i27;

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
  await gh.factoryAsync<_i5.Box<String>>(() => appInjectableModule.secretBox,
      instanceName: 'Box', preResolve: true);
  await gh.factoryAsync<_i5.Box<String>>(
      () => appInjectableModule.mockCacheSecretBox,
      instanceName: 'mockCacheSecret',
      preResolve: true);
  gh.lazySingleton<_i6.CourseRepository>(() => _i7.MockCourseRepository());
  gh.lazySingleton<_i8.Dio>(() => appInjectableModule.dio);
  gh.factory<_i9.EbookDetailsBloc>(
      () => _i9.EbookDetailsBloc(get<_i6.CourseRepository>()));
  gh.factory<_i10.EbookListBloc>(
      () => _i10.EbookListBloc(get<_i6.CourseRepository>()));
  gh.singleton<_i11.FlutterSecureStorage>(appInjectableModule.secureStorage);
  gh.lazySingleton<_i12.InternetConnectionService>(
      () => _i13.InternetConnectionServiceImpl(),
      dispose: (i) => i.dispose());
  gh.lazySingleton<_i14.ScheduleRepository>(() => _i15.MockScheduleRepository(
      get<_i5.Box<String>>(instanceName: 'mockSecret')));
  gh.singleton<_i16.SecureHiveStorage>(
      _i16.SecureHiveStorage(get<_i11.FlutterSecureStorage>()));
  gh.singleton<_i17.ServerUrl>(_i17.ServerUrlProd(), registerFor: {_prod});
  gh.singleton<_i17.ServerUrl>(_i17.ServerUrlDev(), registerFor: {_dev, _test});
  gh.lazySingleton<_i18.SharedPreferenceStorage>(
      () => _i18.SharedPreferenceStorageImpl());
  await gh.factoryAsync<_i19.SharedPreferences>(() => appInjectableModule.prefs,
      preResolve: true);
  gh.singleton<_i20.TutorDataSource>(_i21.LocalTutorDataSource(),
      dispose: (i) => i.dispose());
  gh.lazySingleton<_i22.TutorRepository>(
      () => _i23.MockTutorRepository(get<_i20.TutorDataSource>()));
  gh.factory<_i24.TutorScheduleBloc>(
      () => _i24.TutorScheduleBloc(get<_i14.ScheduleRepository>()));
  gh.factory<_i25.UpcomingClassBloc>(
      () => _i25.UpcomingClassBloc(get<_i14.ScheduleRepository>()));
  gh.lazySingleton<_i26.UserRepository>(() => _i27.MockUserRepository(
      get<_i5.Box<String>>(instanceName: 'mockSecret')));
  gh.lazySingleton<_i28.ApiClient>(
      () => _i28.ApiClient(get<_i8.Dio>(), get<_i17.ServerUrl>()));
  gh.factory<_i29.AppCubit>(() => _i29.AppCubit(
      get<_i3.AppRepository>(), get<_i12.InternetConnectionService>()));
  gh.lazySingleton<_i30.AuthenticationService>(() =>
      _i31.MockAuthenticationService(
          get<_i5.Box<String>>(instanceName: 'mockSecret'),
          cacheBox: get<_i5.Box<String>>(instanceName: 'mockCacheSecret')));
  gh.factory<_i32.ChangePasswordBloc>(
      () => _i32.ChangePasswordBloc(get<_i30.AuthenticationService>()));
  gh.factory<_i33.CourseDetailsBloc>(
      () => _i33.CourseDetailsBloc(get<_i6.CourseRepository>()));
  gh.factory<_i34.CourseListBloc>(
      () => _i34.CourseListBloc(get<_i6.CourseRepository>()));
  gh.factory<_i35.HistoryBloc>(
      () => _i35.HistoryBloc(get<_i14.ScheduleRepository>()));
  gh.factory<_i36.LoginBloc>(
      () => _i36.LoginBloc(get<_i30.AuthenticationService>()));
  gh.factory<_i37.ProfileBloc>(() => _i37.ProfileBloc(
      get<_i30.AuthenticationService>(), get<_i26.UserRepository>()));
  gh.factory<_i38.RecommendedTutorsBloc>(
      () => _i38.RecommendedTutorsBloc(get<_i22.TutorRepository>()));
  gh.factory<_i39.ResetPasswordBloc>(
      () => _i39.ResetPasswordBloc(get<_i30.AuthenticationService>()));
  gh.factory<_i40.SearchTutorsBloc>(
      () => _i40.SearchTutorsBloc(get<_i22.TutorRepository>()));
  gh.factory<_i41.SignUpBloc>(
      () => _i41.SignUpBloc(get<_i30.AuthenticationService>()));
  gh.factory<_i42.TutorDetailsBloc>(
      () => _i42.TutorDetailsBloc(get<_i22.TutorRepository>()));
  gh.factory<_i43.AuthenticationBloc>(
      () => _i43.AuthenticationBloc(get<_i30.AuthenticationService>()));
  return get;
}

class _$AppInjectableModule extends _i44.AppInjectableModule {}
