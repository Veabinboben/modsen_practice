import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';
import 'package:modsen_practice/data/models/user_model.dart';
import 'package:modsen_practice/data/sources/remote_login.dart';
import 'package:modsen_practice/domain/repository/abstract_user_repo.dart';
import 'package:modsen_practice/main.dart';

import '../sources/local_db.dart';

class UserRepo extends AbstractUserRepo{
  UserRepo(AbstractLocalDbSource localSource, AbstractLoginSource remoteLogin) : _localSource = localSource, _remoteLogin = remoteLogin;

  late final AbstractLocalDbSource _localSource;
  late final AbstractLoginSource _remoteLogin;
  final LocalAuthentication _localauth = LocalAuthentication();

  @override
  Future<User?> _getUser() async{
    final user = await _localSource.getUserFormDb();
    return user;
  }

  @override
  Future<void> _saveUser(User user) async{
    _localSource.saveUserToDb(user);
  }

  Future<bool> quickLogin() async {
    final bool canAuthenticateWithBiometrics = await _localauth.canCheckBiometrics;
    final bool canAuthenticate =
        canAuthenticateWithBiometrics || await _localauth.isDeviceSupported();
    logger.i("Can authentificate $canAuthenticate");

    if(canAuthenticate == true){
      var user = await _getUser();
      logger.i("Has user ${user!= null}");
      if (user != null){
        bool didAuthenticate;
        try {
           didAuthenticate = await _localauth.authenticate(
              localizedReason: 'Please authenticate to show account balance',
              options: AuthenticationOptions(sensitiveTransaction: false));
        } on PlatformException catch(e) {
          logger.e(e.message);
          return false;
        }
        logger.i("Did auth ${didAuthenticate}");
        if (didAuthenticate == true) {
          var result = await login(user);
          return result;
        }
        return false;
      }
    }
    return false;
  }

  Future<bool> login(User user) async {
    var result = await _remoteLogin.loginUser(user.email!, user.password!);
    if (result == true){
      _saveUser(user);
    }
    return result;
  }

  Future<bool> register(User user) async {
    var result = await _remoteLogin.registerUser(user.email!, user.password!);
    return result;
  }

}