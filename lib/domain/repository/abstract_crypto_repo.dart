import 'package:modsen_practice/domain/models/coin_model.dart';

enum PriceChangePercentageTimeframes {
  oneHour,
  twentyFourHours,
  sevenDays,
  fourteenDays,
  thirtyDays,
  twoHundredDays,
  oneYear,
}

abstract interface class AbstractCryptoRepo{
  Future<String> test();
  Future<List<Coin>> coinsListIdMap();
  Future<List<Coin>> coinsListMarketData({int page = 1,PriceChangePercentageTimeframes timeframe = PriceChangePercentageTimeframes.twentyFourHours});
  Future<List<List<double>>> coinChartData(String coinId);
}
