// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../authentication/login/login_by_phone_page.dart' as _i2;
import '../authentication/login/login_page.dart' as _i1;
import '../authentication/sign_up/sign_up_by_phone_page.dart' as _i4;
import '../authentication/sign_up/sign_up_page.dart' as _i3;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.LoginPage());
    },
    LoginByPhoneRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.LoginByPhonePage());
    },
    SignUpRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SignUpPage());
    },
    SignUpByPhoneRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.SignUpByPhonePage());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(LoginRoute.name, path: '/'),
        _i5.RouteConfig(LoginByPhoneRoute.name, path: '/login-by-phone-page'),
        _i5.RouteConfig(SignUpRoute.name, path: '/sign-up-page'),
        _i5.RouteConfig(SignUpByPhoneRoute.name, path: '/sign-up-by-phone-page')
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i5.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i2.LoginByPhonePage]
class LoginByPhoneRoute extends _i5.PageRouteInfo<void> {
  const LoginByPhoneRoute()
      : super(LoginByPhoneRoute.name, path: '/login-by-phone-page');

  static const String name = 'LoginByPhoneRoute';
}

/// generated route for
/// [_i3.SignUpPage]
class SignUpRoute extends _i5.PageRouteInfo<void> {
  const SignUpRoute() : super(SignUpRoute.name, path: '/sign-up-page');

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i4.SignUpByPhonePage]
class SignUpByPhoneRoute extends _i5.PageRouteInfo<void> {
  const SignUpByPhoneRoute()
      : super(SignUpByPhoneRoute.name, path: '/sign-up-by-phone-page');

  static const String name = 'SignUpByPhoneRoute';
}
