import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import '../models/user_model.dart';

abstract class AbstractLocalDbSource{
  Future<User?> getUserFormDb();
  Future<void> saveUserToDb(User user);
}

class IsarDbSource extends AbstractLocalDbSource{
  IsarDbSource();

  Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    _isar = await Isar.open([UserSchema], directory: dir.path);
  }

  late final Isar _isar;

  @override
  Future<User?> getUserFormDb() async{
    final user = await _isar.users.where().findFirst();
    return user;
  }

  @override
  Future<void> saveUserToDb(user) async{
    _isar.users.put(user);
  }

}