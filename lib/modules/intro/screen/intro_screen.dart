import 'package:auto_route/auto_route.dart';
import 'package:demoapp/modules/intro/bloc/intro_bloc.dart';
import 'package:demoapp/repositories/device_repository.dart';
import 'package:demoapp/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => IntroBloc(
        RepositoryProvider.of<DeviceRepository>(context),
      )..add(const IntroStarted()),
      child: BlocBuilder<IntroBloc, IntroState>(
        builder: (context, state) {
          return AutoRouter.declarative(
            routes: (_) => [
              if (state is IntroNextState)
                const LoginRoute()
              else if (state is IntroLoadState)
                const IntroContentRoute(),
            ],
          );
        },
      ),
    );
  }
}
