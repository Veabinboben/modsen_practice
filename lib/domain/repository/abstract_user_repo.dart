import '../../data/models/user_model.dart';

abstract class AbstractUserRepo{
  Future<User?> getUser();
  Future<void> saveOrUpdateUser(User user);
  Future<void> clearUser();
}