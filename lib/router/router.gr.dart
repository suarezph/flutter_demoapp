// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../app.dart' as _i1;
import '../modules/intro/intro.dart' as _i2;
import '../modules/login/login.dart' as _i3;
import '../modules/login/screen/forgot_password_screen.dart' as _i4;
import '../modules/register/register.dart' as _i5;
import '../repositories/user_repository.dart' as _i8;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    AppScreen.name: (routeData) {
      final args = routeData.argsAs<AppScreenArgs>();
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i1.AppScreen(
              key: args.key, userRepository: args.userRepository));
    },
    IntroRouter.name: (routeData) {
      final args = routeData.argsAs<IntroRouterArgs>();
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.IntroScreen(
              key: args.key, userRepository: args.userRepository));
    },
    LoginRouter.name: (routeData) {
      final args = routeData.argsAs<LoginRouterArgs>();
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.LoginScreen(
              key: args.key, userRepository: args.userRepository));
    },
    ForgotPasswordRouter.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.ForgotPasswordScreen());
    },
    RegistrationRouter.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.RegistrationScreen());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(AppScreen.name, path: '/'),
        _i6.RouteConfig(IntroRouter.name, path: '/intro'),
        _i6.RouteConfig(LoginRouter.name, path: '/login'),
        _i6.RouteConfig(ForgotPasswordRouter.name, path: '/forgot'),
        _i6.RouteConfig(RegistrationRouter.name, path: '/register')
      ];
}

/// generated route for
/// [_i1.AppScreen]
class AppScreen extends _i6.PageRouteInfo<AppScreenArgs> {
  AppScreen({_i7.Key? key, required _i8.UserRepository userRepository})
      : super(AppScreen.name,
            path: '/',
            args: AppScreenArgs(key: key, userRepository: userRepository));

  static const String name = 'AppScreen';
}

class AppScreenArgs {
  const AppScreenArgs({this.key, required this.userRepository});

  final _i7.Key? key;

  final _i8.UserRepository userRepository;

  @override
  String toString() {
    return 'AppScreenArgs{key: $key, userRepository: $userRepository}';
  }
}

/// generated route for
/// [_i2.IntroScreen]
class IntroRouter extends _i6.PageRouteInfo<IntroRouterArgs> {
  IntroRouter({_i7.Key? key, required _i8.UserRepository userRepository})
      : super(IntroRouter.name,
            path: '/intro',
            args: IntroRouterArgs(key: key, userRepository: userRepository));

  static const String name = 'IntroRouter';
}

class IntroRouterArgs {
  const IntroRouterArgs({this.key, required this.userRepository});

  final _i7.Key? key;

  final _i8.UserRepository userRepository;

  @override
  String toString() {
    return 'IntroRouterArgs{key: $key, userRepository: $userRepository}';
  }
}

/// generated route for
/// [_i3.LoginScreen]
class LoginRouter extends _i6.PageRouteInfo<LoginRouterArgs> {
  LoginRouter({_i7.Key? key, required _i8.UserRepository userRepository})
      : super(LoginRouter.name,
            path: '/login',
            args: LoginRouterArgs(key: key, userRepository: userRepository));

  static const String name = 'LoginRouter';
}

class LoginRouterArgs {
  const LoginRouterArgs({this.key, required this.userRepository});

  final _i7.Key? key;

  final _i8.UserRepository userRepository;

  @override
  String toString() {
    return 'LoginRouterArgs{key: $key, userRepository: $userRepository}';
  }
}

/// generated route for
/// [_i4.ForgotPasswordScreen]
class ForgotPasswordRouter extends _i6.PageRouteInfo<void> {
  const ForgotPasswordRouter()
      : super(ForgotPasswordRouter.name, path: '/forgot');

  static const String name = 'ForgotPasswordRouter';
}

/// generated route for
/// [_i5.RegistrationScreen]
class RegistrationRouter extends _i6.PageRouteInfo<void> {
  const RegistrationRouter()
      : super(RegistrationRouter.name, path: '/register');

  static const String name = 'RegistrationRouter';
}
