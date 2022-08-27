part of 'authentication_bloc.dart';

abstract class AuthenticationState extends Equatable {
  const AuthenticationState();

  @override
  List<Object> get props => [];
}

// start app
class AuthenticationUninitialized extends AuthenticationState {}

// authenticated
class AuthenticationAuthenticated extends AuthenticationState {}

// not authenticated
class AuthenticatedUnauthenticated extends AuthenticationState {}

// loading authenticated
class AuthenticationLoading extends AuthenticationState {}
