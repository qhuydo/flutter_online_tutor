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
    DashboardRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.DashboardPage());
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
    },
    ProfileRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.ProfilePage());
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
          _i2.RouteConfig(CourseRoute.name,
              path: 'course-page', parent: HomeRoute.name),
          _i2.RouteConfig(ScheduleRoute.name,
              path: 'schedule-page', parent: HomeRoute.name),
          _i2.RouteConfig(MessageRoute.name,
              path: 'message-page', parent: HomeRoute.name),
          _i2.RouteConfig(ProfileRoute.name,
              path: 'profile-page', parent: HomeRoute.name)
        ])
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
/// [_i1.DashboardPage]
class DashboardRoute extends _i2.PageRouteInfo<void> {
  const DashboardRoute() : super(DashboardRoute.name, path: 'dashboard-page');

  static const String name = 'DashboardRoute';
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

/// generated route for
/// [_i1.ProfilePage]
class ProfileRoute extends _i2.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: 'profile-page');

  static const String name = 'ProfileRoute';
}
