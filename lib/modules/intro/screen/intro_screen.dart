import 'package:auto_route/auto_route.dart';
import 'package:demoapp/router/router.gr.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  bool clicked = false;

  void afterIntroComplete() {
    setState(() {
      clicked = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AutoRouter.declarative(
      routes: (_) => [
        if (clicked == true)
          const LoginRoute()
        else
          IntroContentRoute(afterIntroComplete: afterIntroComplete)
      ],
    );
  }
}
