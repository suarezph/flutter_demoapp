import 'package:demoapp/modules/main/screen/main_screen.dart';
import 'package:demoapp/repositories/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'modules/authentication/authentication.dart';
import 'modules/intro/screen/intro_screen.dart';

class AppRootScreen extends StatefulWidget {
  final UserRepository userRepository;
  const AppRootScreen({Key? key, required this.userRepository})
      : super(key: key);

  @override
  State<AppRootScreen> createState() => _AppRootScreenState();
}

class _AppRootScreenState extends State<AppRootScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          if (state is AuthenticationAuthenticated) {
            return const MainScreen();
          }
          if (state is AuthenticatedUnauthenticated) {
            return IntroScreen(userRepository: widget.userRepository);
          }
          if (state is AuthenticationLoading) {
            return const Scaffold(
              body: CircularProgressIndicator(),
            );
          }
          return const Scaffold(
            body: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
