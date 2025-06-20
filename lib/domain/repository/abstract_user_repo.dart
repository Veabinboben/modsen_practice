import '../../data/models/user_model.dart';

abstract interface class AbstractUserRepo{
  Future<User?> getUser();
  Future<void> saveOrUpdateUser(User user);
  Future<void> clearUser();
}