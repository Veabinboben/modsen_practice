import 'package:dio/dio.dart';
import 'package:modsen_practice/data/sources/remote_crypto.dart';
import 'package:modsen_practice/domain/models/coin_model.dart';
import 'package:modsen_practice/main.dart';

import '../../domain/repository/abstract_crypto_repo.dart';

class CryptoRepo implements AbstractCryptoRepo{
  CryptoRepo(RemoteCryptoSource source,String apiKey) : _source = source, _apikey = apiKey;
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

  Future<List<Coin>> coinsListMarketData() async {
    try{
      final res = await _source.coinsListWithMarketData(_apikey);
      return res;
    }
    on DioException catch (e){
      logger.e(e.message);
      return [];
    }
  }

}