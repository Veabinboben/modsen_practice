import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';
import 'package:modsen_practice/domain/repository/abstract_biometry_repo.dart';

import '../../main.dart';

class BiometryRepo implements AbstractBiometryRepo{

  BiometryRepo() ;

  final LocalAuthentication _localauth = LocalAuthentication();

  @override
  Future<bool> authUsingBiometry() async {
    final bool canAuthenticateWithBiometrics = await _localauth.canCheckBiometrics;
    final bool canAuthenticate =
        canAuthenticateWithBiometrics || await _localauth.isDeviceSupported();
    logger.i("Can authentificate $canAuthenticate");
    if(canAuthenticate == true){
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
      return didAuthenticate;
    }
    return false;
  }

}