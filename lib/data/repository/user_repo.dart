import 'package:modsen_practice/data/models/user_model.dart';
import 'package:modsen_practice/data/sources/local_user_db.dart';
import 'package:modsen_practice/domain/repository/abstract_user_repo.dart';

class UserRepo extends AbstractUserRepo{
  UserRepo(AbstractLocalUserDbSource source) : _source = source;

  late final AbstractLocalUserDbSource _source;
  final int _userId = 1;

  @override
  Future<void> clearUser() async{
    _source.deleteUserFromDb();
  }

  @override
  Future<User?> getUser() async {
    final user = await _source.getUserFormDb(_userId);
    return user;
  }

  @override
  Future<void> saveOrUpdateUser(User user) async{
    _source.saveUserToDb(user,_userId);
  }

}