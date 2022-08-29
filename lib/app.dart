import 'package:demoapp/modules/main/screen/main_screen.dart';
import 'package:demoapp/repositories/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'modules/authentication/authentication.dart';
import 'modules/intro/screen/intro_screen.dart';

class AppScreen extends StatefulWidget {
  final UserRepository userRepository;
  const AppScreen({Key? key, required this.userRepository}) : super(key: key);

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
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
