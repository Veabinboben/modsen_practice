import 'package:modsen_practice/data/models/user_model.dart';

abstract interface class AbstractLoginRegisterRepo {
  // Future<User?> getUser();
  // Future<void> saveUser(User user);
  Future<bool> login(User user);
  //Future<bool> logout();
  // Future<bool> quickLogin();
  Future<bool> register(User user);
}
