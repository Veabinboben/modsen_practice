import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

import '../../main.dart';

abstract class AbstractBiometrySource{
  Future<bool> auth();
}

class BiometrySource extends AbstractBiometrySource{
  BiometrySource();

  final LocalAuthentication _localauth = LocalAuthentication();

  @override
  Future<bool> auth() async{
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