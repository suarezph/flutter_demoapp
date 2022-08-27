import 'package:bloc/bloc.dart';
import 'package:demoapp/modules/authentication/authentication.dart';
import 'package:demoapp/repositories/user_repository.dart';
import 'package:equatable/equatable.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final UserRepository userRepository;
  final AuthenticationBloc authenticationBloc;

  LoginBloc(this.userRepository, this.authenticationBloc)
      : super(LoginInitial()) {
    on<LoginButtonPressed>(
      (event, emit) async {
        emit(LoginLoading());
        try {
          final token = await userRepository.login(event.email, event.password);
          authenticationBloc.add(LoggedIn(token: token));
          emit(LoginInitial());
        } catch (error) {
          emit(LoginFailure(error: error.toString()));
        }
      },
    );
  }
}
