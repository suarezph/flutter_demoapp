import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class InitialReportScreen extends StatelessWidget {
  const InitialReportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(children: [
            const Text("Initial Report"),
            InkWell(
              onTap: () {
                AutoRouter.of(context).pop();
              },
              child: const Text("Go back"),
            ),
          ]),
        ),
      ),
    );
  }
}
