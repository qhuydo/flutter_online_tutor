// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;

import '../common.dart' as _i4;
import '../pages.dart' as _i1;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.LoginPage());
    },
    LoginByPhoneRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.LoginByPhonePage());
    },
    SignUpRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SignUpPage());
    },
    SignUpByPhoneRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SignUpByPhonePage());
    },
    ResetPasswordRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.ResetPasswordPage());
    },
    HomeRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    SettingsRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SettingsPage());
    },
    ProfileRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.ProfilePage());
    },
    ChangePasswordRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.ChangePasswordPage());
    },
    BecomeTutorRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.BecomeTutorPage());
    },
    TutorDetailsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<TutorDetailsRouteArgs>(
          orElse: () =>
              TutorDetailsRouteArgs(tutorId: pathParams.getString('tutorId')));
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i1.TutorDetailsPage(key: args.key, tutorId: args.tutorId));
    },
    CourseDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<CourseDetailsRouteArgs>();
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i1.CourseDetailsPage(key: args.key, courseId: args.courseId));
    },
    CourseSyllabusRoute.name: (routeData) {
      final args = routeData.argsAs<CourseSyllabusRouteArgs>();
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i1.CourseSyllabusPage(
              key: args.key,
              courseId: args.courseId,
              chapterId: args.chapterId));
    },
    TutorReviewRoute.name: (routeData) {
      final args = routeData.argsAs<TutorReviewRouteArgs>();
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i1.TutorReviewPage(key: args.key, tutorId: args.tutorId));
    },
    MessageDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<MessageDetailsRouteArgs>();
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i1.MessageDetailsPage(key: args.key, tutorId: args.tutorId));
    },
    HistoryRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HistoryPage());
    },
    DashboardRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.DashboardPage());
    },
    TutorRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.TutorPage());
    },
    CourseRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.CoursePage());
    },
    ScheduleRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SchedulePage());
    },
    MessageRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MessagePage());
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(LoginRoute.name, path: '/'),
        _i2.RouteConfig(LoginByPhoneRoute.name, path: '/login-by-phone-page'),
        _i2.RouteConfig(SignUpRoute.name, path: '/sign-up-page'),
        _i2.RouteConfig(SignUpByPhoneRoute.name,
            path: '/sign-up-by-phone-page'),
        _i2.RouteConfig(ResetPasswordRoute.name, path: '/reset-password-page'),
        _i2.RouteConfig(HomeRoute.name, path: '/home-page', children: [
          _i2.RouteConfig(DashboardRoute.name,
              path: 'dashboard-page', parent: HomeRoute.name),
          _i2.RouteConfig(TutorRoute.name,
              path: 'tutor-page', parent: HomeRoute.name),
          _i2.RouteConfig(CourseRoute.name,
              path: 'course-page', parent: HomeRoute.name),
          _i2.RouteConfig(ScheduleRoute.name,
              path: 'schedule-page', parent: HomeRoute.name),
          _i2.RouteConfig(MessageRoute.name,
              path: 'message-page', parent: HomeRoute.name)
        ]),
        _i2.RouteConfig(SettingsRoute.name, path: '/settings-page'),
        _i2.RouteConfig(ProfileRoute.name, path: '/profile-page'),
        _i2.RouteConfig(ChangePasswordRoute.name,
            path: '/change-password-page'),
        _i2.RouteConfig(BecomeTutorRoute.name, path: '/become-tutor-page'),
        _i2.RouteConfig(TutorDetailsRoute.name, path: '/tutors/:tutorId'),
        _i2.RouteConfig(CourseDetailsRoute.name, path: '/courses/:courseId'),
        _i2.RouteConfig(CourseSyllabusRoute.name,
            path: '/courses/syllabus/:courseId/:chapterId'),
        _i2.RouteConfig(TutorReviewRoute.name,
            path: '/tutors/:tutorId/reviews'),
        _i2.RouteConfig(MessageDetailsRoute.name,
            path: '/tutors/:tutorId/message'),
        _i2.RouteConfig(HistoryRoute.name, path: '/history-page')
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i2.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i1.LoginByPhonePage]
class LoginByPhoneRoute extends _i2.PageRouteInfo<void> {
  const LoginByPhoneRoute()
      : super(LoginByPhoneRoute.name, path: '/login-by-phone-page');

  static const String name = 'LoginByPhoneRoute';
}

/// generated route for
/// [_i1.SignUpPage]
class SignUpRoute extends _i2.PageRouteInfo<void> {
  const SignUpRoute() : super(SignUpRoute.name, path: '/sign-up-page');

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i1.SignUpByPhonePage]
class SignUpByPhoneRoute extends _i2.PageRouteInfo<void> {
  const SignUpByPhoneRoute()
      : super(SignUpByPhoneRoute.name, path: '/sign-up-by-phone-page');

  static const String name = 'SignUpByPhoneRoute';
}

/// generated route for
/// [_i1.ResetPasswordPage]
class ResetPasswordRoute extends _i2.PageRouteInfo<void> {
  const ResetPasswordRoute()
      : super(ResetPasswordRoute.name, path: '/reset-password-page');

  static const String name = 'ResetPasswordRoute';
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i2.PageRouteInfo<void> {
  const HomeRoute({List<_i2.PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/home-page', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i1.SettingsPage]
class SettingsRoute extends _i2.PageRouteInfo<void> {
  const SettingsRoute() : super(SettingsRoute.name, path: '/settings-page');

  static const String name = 'SettingsRoute';
}

/// generated route for
/// [_i1.ProfilePage]
class ProfileRoute extends _i2.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: '/profile-page');

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i1.ChangePasswordPage]
class ChangePasswordRoute extends _i2.PageRouteInfo<void> {
  const ChangePasswordRoute()
      : super(ChangePasswordRoute.name, path: '/change-password-page');

  static const String name = 'ChangePasswordRoute';
}

/// generated route for
/// [_i1.BecomeTutorPage]
class BecomeTutorRoute extends _i2.PageRouteInfo<void> {
  const BecomeTutorRoute()
      : super(BecomeTutorRoute.name, path: '/become-tutor-page');

  static const String name = 'BecomeTutorRoute';
}

/// generated route for
/// [_i1.TutorDetailsPage]
class TutorDetailsRoute extends _i2.PageRouteInfo<TutorDetailsRouteArgs> {
  TutorDetailsRoute({_i4.Key? key, required String tutorId})
      : super(TutorDetailsRoute.name,
            path: '/tutors/:tutorId',
            args: TutorDetailsRouteArgs(key: key, tutorId: tutorId),
            rawPathParams: {'tutorId': tutorId});

  static const String name = 'TutorDetailsRoute';
}

class TutorDetailsRouteArgs {
  const TutorDetailsRouteArgs({this.key, required this.tutorId});

  final _i4.Key? key;

  final String tutorId;

  @override
  String toString() {
    return 'TutorDetailsRouteArgs{key: $key, tutorId: $tutorId}';
  }
}

/// generated route for
/// [_i1.CourseDetailsPage]
class CourseDetailsRoute extends _i2.PageRouteInfo<CourseDetailsRouteArgs> {
  CourseDetailsRoute({_i4.Key? key, required String courseId})
      : super(CourseDetailsRoute.name,
            path: '/courses/:courseId',
            args: CourseDetailsRouteArgs(key: key, courseId: courseId));

  static const String name = 'CourseDetailsRoute';
}

class CourseDetailsRouteArgs {
  const CourseDetailsRouteArgs({this.key, required this.courseId});

  final _i4.Key? key;

  final String courseId;

  @override
  String toString() {
    return 'CourseDetailsRouteArgs{key: $key, courseId: $courseId}';
  }
}

/// generated route for
/// [_i1.CourseSyllabusPage]
class CourseSyllabusRoute extends _i2.PageRouteInfo<CourseSyllabusRouteArgs> {
  CourseSyllabusRoute(
      {_i4.Key? key, required String courseId, required int chapterId})
      : super(CourseSyllabusRoute.name,
            path: '/courses/syllabus/:courseId/:chapterId',
            args: CourseSyllabusRouteArgs(
                key: key, courseId: courseId, chapterId: chapterId));

  static const String name = 'CourseSyllabusRoute';
}

class CourseSyllabusRouteArgs {
  const CourseSyllabusRouteArgs(
      {this.key, required this.courseId, required this.chapterId});

  final _i4.Key? key;

  final String courseId;

  final int chapterId;

  @override
  String toString() {
    return 'CourseSyllabusRouteArgs{key: $key, courseId: $courseId, chapterId: $chapterId}';
  }
}

/// generated route for
/// [_i1.TutorReviewPage]
class TutorReviewRoute extends _i2.PageRouteInfo<TutorReviewRouteArgs> {
  TutorReviewRoute({_i4.Key? key, required String tutorId})
      : super(TutorReviewRoute.name,
            path: '/tutors/:tutorId/reviews',
            args: TutorReviewRouteArgs(key: key, tutorId: tutorId));

  static const String name = 'TutorReviewRoute';
}

class TutorReviewRouteArgs {
  const TutorReviewRouteArgs({this.key, required this.tutorId});

  final _i4.Key? key;

  final String tutorId;

  @override
  String toString() {
    return 'TutorReviewRouteArgs{key: $key, tutorId: $tutorId}';
  }
}

/// generated route for
/// [_i1.MessageDetailsPage]
class MessageDetailsRoute extends _i2.PageRouteInfo<MessageDetailsRouteArgs> {
  MessageDetailsRoute({_i4.Key? key, required String tutorId})
      : super(MessageDetailsRoute.name,
            path: '/tutors/:tutorId/message',
            args: MessageDetailsRouteArgs(key: key, tutorId: tutorId));

  static const String name = 'MessageDetailsRoute';
}

class MessageDetailsRouteArgs {
  const MessageDetailsRouteArgs({this.key, required this.tutorId});

  final _i4.Key? key;

  final String tutorId;

  @override
  String toString() {
    return 'MessageDetailsRouteArgs{key: $key, tutorId: $tutorId}';
  }
}

/// generated route for
/// [_i1.HistoryPage]
class HistoryRoute extends _i2.PageRouteInfo<void> {
  const HistoryRoute() : super(HistoryRoute.name, path: '/history-page');

  static const String name = 'HistoryRoute';
}

/// generated route for
/// [_i1.DashboardPage]
class DashboardRoute extends _i2.PageRouteInfo<void> {
  const DashboardRoute() : super(DashboardRoute.name, path: 'dashboard-page');

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i1.TutorPage]
class TutorRoute extends _i2.PageRouteInfo<void> {
  const TutorRoute() : super(TutorRoute.name, path: 'tutor-page');

  static const String name = 'TutorRoute';
}

/// generated route for
/// [_i1.CoursePage]
class CourseRoute extends _i2.PageRouteInfo<void> {
  const CourseRoute() : super(CourseRoute.name, path: 'course-page');

  static const String name = 'CourseRoute';
}

/// generated route for
/// [_i1.SchedulePage]
class ScheduleRoute extends _i2.PageRouteInfo<void> {
  const ScheduleRoute() : super(ScheduleRoute.name, path: 'schedule-page');

  static const String name = 'ScheduleRoute';
}

/// generated route for
/// [_i1.MessagePage]
class MessageRoute extends _i2.PageRouteInfo<void> {
  const MessageRoute() : super(MessageRoute.name, path: 'message-page');

  static const String name = 'MessageRoute';
}
