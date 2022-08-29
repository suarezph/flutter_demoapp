import 'package:auto_route/auto_route.dart';
import 'package:demoapp/router/router.gr.dart';
import 'package:flutter/material.dart';

class MainReportScreen extends StatelessWidget {
  const MainReportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  AutoRouter.of(context).navigate(const InitialReportRoute());
                },
                child: const Text(
                  "go to initial reports screen",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              InkWell(
                onTap: () {
                  AutoRouter.of(context).pop();
                },
                child: const Text("Go back"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
