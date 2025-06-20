import 'package:json_annotation/json_annotation.dart';

part 'coin_model.g.dart';

//TODO maybe move to "data"
@JsonSerializable()
class Coin{
  String? id;
  String? symbol;
  String? name;
  String? image;
  int? currentPrice;
  int? marketCap;
  int? marketCapRank;
  int? fullyDilutedValuation;
  int? totalVolume;
  int? high24h;
  int? low24h;
  double? priceChange24h;
  double? priceChangePercentage24h;
  int? marketCapChange24h;
  double? marketCapChangePercentage24h;
  int? circulatingSupply;
  int? totalSupply;
  int? maxSupply;
  int? ath;
  double? athChangePercentage;
  String? athDate;
  double? atl;
  double? atlChangePercentage;
  String? atlDate;
  Map<String,dynamic>? roi;
  String? lastUpdated;
  //TODO make another class
  String? platforms;


  Coin(this.id, this.symbol, this.name, this.image, this.currentPrice,
      this.marketCap, this.marketCapRank, this.fullyDilutedValuation,
      this.totalVolume, this.high24h, this.low24h, this.priceChange24h,
      this.priceChangePercentage24h, this.marketCapChange24h,
      this.marketCapChangePercentage24h, this.circulatingSupply,
      this.totalSupply, this.maxSupply, this.ath, this.athChangePercentage,
      this.athDate, this.atl, this.atlChangePercentage, this.atlDate, this.roi,
      this.lastUpdated, this.platforms);

  factory Coin.fromJson(Map<String, dynamic> json) =>
      _$CoinFromJson(json);

  // A method that converts a User instance into a map.
  Map<String, dynamic> toJson() => _$CoinToJson(this);
}