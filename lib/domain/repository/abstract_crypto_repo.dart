import 'package:modsen_practice/domain/models/coin_model.dart';

abstract interface class AbstractCryptoRepo{
  Future<String> test();
  Future<List<Coin>> coinsListIdMap();
  Future<List<Coin>> coinsListMarketData();
}
