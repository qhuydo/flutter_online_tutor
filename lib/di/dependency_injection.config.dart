// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i13;

import '../application/authentication/authentication_bloc.dart' as _i36;
import '../application/authentication/change_password/change_password_bloc.dart'
    as _i25;
import '../application/authentication/login/login_bloc.dart' as _i29;
import '../application/authentication/reset_password/reset_password_bloc.dart'
    as _i32;
import '../application/authentication/sign_up/sign_up_bloc.dart' as _i34;
import '../application/common/app/app_cubit.dart' as _i22;
import '../application/course_ebook/course_details/course_details_bloc.dart'
    as _i26;
import '../application/course_ebook/course_list/course_list_bloc.dart' as _i27;
import '../application/course_ebook/ebook_details/ebook_details_bloc.dart'
    as _i8;
import '../application/course_ebook/ebook_list/ebook_list_bloc.dart' as _i9;
import '../application/schedule/history/history_bloc.dart' as _i28;
import '../application/schedule/tutor_schedule/tutor_schedule_bloc.dart'
    as _i18;
import '../application/schedule/upcoming_class/upcoming_class_bloc.dart'
    as _i19;
import '../application/tutor/recommended_tutors/recommended_tutors_bloc.dart'
    as _i31;
import '../application/tutor/search_tutors/search_tutors_bloc.dart' as _i33;
import '../application/tutor/tutor_details/tutor_details_bloc.dart' as _i35;
import '../application/user/profile/profile_bloc.dart' as _i30;
import '../domain/authentication/interfaces/i_authentication_service.dart'
    as _i23;
import '../domain/common/app/i_app_repository.dart' as _i3;
import '../domain/course_ebook/interfaces/i_course_repository.dart' as _i6;
import '../domain/schedule/interfaces/i_schedule_repository.dart' as _i10;
import '../domain/tutor/interfaces/i_tutor_repository.dart' as _i16;
import '../domain/user/interfaces/i_user_repository.dart' as _i20;
import '../infrastructure/authentication/repositories/mock_authentication_service.dart'
    as _i24;
import '../infrastructure/common/app/app_repository.dart' as _i4;
import '../infrastructure/common/db/shared_preference_storage.dart' as _i12;
import '../infrastructure/common/di/app_injectable_module.dart' as _i37;
import '../infrastructure/course/repositories/mock_course_repository.dart'
    as _i7;
import '../infrastructure/schedule/repositories/mock_schedule_repository.dart'
    as _i11;
import '../infrastructure/tutor/repository/mock_tutor_repository.dart' as _i17;
import '../infrastructure/user/data_source/i_tutor_data_source.dart' as _i14;
import '../infrastructure/user/data_source/local_tutor_data_source.dart'
    as _i15;
import '../infrastructure/user/repositories/mock_user_repository.dart'
    as _i21; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i10.ScheduleRepository>(() => _i11.MockScheduleRepository(
      get<_i5.Box<String>>(instanceName: 'mockSecret')));
  gh.lazySingleton<_i12.SharedPreferenceStorage>(
      () => _i12.SharedPreferenceStorageImpl());
  await gh.factoryAsync<_i13.SharedPreferences>(() => appInjectableModule.prefs,
      preResolve: true);
  gh.singleton<_i14.TutorDataSource>(_i15.LocalTutorDataSource(),
      dispose: (i) => i.dispose());
  gh.lazySingleton<_i16.TutorRepository>(
      () => _i17.MockTutorRepository(get<_i14.TutorDataSource>()));
  gh.factory<_i18.TutorScheduleBloc>(
      () => _i18.TutorScheduleBloc(get<_i10.ScheduleRepository>()));
  gh.factory<_i19.UpcomingClassBloc>(
      () => _i19.UpcomingClassBloc(get<_i10.ScheduleRepository>()));
  gh.lazySingleton<_i20.UserRepository>(() => _i21.MockUserRepository(
      get<_i5.Box<String>>(instanceName: 'mockSecret')));
  gh.factory<_i22.AppCubit>(
      () => _i22.AppCubit(appRepository: get<_i3.AppRepository>()));
  gh.lazySingleton<_i23.AuthenticationService>(() =>
      _i24.MockAuthenticationService(
          get<_i5.Box<String>>(instanceName: 'mockSecret'),
          cacheBox: get<_i5.Box<String>>(instanceName: 'mockCacheSecret')));
  gh.factory<_i25.ChangePasswordBloc>(
      () => _i25.ChangePasswordBloc(get<_i23.AuthenticationService>()));
  gh.factory<_i26.CourseDetailsBloc>(
      () => _i26.CourseDetailsBloc(get<_i6.CourseRepository>()));
  gh.factory<_i27.CourseListBloc>(
      () => _i27.CourseListBloc(get<_i6.CourseRepository>()));
  gh.factory<_i28.HistoryBloc>(
      () => _i28.HistoryBloc(get<_i10.ScheduleRepository>()));
  gh.factory<_i29.LoginBloc>(
      () => _i29.LoginBloc(get<_i23.AuthenticationService>()));
  gh.factory<_i30.ProfileBloc>(() => _i30.ProfileBloc(
      get<_i23.AuthenticationService>(), get<_i20.UserRepository>()));
  gh.factory<_i31.RecommendedTutorsBloc>(
      () => _i31.RecommendedTutorsBloc(get<_i16.TutorRepository>()));
  gh.factory<_i32.ResetPasswordBloc>(
      () => _i32.ResetPasswordBloc(get<_i23.AuthenticationService>()));
  gh.factory<_i33.SearchTutorsBloc>(
      () => _i33.SearchTutorsBloc(get<_i16.TutorRepository>()));
  gh.factory<_i34.SignUpBloc>(
      () => _i34.SignUpBloc(get<_i23.AuthenticationService>()));
  gh.factory<_i35.TutorDetailsBloc>(
      () => _i35.TutorDetailsBloc(get<_i16.TutorRepository>()));
  gh.factory<_i36.AuthenticationBloc>(
      () => _i36.AuthenticationBloc(get<_i23.AuthenticationService>()));
  return get;
}

class _$AppInjectableModule extends _i37.AppInjectableModule {}
