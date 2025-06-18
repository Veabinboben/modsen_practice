part of 'auth_cubit.dart';

sealed class AuthState{
  const AuthState();
}

class LoggedInState extends AuthState{
  const LoggedInState() : super();
}

class LoggedOutState extends AuthState{
  const LoggedOutState() : super();
}



