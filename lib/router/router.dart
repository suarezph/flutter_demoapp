import 'package:auto_route/auto_route.dart';
import 'package:demoapp/app.dart';
import 'package:demoapp/modules/dashboard/screen/dashboard_screen.dart';
import 'package:demoapp/modules/intro/intro.dart';
import 'package:demoapp/modules/login/login.dart';
import 'package:demoapp/modules/login/screen/forgot_password_screen.dart';
import 'package:demoapp/modules/main/screen/main_screen.dart';
import 'package:demoapp/modules/others/others.dart';
import 'package:demoapp/modules/profile/profile.dart';
import 'package:demoapp/modules/register/register.dart';
import 'package:demoapp/modules/reports/screen/initial_report_screen.dart';
import 'package:demoapp/modules/reports/screen/main_reports.dart';
import 'package:demoapp/modules/wallet/screen/wallet_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: [
    AutoRoute(
      path: '/',
      initial: true,
      page: AppRootScreen,
      children: [
        // Guard: authenticated
        AutoRoute(
          path: 'main',
          page: MainScreen,
        ),
        AutoRoute(
          path: 'dashboard',
          page: DashboardScreen,
        ),
        AutoRoute(
          path: 'wallet',
          page: WalletScreen,
        ),
        AutoRoute(
          path: 'profile',
          page: ProfileScreen,
        ),
        AutoRoute(
          path: 'others',
          page: OthersScreen,
          children: [
            AutoRoute(
              path: 'reports',
              page: MainReportScreen,
            ),
            AutoRoute(
              path: 'initial',
              page: InitialReportScreen,
            ),
          ],
        ),
      ],
    ),
    AutoRoute(
      path: 'intro',
      page: IntroScreen,
    ),
    AutoRoute(
      path: 'login',
      page: LoginScreen,
    ),
    AutoRoute(
      path: 'forgot',
      page: ForgotPasswordScreen,
    ),
    AutoRoute(
      path: 'register',
      page: RegistrationScreen,
    ),
  ],
)
class $AppRouter {}
