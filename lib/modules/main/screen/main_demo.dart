import 'package:demoapp/constants/theme.dart';
import 'package:demoapp/modules/authentication/authentication.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainDemo extends StatefulWidget {
  const MainDemo({Key? key}) : super(key: key);

  @override
  State<MainDemo> createState() => _MainDemoState();
}

class _MainDemoState extends State<MainDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Styles.primaryColor,
        leading: const Padding(
          padding: EdgeInsets.all(10.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80"),
          ),
        ),
        title: const Text("Profile"),
        actions: [
          IconButton(
            onPressed: () {
              BlocProvider.of<AuthenticationBloc>(context).add(LoggedOut());
            },
            icon: const Icon(EvaIcons.logOutOutline),
          ),
        ],
      ),
    );
  }
}
