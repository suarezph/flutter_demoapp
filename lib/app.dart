import 'package:auto_route/auto_route.dart';
import 'package:demoapp/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'modules/authentication/authentication.dart';

class AppRootScreen extends StatelessWidget {
  const AppRootScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) => AutoRouter.declarative(
          routes: (context) => [
            const SplashRoute(),
            if (state is AuthenticationAuthenticated)
              const MainRoute()
            else if (state is AuthenticatedUnauthenticated)
              const IntroRoute()
            else
              const SplashRoute()
          ],
        ),
      ),
    );
  }
}
