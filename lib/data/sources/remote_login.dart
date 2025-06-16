import 'package:firebase_auth/firebase_auth.dart';
import 'package:modsen_practice/main.dart';

abstract class AbstractLoginSource{
  Future<bool> registerUser(String email, String password);
  Future<bool> loginUser(String email, String password);
  Future<bool> logoutUser();
}

class FirebaseLoginSource extends AbstractLoginSource{

  FirebaseLoginSource(){
    _auth = FirebaseAuth.instance;
  }

  late FirebaseAuth  _auth;

  @override
  Future<bool> loginUser(String email, String password) async {
    logger.i(email);
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      return true;
    }
    on FirebaseException catch (e){
      logger.e("${e.code} ${e.message}");
      return false;
    }
  }

  @override
  Future<bool> registerUser(String email, String password) async{

    try {
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return true;
    }
    on FirebaseException catch (e){
      logger.e("${e.code} ${e.message}");
      return false;
    }
  }

  Future<bool> logoutUser() async{
    try {
      await _auth.signOut();
      return true;
    }
    on FirebaseException catch (e){
      return false;
    }
  }

}