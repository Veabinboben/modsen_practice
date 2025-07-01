import 'package:modsen_practice/data/sources/local_charts_db.dart';
import 'package:modsen_practice/data/sources/local_coins_db.dart';
import 'package:modsen_practice/domain/models/coin_model.dart';
import 'package:modsen_practice/domain/repository/abstract_local_crypto_repo.dart';

class LocalCryptoRepo implements AbstractLocalCryptoRepo{
  LocalCryptoRepo(AbstractLocalCoinsDbSource localCoins,
      AbstractLocalChartsDbSource localCharts):
      _localCharts = localCharts,
      _localCoins = localCoins
  ;


  late final AbstractLocalCoinsDbSource _localCoins;
  late final AbstractLocalChartsDbSource _localCharts;


  @override
  Future<List<List<double>>> getCoinChartDataLastSnapshot(String coinId) async {
    final res = await  _localCharts.getChartFromDb(coinId);
    return res ?? [];
  }

  @override
  Future<List<Coin>> getCoinsListLastSnapshot() async  {
    final List<Coin>? res = await _localCoins.getCoinsFromDB();
    return res ?? [];
  }

  @override
  Future<void> saveCoinChartDataLastSnapshot(List<List<double>> chart, String coinId) async{
    await _localCharts.saveChartToDb(chart, coinId);
  }

  @override
  Future<void> saveCoinsListLastSnapshot(List<Coin> coins) async {
    await _localCoins.saveCoinsToDb(coins);
  }

  @override
  Future<void> deleteFavouriteCoin(Coin coin)async {
    await _localCoins.deleteFavouriteCoinsFromDb(coin);
  }

  @override
  Future<List<Coin>> getFavouriteCoinsListLastSnapshot()async {
    final res = await _localCoins.getFavouriteCoinsFromDB();
    return res ?? [];
  }

  @override
  Future<void> saveFavouriteCoin(Coin coin)async {
    await _localCoins.saveFavouriteCoinToDb(coin);
  }

  @override
  Future<bool> checkIfFavouriteCoin(Coin coin) async{
    final res = await _localCoins.getFavouriteCoinFromDB(coin.id!);
    return res != null ? true : false;
  }

}