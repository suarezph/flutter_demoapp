import 'package:demoapp/modules/authentication/bloc/authentication_bloc.dart';
import 'package:demoapp/modules/dashboard/bloc/dashboard_bloc.dart';
import 'package:demoapp/modules/intro/intro.dart';
import 'package:demoapp/repositories/demo_repository.dart';
import 'package:demoapp/repositories/device_repository.dart';
import 'package:demoapp/repositories/user_repository.dart';
import 'package:demoapp/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'observer/app_bloc_observer.dart';

void main() {
  Bloc.observer = AppBlocObserver();
  runApp(EntryApp());
}

class EntryApp extends StatelessWidget {
  final _appRouter = AppRouter();
  EntryApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<UserRepository>(
          create: (context) => UserRepository(),
        ),
        RepositoryProvider<DemoRepository>(
          create: (context) => DemoRepository(),
        ),
        RepositoryProvider<DeviceRepository>(
          create: (context) => DeviceRepository(),
        )
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AuthenticationBloc>(
            create: (context) => AuthenticationBloc(
              userRepository: context.read<UserRepository>(),
            )..add(AppStarted()),
          ),
          BlocProvider(
            create: (context) => DashboardBloc(
              demoRepository: context.read<DemoRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => IntroBloc(
              context.read<DeviceRepository>(),
            ),
          ),
        ],
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
          builder: (context, router) => router!,
        ),
      ),
    );
  }
}
