// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'dart:typed_data' as _i8;

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;

import '../../../domain/course_ebook/models/course_topic.dart' as _i4;
import '../../../domain/course_ebook/models/ebook.dart' as _i6;
import '../../../domain/schedule/models/appointment.dart' as _i7;
import '../../../domain/tutor/models/tutor.dart' as _i5;
import '../../all_pages.dart' as _i1;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
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
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<CourseDetailsRouteArgs>(
          orElse: () => CourseDetailsRouteArgs(
              courseId: pathParams.getString('courseId')));
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i1.CourseDetailsPage(
              key: args.key,
              courseId: args.courseId,
              thumbnail: args.thumbnail));
    },
    CourseSyllabusRoute.name: (routeData) {
      final args = routeData.argsAs<CourseSyllabusRouteArgs>();
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i1.CourseSyllabusPage(key: args.key, item: args.item));
    },
    TutorReviewRoute.name: (routeData) {
      final args = routeData.argsAs<TutorReviewRouteArgs>();
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i1.TutorReviewPage(
              key: args.key, tutorId: args.tutorId, tutor: args.tutor));
    },
    MessageDetailsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<MessageDetailsRouteArgs>(
          orElse: () => MessageDetailsRouteArgs(
              tutorId: pathParams.getString('tutorId')));
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i1.MessageDetailsPage(key: args.key, tutorId: args.tutorId));
    },
    HistoryRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HistoryPage());
    },
    EbookDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<EbookDetailsRouteArgs>();
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i1.EbookDetailsPage(key: args.key, ebook: args.ebook));
    },
    TutorScheduleRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<TutorScheduleRouteArgs>(
          orElse: () =>
              TutorScheduleRouteArgs(tutorId: pathParams.getString('tutorId')));
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i1.TutorSchedulePage(key: args.key, tutorId: args.tutorId));
    },
    MeetingRoute.name: (routeData) {
      final args = routeData.argsAs<MeetingRouteArgs>(
          orElse: () => const MeetingRouteArgs());
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i1.MeetingPage(key: args.key, appointment: args.appointment));
    },
    SettingsUnauthorizedRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SettingsUnauthorizedPage());
    },
    CourseSyllabusPreviewRoute.name: (routeData) {
      final args = routeData.argsAs<CourseSyllabusPreviewRouteArgs>();
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i1.CourseSyllabusPreviewPage(
              key: args.key,
              item: args.item,
              pdf: args.pdf,
              initialPage: args.initialPage));
    },
    FavouriteTutorsRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.FavouriteTutorsPage());
    },
    ScheduleDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<ScheduleDetailsRouteArgs>();
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i1.ScheduleDetailsPage(
              key: args.key, appointment: args.appointment));
    },
    VerifyAccountRoute.name: (routeData) {
      final args = routeData.argsAs<VerifyAccountRouteArgs>();
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i1.VerifyAccountPage(key: args.key, uri: args.uri),
          fullscreenDialog: true);
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
        _i2.RouteConfig(SplashRoute.name, path: '/'),
        _i2.RouteConfig(LoginRoute.name, path: '/login-page'),
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
        _i2.RouteConfig(HistoryRoute.name, path: '/history-page'),
        _i2.RouteConfig(EbookDetailsRoute.name, path: '/ebooks/:ebookId'),
        _i2.RouteConfig(TutorScheduleRoute.name,
            path: '/tutors/:tutorId/schedule'),
        _i2.RouteConfig(MeetingRoute.name, path: '/meeting/:meetingId'),
        _i2.RouteConfig(SettingsUnauthorizedRoute.name,
            path: '/settings-unauthorized-page'),
        _i2.RouteConfig(CourseSyllabusPreviewRoute.name,
            path: '/course-syllabus-preview-page'),
        _i2.RouteConfig(FavouriteTutorsRoute.name,
            path: '/favourite-tutors-page'),
        _i2.RouteConfig(ScheduleDetailsRoute.name,
            path: '/schedule-details-page'),
        _i2.RouteConfig(VerifyAccountRoute.name, path: '/verify')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i2.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i2.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login-page');

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
  TutorDetailsRoute({_i3.Key? key, required String tutorId})
      : super(TutorDetailsRoute.name,
            path: '/tutors/:tutorId',
            args: TutorDetailsRouteArgs(key: key, tutorId: tutorId),
            rawPathParams: {'tutorId': tutorId});

  static const String name = 'TutorDetailsRoute';
}

class TutorDetailsRouteArgs {
  const TutorDetailsRouteArgs({this.key, required this.tutorId});

  final _i3.Key? key;

  final String tutorId;

  @override
  String toString() {
    return 'TutorDetailsRouteArgs{key: $key, tutorId: $tutorId}';
  }
}

/// generated route for
/// [_i1.CourseDetailsPage]
class CourseDetailsRoute extends _i2.PageRouteInfo<CourseDetailsRouteArgs> {
  CourseDetailsRoute(
      {_i3.Key? key, required String courseId, String? thumbnail})
      : super(CourseDetailsRoute.name,
            path: '/courses/:courseId',
            args: CourseDetailsRouteArgs(
                key: key, courseId: courseId, thumbnail: thumbnail),
            rawPathParams: {'courseId': courseId});

  static const String name = 'CourseDetailsRoute';
}

class CourseDetailsRouteArgs {
  const CourseDetailsRouteArgs(
      {this.key, required this.courseId, this.thumbnail});

  final _i3.Key? key;

  final String courseId;

  final String? thumbnail;

  @override
  String toString() {
    return 'CourseDetailsRouteArgs{key: $key, courseId: $courseId, thumbnail: $thumbnail}';
  }
}

/// generated route for
/// [_i1.CourseSyllabusPage]
class CourseSyllabusRoute extends _i2.PageRouteInfo<CourseSyllabusRouteArgs> {
  CourseSyllabusRoute({_i3.Key? key, required _i4.CourseTopic item})
      : super(CourseSyllabusRoute.name,
            path: '/courses/syllabus/:courseId/:chapterId',
            args: CourseSyllabusRouteArgs(key: key, item: item));

  static const String name = 'CourseSyllabusRoute';
}

class CourseSyllabusRouteArgs {
  const CourseSyllabusRouteArgs({this.key, required this.item});

  final _i3.Key? key;

  final _i4.CourseTopic item;

  @override
  String toString() {
    return 'CourseSyllabusRouteArgs{key: $key, item: $item}';
  }
}

/// generated route for
/// [_i1.TutorReviewPage]
class TutorReviewRoute extends _i2.PageRouteInfo<TutorReviewRouteArgs> {
  TutorReviewRoute(
      {_i3.Key? key, required String tutorId, required _i5.Tutor tutor})
      : super(TutorReviewRoute.name,
            path: '/tutors/:tutorId/reviews',
            args:
                TutorReviewRouteArgs(key: key, tutorId: tutorId, tutor: tutor),
            rawPathParams: {'tutorId': tutorId});

  static const String name = 'TutorReviewRoute';
}

class TutorReviewRouteArgs {
  const TutorReviewRouteArgs(
      {this.key, required this.tutorId, required this.tutor});

  final _i3.Key? key;

  final String tutorId;

  final _i5.Tutor tutor;

  @override
  String toString() {
    return 'TutorReviewRouteArgs{key: $key, tutorId: $tutorId, tutor: $tutor}';
  }
}

/// generated route for
/// [_i1.MessageDetailsPage]
class MessageDetailsRoute extends _i2.PageRouteInfo<MessageDetailsRouteArgs> {
  MessageDetailsRoute({_i3.Key? key, required String tutorId})
      : super(MessageDetailsRoute.name,
            path: '/tutors/:tutorId/message',
            args: MessageDetailsRouteArgs(key: key, tutorId: tutorId),
            rawPathParams: {'tutorId': tutorId});

  static const String name = 'MessageDetailsRoute';
}

class MessageDetailsRouteArgs {
  const MessageDetailsRouteArgs({this.key, required this.tutorId});

  final _i3.Key? key;

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
/// [_i1.EbookDetailsPage]
class EbookDetailsRoute extends _i2.PageRouteInfo<EbookDetailsRouteArgs> {
  EbookDetailsRoute({_i3.Key? key, required _i6.Ebook ebook})
      : super(EbookDetailsRoute.name,
            path: '/ebooks/:ebookId',
            args: EbookDetailsRouteArgs(key: key, ebook: ebook));

  static const String name = 'EbookDetailsRoute';
}

class EbookDetailsRouteArgs {
  const EbookDetailsRouteArgs({this.key, required this.ebook});

  final _i3.Key? key;

  final _i6.Ebook ebook;

  @override
  String toString() {
    return 'EbookDetailsRouteArgs{key: $key, ebook: $ebook}';
  }
}

/// generated route for
/// [_i1.TutorSchedulePage]
class TutorScheduleRoute extends _i2.PageRouteInfo<TutorScheduleRouteArgs> {
  TutorScheduleRoute({_i3.Key? key, required String tutorId})
      : super(TutorScheduleRoute.name,
            path: '/tutors/:tutorId/schedule',
            args: TutorScheduleRouteArgs(key: key, tutorId: tutorId),
            rawPathParams: {'tutorId': tutorId});

  static const String name = 'TutorScheduleRoute';
}

class TutorScheduleRouteArgs {
  const TutorScheduleRouteArgs({this.key, required this.tutorId});

  final _i3.Key? key;

  final String tutorId;

  @override
  String toString() {
    return 'TutorScheduleRouteArgs{key: $key, tutorId: $tutorId}';
  }
}

/// generated route for
/// [_i1.MeetingPage]
class MeetingRoute extends _i2.PageRouteInfo<MeetingRouteArgs> {
  MeetingRoute({_i3.Key? key, _i7.Appointment? appointment})
      : super(MeetingRoute.name,
            path: '/meeting/:meetingId',
            args: MeetingRouteArgs(key: key, appointment: appointment));

  static const String name = 'MeetingRoute';
}

class MeetingRouteArgs {
  const MeetingRouteArgs({this.key, this.appointment});

  final _i3.Key? key;

  final _i7.Appointment? appointment;

  @override
  String toString() {
    return 'MeetingRouteArgs{key: $key, appointment: $appointment}';
  }
}

/// generated route for
/// [_i1.SettingsUnauthorizedPage]
class SettingsUnauthorizedRoute extends _i2.PageRouteInfo<void> {
  const SettingsUnauthorizedRoute()
      : super(SettingsUnauthorizedRoute.name,
            path: '/settings-unauthorized-page');

  static const String name = 'SettingsUnauthorizedRoute';
}

/// generated route for
/// [_i1.CourseSyllabusPreviewPage]
class CourseSyllabusPreviewRoute
    extends _i2.PageRouteInfo<CourseSyllabusPreviewRouteArgs> {
  CourseSyllabusPreviewRoute(
      {_i3.Key? key,
      required _i4.CourseTopic item,
      required _i8.Uint8List pdf,
      int initialPage = 0})
      : super(CourseSyllabusPreviewRoute.name,
            path: '/course-syllabus-preview-page',
            args: CourseSyllabusPreviewRouteArgs(
                key: key, item: item, pdf: pdf, initialPage: initialPage));

  static const String name = 'CourseSyllabusPreviewRoute';
}

class CourseSyllabusPreviewRouteArgs {
  const CourseSyllabusPreviewRouteArgs(
      {this.key, required this.item, required this.pdf, this.initialPage = 0});

  final _i3.Key? key;

  final _i4.CourseTopic item;

  final _i8.Uint8List pdf;

  final int initialPage;

  @override
  String toString() {
    return 'CourseSyllabusPreviewRouteArgs{key: $key, item: $item, pdf: $pdf, initialPage: $initialPage}';
  }
}

/// generated route for
/// [_i1.FavouriteTutorsPage]
class FavouriteTutorsRoute extends _i2.PageRouteInfo<void> {
  const FavouriteTutorsRoute()
      : super(FavouriteTutorsRoute.name, path: '/favourite-tutors-page');

  static const String name = 'FavouriteTutorsRoute';
}

/// generated route for
/// [_i1.ScheduleDetailsPage]
class ScheduleDetailsRoute extends _i2.PageRouteInfo<ScheduleDetailsRouteArgs> {
  ScheduleDetailsRoute({_i3.Key? key, required _i7.Appointment appointment})
      : super(ScheduleDetailsRoute.name,
            path: '/schedule-details-page',
            args: ScheduleDetailsRouteArgs(key: key, appointment: appointment));

  static const String name = 'ScheduleDetailsRoute';
}

class ScheduleDetailsRouteArgs {
  const ScheduleDetailsRouteArgs({this.key, required this.appointment});

  final _i3.Key? key;

  final _i7.Appointment appointment;

  @override
  String toString() {
    return 'ScheduleDetailsRouteArgs{key: $key, appointment: $appointment}';
  }
}

/// generated route for
/// [_i1.VerifyAccountPage]
class VerifyAccountRoute extends _i2.PageRouteInfo<VerifyAccountRouteArgs> {
  VerifyAccountRoute({_i3.Key? key, required Uri uri})
      : super(VerifyAccountRoute.name,
            path: '/verify', args: VerifyAccountRouteArgs(key: key, uri: uri));

  static const String name = 'VerifyAccountRoute';
}

class VerifyAccountRouteArgs {
  const VerifyAccountRouteArgs({this.key, required this.uri});

  final _i3.Key? key;

  final Uri uri;

  @override
  String toString() {
    return 'VerifyAccountRouteArgs{key: $key, uri: $uri}';
  }
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
