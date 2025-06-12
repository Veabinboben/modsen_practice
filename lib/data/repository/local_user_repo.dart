import 'package:modsen_practice/data/models/user_model.dart';
import 'package:modsen_practice/domain/repository/abstract_user_repo.dart';

import '../sources/local_db.dart';

class LocalUserRepo extends AbstractUserRepo{
  LocalUserRepo(AbstractLocalDbSource source) : _source = source;

  late final AbstractLocalDbSource _source;

  @override
  Future<User?> getUser() async{
    final user = await _source.getUserFormDb();
    return user;
  }

  @override
  Future<void> saveUser(User user) async{
    _source.saveUserToDb(user);
  }

}