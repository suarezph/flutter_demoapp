import 'package:auto_route/auto_route.dart';
import 'package:demoapp/app.dart';
import 'package:demoapp/modules/intro/intro.dart';
import 'package:demoapp/modules/login/login.dart';
import 'package:demoapp/modules/login/screen/forgot_password_screen.dart';
import 'package:demoapp/modules/register/register.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Router',
  routes: [
    AutoRoute(
      path: '/',
      initial: true,
      page: AppScreen,
    ),
    AutoRoute(
      path: '/intro',
      name: 'IntroRouter',
      initial: true,
      page: IntroScreen,
    ),
    AutoRoute(
      path: '/login',
      name: 'LoginRouter',
      page: LoginScreen,
    ),
    AutoRoute(
      path: '/forgot',
      name: 'ForgotPasswordRouter',
      page: ForgotPasswordScreen,
    ),
    AutoRoute(
      path: '/register',
      name: 'RegistrationRouter',
      page: RegistrationScreen,
    ),
  ],
)
class $AppRouter {}
