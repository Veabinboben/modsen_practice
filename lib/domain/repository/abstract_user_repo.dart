import 'package:modsen_practice/data/models/user_model.dart';

abstract class AbstractUserRepo {
  Future<User?> getUser();
  Future<void> saveUser(User user);
}
