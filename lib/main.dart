import 'package:demoapp/modules/authentication/bloc/authentication_bloc.dart';
import 'package:demoapp/modules/intro/intro.dart';
import 'package:demoapp/modules/main/screen/main_screen.dart';
import 'package:demoapp/repositories/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GlobalObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    print('onEvent -- bloc: ${bloc.runtimeType} event: $event');
    super.onEvent(bloc, event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    print('onTransition -- bloc: ${bloc.runtimeType} transition: $transition');
    super.onTransition(bloc, transition);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    print('${bloc.runtimeType} $error $stackTrace');
    super.onError(bloc, error, stackTrace);
  }
}

void main() {
  final observer = GlobalObserver();
  UserRepository userRepository = UserRepository();
  runApp(
    BlocProvider(
      create: (context) {
        return AuthenticationBloc(userRepository)..add(AppStarted());
      },
      child: App(userRepository: userRepository),
    ),
  );
}

class App extends StatelessWidget {
  final UserRepository userRepository;
  const App({Key? key, required this.userRepository}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          if (state is AuthenticatedUnauthenticated) {
            return MainScreen();
          }
          if (state is AuthenticatedUnauthenticated) {
            return IntroScreen(userRepository: userRepository);
          }
          if (state is AuthenticationLoading) {
            return const Scaffold(
              body: const CircularProgressIndicator(),
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
