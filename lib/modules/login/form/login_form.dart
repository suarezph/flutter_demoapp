import 'package:auto_route/auto_route.dart';
import 'package:demoapp/constants/theme.dart';
import 'package:demoapp/modules/login/login.dart';
import 'package:demoapp/router/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginForm extends StatelessWidget {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _onLoginButtonPressed() {
      BlocProvider.of<LoginBloc>(context).add(
        LoginButtonPressed(
            email: _emailController.text, password: _passwordController.text),
      );
    }

    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state is LoginFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Login failed"),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: SafeArea(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Gap(25),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: SvgPicture.asset('assets/images/logo.svg'),
                    ),
                    // hello
                    const SizedBox(height: 55),
                    Text(
                      "Hello Again!",
                      style: GoogleFonts.bebasNeue(
                        fontSize: 52,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Welcome back, you've been missed!",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 50),
                    // email field
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: TextField(
                            controller: _emailController,
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Email Address'),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: TextField(
                            obscureText: true,
                            controller: _passwordController,
                            decoration: const InputDecoration(
                                border: InputBorder.none, hintText: 'Password'),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    // sign in button
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: state is LoginLoading
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                  child: Column(
                                    children: const [
                                      SizedBox(
                                        height: 25,
                                        width: 25,
                                        child: CupertinoActivityIndicator(),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          : InkWell(
                              onTap: _onLoginButtonPressed,
                              child: Container(
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: Styles.primaryColor,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Center(
                                  child: Text(
                                    "Sign In",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                    ),
                    const Gap(25),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't yet account?"),
                        InkWell(
                          onTap: () {
                            context.router.push(const RegistrationRoute());
                          },
                          child: const Text(
                            ' Register now!',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),

                    const Gap(10),
                    const Text('OR'),
                    const Gap(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Forgot your password?"),
                        InkWell(
                          onTap: () {
                            context.router.push(const ForgotPasswordRoute());
                          },
                          child: const Text(
                            ' Reset Password',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    // or connect using social media below
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
