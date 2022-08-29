import 'package:demoapp/modules/authentication/bloc/authentication_bloc.dart';
import 'package:demoapp/repositories/user_repository.dart';
import 'package:demoapp/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'observer/app_bloc_observer.dart';

void main() {
  UserRepository userRepository = UserRepository();
  Bloc.observer = AppBlocObserver();
  runApp(
    BlocProvider(
      create: (context) {
        return AuthenticationBloc(userRepository)..add(AppStarted());
      },
      child: AppRoot(userRepository: userRepository),
    ),
  );
}

class AppRoot extends StatelessWidget {
  final UserRepository userRepository;
  final _appRouter = AppRouter();
  AppRoot({Key? key, required this.userRepository}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: _appRouter.delegate(
        initialRoutes: [
          AppScreen(userRepository: userRepository),
        ],
      ),
      routeInformationParser: _appRouter.defaultRouteParser(),
      builder: (context, router) => router!,
    );
  }
}
