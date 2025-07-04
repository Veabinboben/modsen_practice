import 'package:dio/dio.dart';
import 'package:modsen_practice/data/sources/remote_crypto.dart';
import 'package:modsen_practice/domain/models/coin_model.dart';
import 'package:modsen_practice/main.dart';

import '../../domain/repository/abstract_remote_crypto_repo.dart';



const List<String> _periods = [
  '1h',
  '24h',
  '7d',
  '14d',
  '30d',
  '200d',
  '1y'
];

String getValue(PriceChangePercentageTimeframes timeframe){
  return _periods[timeframe.index];
}

class RemoteCryptoRepo implements AbstractRemoteCryptoRepo{
  RemoteCryptoRepo(RemoteCryptoSource source,String apiKey) : _source = source, _apikey = apiKey;
  final RemoteCryptoSource _source;
  final String _apikey;
  @override
  Future<String> test() async {
    try{
      final res = await _source.ping(_apikey);
      return res;
    }
    on DioException catch (e){
      logger.e(e.message);
      return "Null return";
    }

  }

  @override
  Future<List<Coin>> coinsListIdMap() async {
    try{
      final res = await _source.coinsList(_apikey);
      return res;
    }
    on DioException catch (e){
      logger.e(e.message);
      return [];
    }
  }

  @override
  Future<List<Coin>> coinsListMarketData({int page = 1,PriceChangePercentageTimeframes timeframe = PriceChangePercentageTimeframes.twentyFourHours}) async {
    try{
      final res = await _source.coinsListWithMarketData(_apikey,page: page,priceChangePercentageTimeframe: getValue(timeframe));
      return res;
    }
    on DioException catch (e){
      logger.e(e.message);
      return [];
    }
  }

  @override
  Future<List<List<double>>> coinChartData(String coinId, {double days = 1}) async{
    try{
      if (days == 1)
      {
        days = 2;
        final res = await _source.coinChartData(_apikey, coinId, days: days);
        final len = res.prices.length;
        return res.prices.sublist(len - 24, len);
      }
      else {
        final res = await _source.coinChartData(_apikey, coinId, days: days);
        return res.prices;
      }
    }
    on DioException catch (e){
      logger.e(e.message);
      return [];
    }
  }

}