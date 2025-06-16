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

class TryQuickLogInEvent extends LoginRegisterEvent{
  TryQuickLogInEvent();
}



class TryRegisterEvent extends LoginRegisterEvent{
  TryRegisterEvent(this.email,this.password,this.formValid);

  String email;
  String password;
  bool formValid;
}

class TryLogOutEvent extends LoginRegisterEvent{
  const TryLogOutEvent();
}



