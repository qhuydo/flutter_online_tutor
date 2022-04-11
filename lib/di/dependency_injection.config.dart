// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i17;

import '../application/authentication/authentication_bloc.dart' as _i40;
import '../application/authentication/change_password/change_password_bloc.dart'
    as _i29;
import '../application/authentication/login/login_bloc.dart' as _i33;
import '../application/authentication/reset_password/reset_password_bloc.dart'
    as _i36;
import '../application/authentication/sign_up/sign_up_bloc.dart' as _i38;
import '../application/common/app/app_cubit.dart' as _i26;
import '../application/course_ebook/course_details/course_details_bloc.dart'
    as _i30;
import '../application/course_ebook/course_list/course_list_bloc.dart' as _i31;
import '../application/course_ebook/ebook_details/ebook_details_bloc.dart'
    as _i8;
import '../application/course_ebook/ebook_list/ebook_list_bloc.dart' as _i9;
import '../application/schedule/history/history_bloc.dart' as _i32;
import '../application/schedule/tutor_schedule/tutor_schedule_bloc.dart'
    as _i22;
import '../application/schedule/upcoming_class/upcoming_class_bloc.dart'
    as _i23;
import '../application/tutor/recommended_tutors/recommended_tutors_bloc.dart'
    as _i35;
import '../application/tutor/search_tutors/search_tutors_bloc.dart' as _i37;
import '../application/tutor/tutor_details/tutor_details_bloc.dart' as _i39;
import '../application/user/profile/profile_bloc.dart' as _i34;
import '../domain/authentication/interfaces/i_authentication_service.dart'
    as _i27;
import '../domain/common/app/i_app_repository.dart' as _i3;
import '../domain/common/interfaces/i_internet_connection_service.dart' as _i11;
import '../domain/course_ebook/interfaces/i_course_repository.dart' as _i6;
import '../domain/schedule/interfaces/i_schedule_repository.dart' as _i13;
import '../domain/tutor/interfaces/i_tutor_repository.dart' as _i20;
import '../domain/user/interfaces/i_user_repository.dart' as _i24;
import '../infrastructure/authentication/repositories/mock_authentication_service.dart'
    as _i28;
import '../infrastructure/common/app/app_repository.dart' as _i4;
import '../infrastructure/common/db/secure_hive_storage.dart' as _i15;
import '../infrastructure/common/db/shared_preference_storage.dart' as _i16;
import '../infrastructure/common/di/app_injectable_module.dart' as _i41;
import '../infrastructure/common/network/internet_connection_service.dart'
    as _i12;
import '../infrastructure/course/repositories/mock_course_repository.dart'
    as _i7;
import '../infrastructure/schedule/repositories/mock_schedule_repository.dart'
    as _i14;
import '../infrastructure/tutor/repository/mock_tutor_repository.dart' as _i21;
import '../infrastructure/user/data_source/i_tutor_data_source.dart' as _i18;
import '../infrastructure/user/data_source/local_tutor_data_source.dart'
    as _i19;
import '../infrastructure/user/repositories/mock_user_repository.dart'
    as _i25; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i6.CourseRepository>(() => _i7.MockCourseRepository());
  gh.factory<_i8.EbookDetailsBloc>(
      () => _i8.EbookDetailsBloc(get<_i6.CourseRepository>()));
  gh.factory<_i9.EbookListBloc>(
      () => _i9.EbookListBloc(get<_i6.CourseRepository>()));
  gh.singleton<_i10.FlutterSecureStorage>(appInjectableModule.secureStorage);
  gh.lazySingleton<_i11.InternetConnectionService>(
      () => _i12.InternetConnectionServiceImpl(),
      dispose: (i) => i.dispose());
  gh.lazySingleton<_i13.ScheduleRepository>(() => _i14.MockScheduleRepository(
      get<_i5.Box<String>>(instanceName: 'mockSecret')));
  gh.singleton<_i15.SecureHiveStorage>(
      _i15.SecureHiveStorage(get<_i10.FlutterSecureStorage>()));
  gh.lazySingleton<_i16.SharedPreferenceStorage>(
      () => _i16.SharedPreferenceStorageImpl());
  await gh.factoryAsync<_i17.SharedPreferences>(() => appInjectableModule.prefs,
      preResolve: true);
  gh.singleton<_i18.TutorDataSource>(_i19.LocalTutorDataSource(),
      dispose: (i) => i.dispose());
  gh.lazySingleton<_i20.TutorRepository>(
      () => _i21.MockTutorRepository(get<_i18.TutorDataSource>()));
  gh.factory<_i22.TutorScheduleBloc>(
      () => _i22.TutorScheduleBloc(get<_i13.ScheduleRepository>()));
  gh.factory<_i23.UpcomingClassBloc>(
      () => _i23.UpcomingClassBloc(get<_i13.ScheduleRepository>()));
  gh.lazySingleton<_i24.UserRepository>(() => _i25.MockUserRepository(
      get<_i5.Box<String>>(instanceName: 'mockSecret')));
  gh.factory<_i26.AppCubit>(() => _i26.AppCubit(
      get<_i3.AppRepository>(), get<_i11.InternetConnectionService>()));
  gh.lazySingleton<_i27.AuthenticationService>(() =>
      _i28.MockAuthenticationService(
          get<_i5.Box<String>>(instanceName: 'mockSecret'),
          cacheBox: get<_i5.Box<String>>(instanceName: 'mockCacheSecret')));
  gh.factory<_i29.ChangePasswordBloc>(
      () => _i29.ChangePasswordBloc(get<_i27.AuthenticationService>()));
  gh.factory<_i30.CourseDetailsBloc>(
      () => _i30.CourseDetailsBloc(get<_i6.CourseRepository>()));
  gh.factory<_i31.CourseListBloc>(
      () => _i31.CourseListBloc(get<_i6.CourseRepository>()));
  gh.factory<_i32.HistoryBloc>(
      () => _i32.HistoryBloc(get<_i13.ScheduleRepository>()));
  gh.factory<_i33.LoginBloc>(
      () => _i33.LoginBloc(get<_i27.AuthenticationService>()));
  gh.factory<_i34.ProfileBloc>(() => _i34.ProfileBloc(
      get<_i27.AuthenticationService>(), get<_i24.UserRepository>()));
  gh.factory<_i35.RecommendedTutorsBloc>(
      () => _i35.RecommendedTutorsBloc(get<_i20.TutorRepository>()));
  gh.factory<_i36.ResetPasswordBloc>(
      () => _i36.ResetPasswordBloc(get<_i27.AuthenticationService>()));
  gh.factory<_i37.SearchTutorsBloc>(
      () => _i37.SearchTutorsBloc(get<_i20.TutorRepository>()));
  gh.factory<_i38.SignUpBloc>(
      () => _i38.SignUpBloc(get<_i27.AuthenticationService>()));
  gh.factory<_i39.TutorDetailsBloc>(
      () => _i39.TutorDetailsBloc(get<_i20.TutorRepository>()));
  gh.factory<_i40.AuthenticationBloc>(
      () => _i40.AuthenticationBloc(get<_i27.AuthenticationService>()));
  return get;
}

class _$AppInjectableModule extends _i41.AppInjectableModule {}
