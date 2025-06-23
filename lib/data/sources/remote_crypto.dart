import 'package:dio/dio.dart';
import 'package:modsen_practice/domain/models/coin_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:modsen_practice/consts.dart';

part 'remote_crypto.g.dart';

@RestApi(baseUrl: 'https://api.coingecko.com/api/v3')
abstract class RemoteCryptoSource {
  factory RemoteCryptoSource(Dio dio, {String baseUrl}) = _RemoteCryptoSource;

  @GET('/ping')
  Future<String> ping(@Query(apiKeyNameConst) String apiKey);
  @GET('/coins/list')
  Future<List<Coin>> coinsList(@Query(apiKeyNameConst) String apiKey);
  @GET('/coins/markets')
  Future<List<Coin>> coinsListWithMarketData(
      @Query(apiKeyNameConst) String apiKey,
      {
        @Query('vs_currency') String vs_currency = 'usd',
        @Query('per_page') int per_page = 100,
        @Query('page') int page = 1,
        @Query('locale') String locale = 'en',
        @Query('price_change_percentage') String priceChangePercentageTimeframe = '24h',
      }
      );
}