import 'package:isar/isar.dart';
import 'package:modsen_practice/data/models/favourite_coin.dart';
import 'package:modsen_practice/main.dart';
import 'package:path_provider/path_provider.dart';

import '../../domain/models/coin_model.dart';


abstract interface class AbstractLocalCoinsDbSource{
  Future<List<Coin>?> getCoinsFromDB();
  Future<void> saveCoinsToDb(List<Coin> coins);
  Future<void> deleteCoinsFromDb();
  Future<List<Coin>?> getFavouriteCoinsFromDB();
  Future<Coin?> getFavouriteCoinFromDB(String id);
  Future<void> saveFavouriteCoinToDb(Coin coin);
  Future<void> deleteFavouriteCoinsFromDb(Coin coin);
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
    await Isar.open([CoinSchema,FavouriteCoinSchema], directory: dir.path,name: _dbName);
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
    final res = await _isar!.writeTxn(() async {
      List<Coin?>? oldcoins = await _isar!.coins.where().findAll();
      if (oldcoins == null || oldcoins.isEmpty) {
        final res = await _isar.coins!.putAll(coins);
        logger.i(res);
      }
      else{
        final newcoins = coins.map((element) {
          Coin? isarId;
          //TODO maybe change this probably real bad to make som many of them
          try{
            isarId = oldcoins.firstWhere((oldelement) => oldelement?.id == element.id);
          }
          catch (e){
            isarId = null;
          }
          //logger.i(isarId);
          if (isarId != null)
            return element..isarId = isarId.isarId;
          else
            return element;
        }).toList();
        final res = await _isar.coins!.putAll(newcoins);
        logger.i(res);
      }
    });

    logger.i("coins set");
  }
  @override
  Future<void> deleteFavouriteCoinsFromDb(Coin coin) async{
    await _isar!.writeTxn(() async {
      final favCoinModel = (await _isar!.favouriteCoins.filter().coin((q) => q.idEqualTo(coin.id)).findFirst());
      if (favCoinModel != null)
        await _isar.favouriteCoins.delete(favCoinModel.isarId);
    });
    logger.i("fav coin clear");
  }

  @override
  Future<List<Coin>?> getFavouriteCoinsFromDB() async{
    List<Coin>? coins;
    var favCoins;
    await _isar!.txn(() async {
      favCoins = await _isar!.favouriteCoins.where().findAll();
    });
    if (favCoins != null && favCoins.isNotEmpty)
      coins = List<Coin>.from(favCoins.map((element) => element.coin.value!).toList()) ;
    logger.i("fav coins got ${coins != null}");
    return coins;
  }

  @override
  /// coin must be with proper id
  Future<void> saveFavouriteCoinToDb(Coin coin) async{
    await _isar!.writeTxn(() async {
      final favCoinModel = await _isar!.favouriteCoins.filter().coin((q) => q.idEqualTo(coin.id)).findFirst();
      if (favCoinModel != null) return;
      final favCoin = await _isar!.coins.filter().idEqualTo(coin.id).findFirst();
      //logger.i("Favcoin = $favCoin");
      var newFavCoinModel = FavouriteCoin();
      newFavCoinModel.coin.value = favCoin;
      final res  = await _isar.favouriteCoins!.put(newFavCoinModel);
      await newFavCoinModel.coin.save();
      logger.i(res);
    });
    logger.i("fav coins added ");
  }

  @override
  Future<Coin?> getFavouriteCoinFromDB(String coinId) async {
    FavouriteCoin? favCoinModel;
    await _isar!.writeTxn(() async {
       favCoinModel = await _isar!.favouriteCoins.filter().coin((q) => q.idEqualTo(coinId)).findFirst();
    });
    return favCoinModel?.coin.value ?? null;
  }

}