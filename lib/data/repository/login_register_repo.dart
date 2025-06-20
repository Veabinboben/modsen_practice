
import 'package:modsen_practice/data/models/user_model.dart';
import 'package:modsen_practice/data/sources/remote_login.dart';
import 'package:modsen_practice/domain/repository/abstract_login_register_repo.dart';


class LoginRegisterRepo implements  AbstractLoginRegisterRepo{
  LoginRegisterRepo(AbstractLoginSource remoteLogin) : _remoteLogin = remoteLogin;

  late final AbstractLoginSource _remoteLogin;

  Future<bool> login(User user) async {
    var result = await _remoteLogin.loginUser(user.email!, user.password!);
    return result;
  }

  Future<bool> register(User user) async {
    var result = await _remoteLogin.registerUser(user.email!, user.password!);
    return result;
  }


}