import 'package:isar/isar.dart';
import 'package:modsen_practice/main.dart';
import 'package:path_provider/path_provider.dart';

import '../../domain/models/coin_model.dart';


abstract interface class AbstractLocalCoinsDbSource{
  Future<List<Coin>?> getCoinsFromDB();
  Future<void> saveCoinsToDb(List<Coin> coins);
  Future<void> deleteCoinsFromDb();
}

class IsarCoinsDbSource implements AbstractLocalCoinsDbSource{
  IsarCoinsDbSource(){
    try {
      _isar = Isar.getInstance(_dbName);
      logger.i("'Isar by the name of $_dbName is opened!");
    }
    catch (e){
      logger.e('Isar by the name of $_dbName is not inited');
      _isar = null;
    }
  }

  static Future<void> openCoinsDb() async {
    final dir = await getApplicationDocumentsDirectory();
    await Isar.open([CoinSchema], directory: dir.path,name: _dbName);
  }

  late final Isar? _isar;
  static const String _dbName = "CoinsDb";

  @override
  Future<void> deleteCoinsFromDb() async{
    await _isar!.writeTxn(() async {
        await _isar.coins.clear();
    });
    logger.i("coins clear");
  }

  @override
  Future<List<Coin>?> getCoinsFromDB()  async  {
    List<Coin>? coins;
    await _isar!.txn(() async {
      coins = await _isar!.coins.where().findAll(); }
    );
    logger.i("coins got ${coins != null}");
    return coins;
  }

  @override
  Future<void> saveCoinsToDb(List<Coin> coins) async {
    await _isar!.writeTxn(() async {
        await _isar.coins!.putAll(coins);
    });
    logger.i("coins set");
  }


}