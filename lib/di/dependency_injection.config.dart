// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i15;

import '../application/authentication/authentication_bloc.dart' as _i38;
import '../application/authentication/change_password/change_password_bloc.dart'
    as _i27;
import '../application/authentication/login/login_bloc.dart' as _i31;
import '../application/authentication/reset_password/reset_password_bloc.dart'
    as _i34;
import '../application/authentication/sign_up/sign_up_bloc.dart' as _i36;
import '../application/common/app/app_cubit.dart' as _i24;
import '../application/course_ebook/course_details/course_details_bloc.dart'
    as _i28;
import '../application/course_ebook/course_list/course_list_bloc.dart' as _i29;
import '../application/course_ebook/ebook_details/ebook_details_bloc.dart'
    as _i8;
import '../application/course_ebook/ebook_list/ebook_list_bloc.dart' as _i9;
import '../application/schedule/history/history_bloc.dart' as _i30;
import '../application/schedule/tutor_schedule/tutor_schedule_bloc.dart'
    as _i20;
import '../application/schedule/upcoming_class/upcoming_class_bloc.dart'
    as _i21;
import '../application/tutor/recommended_tutors/recommended_tutors_bloc.dart'
    as _i33;
import '../application/tutor/search_tutors/search_tutors_bloc.dart' as _i35;
import '../application/tutor/tutor_details/tutor_details_bloc.dart' as _i37;
import '../application/user/profile/profile_bloc.dart' as _i32;
import '../domain/authentication/interfaces/i_authentication_service.dart'
    as _i25;
import '../domain/common/app/i_app_repository.dart' as _i3;
import '../domain/course_ebook/interfaces/i_course_repository.dart' as _i6;
import '../domain/schedule/interfaces/i_schedule_repository.dart' as _i11;
import '../domain/tutor/interfaces/i_tutor_repository.dart' as _i18;
import '../domain/user/interfaces/i_user_repository.dart' as _i22;
import '../infrastructure/authentication/repositories/mock_authentication_service.dart'
    as _i26;
import '../infrastructure/common/app/app_repository.dart' as _i4;
import '../infrastructure/common/db/secure_hive_storage.dart' as _i13;
import '../infrastructure/common/db/shared_preference_storage.dart' as _i14;
import '../infrastructure/common/di/app_injectable_module.dart' as _i39;
import '../infrastructure/course/repositories/mock_course_repository.dart'
    as _i7;
import '../infrastructure/schedule/repositories/mock_schedule_repository.dart'
    as _i12;
import '../infrastructure/tutor/repository/mock_tutor_repository.dart' as _i19;
import '../infrastructure/user/data_source/i_tutor_data_source.dart' as _i16;
import '../infrastructure/user/data_source/local_tutor_data_source.dart'
    as _i17;
import '../infrastructure/user/repositories/mock_user_repository.dart'
    as _i23; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i11.ScheduleRepository>(() => _i12.MockScheduleRepository(
      get<_i5.Box<String>>(instanceName: 'mockSecret')));
  gh.singleton<_i13.SecureHiveStorage>(
      _i13.SecureHiveStorage(get<_i10.FlutterSecureStorage>()));
  gh.lazySingleton<_i14.SharedPreferenceStorage>(
      () => _i14.SharedPreferenceStorageImpl());
  await gh.factoryAsync<_i15.SharedPreferences>(() => appInjectableModule.prefs,
      preResolve: true);
  gh.singleton<_i16.TutorDataSource>(_i17.LocalTutorDataSource(),
      dispose: (i) => i.dispose());
  gh.lazySingleton<_i18.TutorRepository>(
      () => _i19.MockTutorRepository(get<_i16.TutorDataSource>()));
  gh.factory<_i20.TutorScheduleBloc>(
      () => _i20.TutorScheduleBloc(get<_i11.ScheduleRepository>()));
  gh.factory<_i21.UpcomingClassBloc>(
      () => _i21.UpcomingClassBloc(get<_i11.ScheduleRepository>()));
  gh.lazySingleton<_i22.UserRepository>(() => _i23.MockUserRepository(
      get<_i5.Box<String>>(instanceName: 'mockSecret')));
  gh.factory<_i24.AppCubit>(
      () => _i24.AppCubit(appRepository: get<_i3.AppRepository>()));
  gh.lazySingleton<_i25.AuthenticationService>(() =>
      _i26.MockAuthenticationService(
          get<_i5.Box<String>>(instanceName: 'mockSecret'),
          cacheBox: get<_i5.Box<String>>(instanceName: 'mockCacheSecret')));
  gh.factory<_i27.ChangePasswordBloc>(
      () => _i27.ChangePasswordBloc(get<_i25.AuthenticationService>()));
  gh.factory<_i28.CourseDetailsBloc>(
      () => _i28.CourseDetailsBloc(get<_i6.CourseRepository>()));
  gh.factory<_i29.CourseListBloc>(
      () => _i29.CourseListBloc(get<_i6.CourseRepository>()));
  gh.factory<_i30.HistoryBloc>(
      () => _i30.HistoryBloc(get<_i11.ScheduleRepository>()));
  gh.factory<_i31.LoginBloc>(
      () => _i31.LoginBloc(get<_i25.AuthenticationService>()));
  gh.factory<_i32.ProfileBloc>(() => _i32.ProfileBloc(
      get<_i25.AuthenticationService>(), get<_i22.UserRepository>()));
  gh.factory<_i33.RecommendedTutorsBloc>(
      () => _i33.RecommendedTutorsBloc(get<_i18.TutorRepository>()));
  gh.factory<_i34.ResetPasswordBloc>(
      () => _i34.ResetPasswordBloc(get<_i25.AuthenticationService>()));
  gh.factory<_i35.SearchTutorsBloc>(
      () => _i35.SearchTutorsBloc(get<_i18.TutorRepository>()));
  gh.factory<_i36.SignUpBloc>(
      () => _i36.SignUpBloc(get<_i25.AuthenticationService>()));
  gh.factory<_i37.TutorDetailsBloc>(
      () => _i37.TutorDetailsBloc(get<_i18.TutorRepository>()));
  gh.factory<_i38.AuthenticationBloc>(
      () => _i38.AuthenticationBloc(get<_i25.AuthenticationService>()));
  return get;
}

class _$AppInjectableModule extends _i39.AppInjectableModule {}
