part of 'auth_cubit.dart';

sealed class AuthState{
  const AuthState();
}

class LoggedInState extends AuthState{
  const LoggedInState() : super();
}

class LogInFailedState extends AuthState{
  const LogInFailedState() : super();
}

class RegisteredState extends AuthState{
  const RegisteredState() : super();
}

class RegisterFailedState extends AuthState{
  const RegisterFailedState() : super();
}

class LogOutFailedState extends AuthState{
  const LogOutFailedState() : super();
}

class LoggedOutState extends AuthState{
  const LoggedOutState() : super();
}



