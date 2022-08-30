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
import 'package:auto_route/auto_route.dart' as _i16;
import 'package:auto_route/empty_router_widgets.dart' as _i10;
import 'package:flutter/material.dart' as _i17;

import '../app.dart' as _i1;
import '../modules/dashboard/screen/dashboard_screen.dart' as _i7;
import '../modules/intro/intro.dart' as _i6;
import '../modules/intro/screen/intro_content_screen.dart' as _i15;
import '../modules/login/login.dart' as _i14;
import '../modules/login/screen/forgot_password_screen.dart' as _i2;
import '../modules/main/screen/main_screen.dart' as _i5;
import '../modules/others/others.dart' as _i11;
import '../modules/profile/profile.dart' as _i9;
import '../modules/register/register.dart' as _i3;
import '../modules/reports/screen/initial_report_screen.dart' as _i13;
import '../modules/reports/screen/main_reports.dart' as _i12;
import '../modules/splash/splash.dart' as _i4;
import '../modules/wallet/screen/wallet_screen.dart' as _i8;

class AppRouter extends _i16.RootStackRouter {
  AppRouter([_i17.GlobalKey<_i17.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i16.PageFactory> pagesMap = {
    AppRootRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.AppRootScreen());
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.ForgotPasswordScreen());
    },
    RegistrationRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.RegistrationScreen());
    },
    SplashRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.SplashScreen());
    },
    MainRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.MainScreen());
    },
    IntroRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.IntroScreen());
    },
    DashboardRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.DashboardScreen());
    },
    WalletRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.WalletScreen());
    },
    ProfileRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.ProfileScreen());
    },
    OthersRouter.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.EmptyRouterScreen());
    },
    OthersRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.OthersScreen());
    },
    MainReportRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.MainReportScreen());
    },
    InitialReportRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.InitialReportScreen());
    },
    LoginRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.LoginScreen());
    },
    IntroContentRoute.name: (routeData) {
      final args = routeData.argsAs<IntroContentRouteArgs>();
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i15.IntroContentScreen(
              key: args.key, afterIntroComplete: args.afterIntroComplete));
    }
  };

  @override
  List<_i16.RouteConfig> get routes => [
        _i16.RouteConfig(AppRootRoute.name, path: '/', children: [
          _i16.RouteConfig(SplashRoute.name,
              path: 'splash', parent: AppRootRoute.name),
          _i16.RouteConfig(MainRoute.name,
              path: 'main-screen',
              parent: AppRootRoute.name,
              children: [
                _i16.RouteConfig(DashboardRoute.name,
                    path: 'dashboard', parent: MainRoute.name),
                _i16.RouteConfig(WalletRoute.name,
                    path: 'wallet', parent: MainRoute.name),
                _i16.RouteConfig(ProfileRoute.name,
                    path: 'profile', parent: MainRoute.name),
                _i16.RouteConfig(OthersRouter.name,
                    path: 'others',
                    parent: MainRoute.name,
                    children: [
                      _i16.RouteConfig(OthersRoute.name,
                          path: '', parent: OthersRouter.name),
                      _i16.RouteConfig(MainReportRoute.name,
                          path: 'reports', parent: OthersRouter.name),
                      _i16.RouteConfig(InitialReportRoute.name,
                          path: 'initial', parent: OthersRouter.name)
                    ])
              ]),
          _i16.RouteConfig(IntroRoute.name,
              path: 'intro',
              parent: AppRootRoute.name,
              children: [
                _i16.RouteConfig(LoginRoute.name,
                    path: 'login', parent: IntroRoute.name),
                _i16.RouteConfig(IntroContentRoute.name,
                    path: 'introcontent', parent: IntroRoute.name)
              ])
        ]),
        _i16.RouteConfig(ForgotPasswordRoute.name, path: 'forgot'),
        _i16.RouteConfig(RegistrationRoute.name, path: 'register')
      ];
}

/// generated route for
/// [_i1.AppRootScreen]
class AppRootRoute extends _i16.PageRouteInfo<void> {
  const AppRootRoute({List<_i16.PageRouteInfo>? children})
      : super(AppRootRoute.name, path: '/', initialChildren: children);

  static const String name = 'AppRootRoute';
}

/// generated route for
/// [_i2.ForgotPasswordScreen]
class ForgotPasswordRoute extends _i16.PageRouteInfo<void> {
  const ForgotPasswordRoute() : super(ForgotPasswordRoute.name, path: 'forgot');

  static const String name = 'ForgotPasswordRoute';
}

/// generated route for
/// [_i3.RegistrationScreen]
class RegistrationRoute extends _i16.PageRouteInfo<void> {
  const RegistrationRoute() : super(RegistrationRoute.name, path: 'register');

  static const String name = 'RegistrationRoute';
}

/// generated route for
/// [_i4.SplashScreen]
class SplashRoute extends _i16.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: 'splash');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i5.MainScreen]
class MainRoute extends _i16.PageRouteInfo<void> {
  const MainRoute({List<_i16.PageRouteInfo>? children})
      : super(MainRoute.name, path: 'main-screen', initialChildren: children);

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i6.IntroScreen]
class IntroRoute extends _i16.PageRouteInfo<void> {
  const IntroRoute({List<_i16.PageRouteInfo>? children})
      : super(IntroRoute.name, path: 'intro', initialChildren: children);

  static const String name = 'IntroRoute';
}

/// generated route for
/// [_i7.DashboardScreen]
class DashboardRoute extends _i16.PageRouteInfo<void> {
  const DashboardRoute() : super(DashboardRoute.name, path: 'dashboard');

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i8.WalletScreen]
class WalletRoute extends _i16.PageRouteInfo<void> {
  const WalletRoute() : super(WalletRoute.name, path: 'wallet');

  static const String name = 'WalletRoute';
}

/// generated route for
/// [_i9.ProfileScreen]
class ProfileRoute extends _i16.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: 'profile');

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i10.EmptyRouterScreen]
class OthersRouter extends _i16.PageRouteInfo<void> {
  const OthersRouter({List<_i16.PageRouteInfo>? children})
      : super(OthersRouter.name, path: 'others', initialChildren: children);

  static const String name = 'OthersRouter';
}

/// generated route for
/// [_i11.OthersScreen]
class OthersRoute extends _i16.PageRouteInfo<void> {
  const OthersRoute() : super(OthersRoute.name, path: '');

  static const String name = 'OthersRoute';
}

/// generated route for
/// [_i12.MainReportScreen]
class MainReportRoute extends _i16.PageRouteInfo<void> {
  const MainReportRoute() : super(MainReportRoute.name, path: 'reports');

  static const String name = 'MainReportRoute';
}

/// generated route for
/// [_i13.InitialReportScreen]
class InitialReportRoute extends _i16.PageRouteInfo<void> {
  const InitialReportRoute() : super(InitialReportRoute.name, path: 'initial');

  static const String name = 'InitialReportRoute';
}

/// generated route for
/// [_i14.LoginScreen]
class LoginRoute extends _i16.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: 'login');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i15.IntroContentScreen]
class IntroContentRoute extends _i16.PageRouteInfo<IntroContentRouteArgs> {
  IntroContentRoute(
      {_i17.Key? key, required void Function() afterIntroComplete})
      : super(IntroContentRoute.name,
            path: 'introcontent',
            args: IntroContentRouteArgs(
                key: key, afterIntroComplete: afterIntroComplete));

  static const String name = 'IntroContentRoute';
}

class IntroContentRouteArgs {
  const IntroContentRouteArgs({this.key, required this.afterIntroComplete});

  final _i17.Key? key;

  final void Function() afterIntroComplete;

  @override
  String toString() {
    return 'IntroContentRouteArgs{key: $key, afterIntroComplete: $afterIntroComplete}';
  }
}
