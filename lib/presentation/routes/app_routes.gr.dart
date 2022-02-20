// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../authentication/login/login_by_phone_page.dart' as _i2;
import '../authentication/login/login_page.dart' as _i1;
import '../authentication/reset_password/reset_password_page.dart' as _i5;
import '../authentication/sign_up/sign_up_by_phone_page.dart' as _i4;
import '../authentication/sign_up/sign_up_page.dart' as _i3;
import '../home/home_page.dart' as _i6;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.LoginPage());
    },
    LoginByPhoneRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.LoginByPhonePage());
    },
    SignUpRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SignUpPage());
    },
    SignUpByPhoneRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.SignUpByPhonePage());
    },
    ResetPasswordRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.ResetPasswordPage());
    },
    HomeRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.HomePage());
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(LoginRoute.name, path: '/'),
        _i7.RouteConfig(LoginByPhoneRoute.name, path: '/login-by-phone-page'),
        _i7.RouteConfig(SignUpRoute.name, path: '/sign-up-page'),
        _i7.RouteConfig(SignUpByPhoneRoute.name,
            path: '/sign-up-by-phone-page'),
        _i7.RouteConfig(ResetPasswordRoute.name, path: '/reset-password-page'),
        _i7.RouteConfig(HomeRoute.name, path: '/home-page')
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i7.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i2.LoginByPhonePage]
class LoginByPhoneRoute extends _i7.PageRouteInfo<void> {
  const LoginByPhoneRoute()
      : super(LoginByPhoneRoute.name, path: '/login-by-phone-page');

  static const String name = 'LoginByPhoneRoute';
}

/// generated route for
/// [_i3.SignUpPage]
class SignUpRoute extends _i7.PageRouteInfo<void> {
  const SignUpRoute() : super(SignUpRoute.name, path: '/sign-up-page');

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i4.SignUpByPhonePage]
class SignUpByPhoneRoute extends _i7.PageRouteInfo<void> {
  const SignUpByPhoneRoute()
      : super(SignUpByPhoneRoute.name, path: '/sign-up-by-phone-page');

  static const String name = 'SignUpByPhoneRoute';
}

/// generated route for
/// [_i5.ResetPasswordPage]
class ResetPasswordRoute extends _i7.PageRouteInfo<void> {
  const ResetPasswordRoute()
      : super(ResetPasswordRoute.name, path: '/reset-password-page');

  static const String name = 'ResetPasswordRoute';
}

/// generated route for
/// [_i6.HomePage]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/home-page');

  static const String name = 'HomeRoute';
}
