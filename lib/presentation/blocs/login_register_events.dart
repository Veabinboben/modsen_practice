part of 'login_register_bloc.dart';

class LoginRegisterEvent {
  const LoginRegisterEvent();
}

class TryLogInEvent extends LoginRegisterEvent{
  TryLogInEvent(this.email,this.password,this.formValid);

  String email;
  String password;
  bool formValid;
}


class TryRegisterEvent extends LoginRegisterEvent{
  TryRegisterEvent(this.email,this.password,this.formValid);

  String email;
  String password;
  bool formValid;
}

class StartWaitingEvent extends LoginRegisterEvent{
  StartWaitingEvent();
}

class FinalizeLogInEvent extends LoginRegisterEvent{
  FinalizeLogInEvent(this.success);

  bool success;
}

class FinalizeRegisterEvent extends LoginRegisterEvent{
  FinalizeRegisterEvent(this.success);

  bool success;
}



