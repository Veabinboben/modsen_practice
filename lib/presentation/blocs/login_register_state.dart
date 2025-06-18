part of 'login_register_bloc.dart';

sealed class LoginRegisterState {
  const LoginRegisterState();
}

class NotLoggedInState extends LoginRegisterState{
  NotLoggedInState() : super();
}

class WaitingReplyState extends LoginRegisterState{
  WaitingReplyState() : super();
}


class SuccessfulLogInState extends LoginRegisterState{
  SuccessfulLogInState() : super();
}

class FailedLogInState extends LoginRegisterState{
  FailedLogInState() : super();
}

class SuccessfulRegisterState extends LoginRegisterState{
  SuccessfulRegisterState() : super();
}


class FailedRegisterState extends LoginRegisterState{
  FailedRegisterState() : super();
}

class InvalidFormState extends LoginRegisterState{
  InvalidFormState() : super();
}

//TODO maybe add "no internet"