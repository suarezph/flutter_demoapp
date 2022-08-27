import 'package:demoapp/modules/authentication/bloc/authentication_bloc.dart';
import 'package:demoapp/modules/login/form/login_form.dart';
import 'package:demoapp/modules/login/login.dart';
import 'package:demoapp/repositories/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  final UserRepository userRepository;

  const LoginScreen({Key? key, required this.userRepository}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: BlocProvider(
        create: (context) => LoginBloc(
          RepositoryProvider.of<UserRepository>(context),
          BlocProvider.of<AuthenticationBloc>(context),
        ),
        child: LoginForm(userRepository: userRepository),
      ),
    );
  }
}
