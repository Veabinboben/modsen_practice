import 'package:isar/isar.dart';
import 'package:modsen_practice/data/models/chart_data.dart';
import 'package:modsen_practice/data/models/favourite_coin.dart';
import 'package:modsen_practice/domain/models/coin_model.dart';
import 'package:modsen_practice/main.dart';
import 'package:path_provider/path_provider.dart';

import '../models/user_model.dart';

abstract interface class AbstractLocalUserDbSource{
  Future<User?> getUserFormDb(int id);
  Future<void> saveUserToDb(User user,int id);
  Future<void> deleteUserFromDb();
}

class IsarUserDbSource implements AbstractLocalUserDbSource{
  IsarUserDbSource(){
    try {
      _isar = Isar.getInstance(_dbName);
      logger.i("'Isar by the name of $_dbName is opened!");
    }
    catch (e){
      logger.e('Isar by the name of $_dbName is not inited');
      _isar = null;
    }
  }

  static Future<void> openUserDb() async {
    final dir = await getApplicationDocumentsDirectory();
    //TODO remove unnecesary
    await Isar.open([UserSchema,CoinSchema,FavouriteCoinSchema,ChartDataSchema], directory: dir.path,name: _dbName);
  }

  late final Isar? _isar;
  static const String _dbName = "UserDb";

  @override
  Future<User?> getUserFormDb(int id) async{
    final user = await _isar!.users.get(id);
    logger.i("user got $user");
    return user;
  }

  @override
  Future<void> saveUserToDb(user, int id) async{
    await _isar!.writeTxn(() async {
      await _isar.users!.put(user..id = id);
    });
    logger.i("user set $user");
  }

  @override
  Future<void> deleteUserFromDb() async {
    await _isar!.writeTxn(() async {
      await _isar.users.clear();
    });
    logger.i("user dead");
  }

}