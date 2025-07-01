import 'package:modsen_practice/domain/models/coin_model.dart';


abstract interface class AbstractLocalCryptoRepo{
  Future<List<Coin>> getCoinsListLastSnapshot();
  Future<void> saveCoinsListLastSnapshot(List<Coin> coins);
  Future<List<List<double>>> getCoinChartDataLastSnapshot(String coinId);
  Future<void> saveCoinChartDataLastSnapshot(List<List<double>> chart,String coinId);
  Future<List<Coin>> getFavouriteCoinsListLastSnapshot();
  Future<void> saveFavouriteCoin(Coin coin);
  Future<void> deleteFavouriteCoin(Coin coin);
  Future<bool> checkIfFavouriteCoin(Coin coin);
}
