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
import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/material.dart' as _i14;

import '../app.dart' as _i1;
import '../modules/dashboard/screen/dashboard_screen.dart' as _i7;
import '../modules/intro/intro.dart' as _i2;
import '../modules/login/login.dart' as _i3;
import '../modules/login/screen/forgot_password_screen.dart' as _i4;
import '../modules/main/screen/main_screen.dart' as _i6;
import '../modules/others/others.dart' as _i10;
import '../modules/profile/profile.dart' as _i9;
import '../modules/register/register.dart' as _i5;
import '../modules/reports/screen/initial_report_screen.dart' as _i12;
import '../modules/reports/screen/main_reports.dart' as _i11;
import '../modules/wallet/screen/wallet_screen.dart' as _i8;
import '../repositories/user_repository.dart' as _i15;

class AppRouter extends _i13.RootStackRouter {
  AppRouter([_i14.GlobalKey<_i14.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    AppRootRoute.name: (routeData) {
      final args = routeData.argsAs<AppRootRouteArgs>();
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i1.AppRootScreen(
              key: args.key, userRepository: args.userRepository));
    },
    IntroRoute.name: (routeData) {
      final args = routeData.argsAs<IntroRouteArgs>();
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.IntroScreen(
              key: args.key, userRepository: args.userRepository));
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>();
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.LoginScreen(
              key: args.key, userRepository: args.userRepository));
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.ForgotPasswordScreen());
    },
    RegistrationRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.RegistrationScreen());
    },
    MainRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.MainScreen());
    },
    DashboardRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.DashboardScreen());
    },
    WalletRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.WalletScreen());
    },
    ProfileRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.ProfileScreen());
    },
    OthersRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.OthersScreen());
    },
    MainReportRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.MainReportScreen());
    },
    InitialReportRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.InitialReportScreen());
    }
  };

  @override
  List<_i13.RouteConfig> get routes => [
        _i13.RouteConfig(AppRootRoute.name, path: '/', children: [
          _i13.RouteConfig(MainRoute.name,
              path: 'main', parent: AppRootRoute.name),
          _i13.RouteConfig(DashboardRoute.name,
              path: 'dashboard', parent: AppRootRoute.name),
          _i13.RouteConfig(WalletRoute.name,
              path: 'wallet', parent: AppRootRoute.name),
          _i13.RouteConfig(ProfileRoute.name,
              path: 'profile', parent: AppRootRoute.name),
          _i13.RouteConfig(OthersRoute.name,
              path: 'others',
              parent: AppRootRoute.name,
              children: [
                _i13.RouteConfig(MainReportRoute.name,
                    path: 'reports', parent: OthersRoute.name),
                _i13.RouteConfig(InitialReportRoute.name,
                    path: 'initial', parent: OthersRoute.name)
              ])
        ]),
        _i13.RouteConfig(IntroRoute.name, path: 'intro'),
        _i13.RouteConfig(LoginRoute.name, path: 'login'),
        _i13.RouteConfig(ForgotPasswordRoute.name, path: 'forgot'),
        _i13.RouteConfig(RegistrationRoute.name, path: 'register')
      ];
}

/// generated route for
/// [_i1.AppRootScreen]
class AppRootRoute extends _i13.PageRouteInfo<AppRootRouteArgs> {
  AppRootRoute(
      {_i14.Key? key,
      required _i15.UserRepository userRepository,
      List<_i13.PageRouteInfo>? children})
      : super(AppRootRoute.name,
            path: '/',
            args: AppRootRouteArgs(key: key, userRepository: userRepository),
            initialChildren: children);

  static const String name = 'AppRootRoute';
}

class AppRootRouteArgs {
  const AppRootRouteArgs({this.key, required this.userRepository});

  final _i14.Key? key;

  final _i15.UserRepository userRepository;

  @override
  String toString() {
    return 'AppRootRouteArgs{key: $key, userRepository: $userRepository}';
  }
}

/// generated route for
/// [_i2.IntroScreen]
class IntroRoute extends _i13.PageRouteInfo<IntroRouteArgs> {
  IntroRoute({_i14.Key? key, required _i15.UserRepository userRepository})
      : super(IntroRoute.name,
            path: 'intro',
            args: IntroRouteArgs(key: key, userRepository: userRepository));

  static const String name = 'IntroRoute';
}

class IntroRouteArgs {
  const IntroRouteArgs({this.key, required this.userRepository});

  final _i14.Key? key;

  final _i15.UserRepository userRepository;

  @override
  String toString() {
    return 'IntroRouteArgs{key: $key, userRepository: $userRepository}';
  }
}

/// generated route for
/// [_i3.LoginScreen]
class LoginRoute extends _i13.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({_i14.Key? key, required _i15.UserRepository userRepository})
      : super(LoginRoute.name,
            path: 'login',
            args: LoginRouteArgs(key: key, userRepository: userRepository));

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key, required this.userRepository});

  final _i14.Key? key;

  final _i15.UserRepository userRepository;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, userRepository: $userRepository}';
  }
}

/// generated route for
/// [_i4.ForgotPasswordScreen]
class ForgotPasswordRoute extends _i13.PageRouteInfo<void> {
  const ForgotPasswordRoute() : super(ForgotPasswordRoute.name, path: 'forgot');

  static const String name = 'ForgotPasswordRoute';
}

/// generated route for
/// [_i5.RegistrationScreen]
class RegistrationRoute extends _i13.PageRouteInfo<void> {
  const RegistrationRoute() : super(RegistrationRoute.name, path: 'register');

  static const String name = 'RegistrationRoute';
}

/// generated route for
/// [_i6.MainScreen]
class MainRoute extends _i13.PageRouteInfo<void> {
  const MainRoute() : super(MainRoute.name, path: 'main');

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i7.DashboardScreen]
class DashboardRoute extends _i13.PageRouteInfo<void> {
  const DashboardRoute() : super(DashboardRoute.name, path: 'dashboard');

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i8.WalletScreen]
class WalletRoute extends _i13.PageRouteInfo<void> {
  const WalletRoute() : super(WalletRoute.name, path: 'wallet');

  static const String name = 'WalletRoute';
}

/// generated route for
/// [_i9.ProfileScreen]
class ProfileRoute extends _i13.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: 'profile');

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i10.OthersScreen]
class OthersRoute extends _i13.PageRouteInfo<void> {
  const OthersRoute({List<_i13.PageRouteInfo>? children})
      : super(OthersRoute.name, path: 'others', initialChildren: children);

  static const String name = 'OthersRoute';
}

/// generated route for
/// [_i11.MainReportScreen]
class MainReportRoute extends _i13.PageRouteInfo<void> {
  const MainReportRoute() : super(MainReportRoute.name, path: 'reports');

  static const String name = 'MainReportRoute';
}

/// generated route for
/// [_i12.InitialReportScreen]
class InitialReportRoute extends _i13.PageRouteInfo<void> {
  const InitialReportRoute() : super(InitialReportRoute.name, path: 'initial');

  static const String name = 'InitialReportRoute';
}
