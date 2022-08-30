import 'package:auto_route/auto_route.dart';
import 'package:demoapp/router/router.gr.dart';
import 'package:flutter/material.dart';

class OthersScreen extends StatelessWidget {
  const OthersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: InkWell(
          onTap: () {
            context.router.navigate(const MainReportRoute());
          },
          child: const Text(
            "visit to reports screen",
            style: TextStyle(fontSize: 20, color: Colors.orange),
          ),
        ),
      ),
    );
  }
}
