import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:demoapp/repositories/user_repository.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final UserRepository userRepository;

  AuthenticationBloc({required this.userRepository})
      : super(AuthenticationUninitialized()) {
    on<AppStarted>((event, emit) async {
      final bool hasToken = await userRepository.hasToken();
      if (hasToken) {
        emit(AuthenticationAuthenticated());
      } else {
        emit(AuthenticatedUnauthenticated());
      }
    });
    on<LoggedIn>((event, emit) async {
      emit(AuthenticationLoading());
      await userRepository.persistToken(event.token);
      emit(AuthenticationAuthenticated());
    });
    on<LoggedOut>((event, emit) async {
      emit(AuthenticationLoading());
      await userRepository.deleteToken();
      emit(AuthenticatedUnauthenticated());
    });
  }
}
