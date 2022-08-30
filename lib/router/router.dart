import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:demoapp/app.dart';
import 'package:demoapp/modules/dashboard/screen/dashboard_screen.dart';
import 'package:demoapp/modules/intro/intro.dart';
import 'package:demoapp/modules/intro/screen/intro_content_screen.dart';
import 'package:demoapp/modules/login/login.dart';
import 'package:demoapp/modules/login/screen/forgot_password_screen.dart';
import 'package:demoapp/modules/main/screen/main_screen.dart';
import 'package:demoapp/modules/others/others.dart';
import 'package:demoapp/modules/profile/profile.dart';
import 'package:demoapp/modules/register/register.dart';
import 'package:demoapp/modules/reports/screen/initial_report_screen.dart';
import 'package:demoapp/modules/reports/screen/main_reports.dart';
import 'package:demoapp/modules/splash/splash.dart';
import 'package:demoapp/modules/wallet/screen/wallet_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: [
    AutoRoute(
      page: AppRootScreen,
      path: '/',
      initial: true,
      children: [
        AutoRoute(
          path: 'splash',
          page: SplashScreen,
        ),
        AutoRoute(
          page: MainScreen,
          children: [
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
              name: 'OthersRouter',
              page: EmptyRouterScreen,
              children: [
                AutoRoute(
                  path: '',
                  page: OthersScreen,
                ),
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
          children: [
            AutoRoute(
              path: 'login',
              page: LoginScreen,
            ),
            AutoRoute(
              path: 'introcontent',
              page: IntroContentScreen,
            ),
          ],
        ),
      ],
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
