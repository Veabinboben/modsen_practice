import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'coin_model.g.dart';

//TODO maybe move to "data"
@collection
@JsonSerializable()
class Coin{
  Id? isarId = Isar.autoIncrement;
  String? id;
  String? symbol;
  String? name;
  String? image;
  @JsonKey(name: "current_price")
  double? currentPrice;
  @JsonKey(name: "market_cap")
  double? marketCap;
  @JsonKey(name: "market_cap_rank")
  int? marketCapRank;
  @JsonKey(name: "fully_diluted_valuation")
  int? fullyDilutedValuation;
  @JsonKey(name: "total_volume")
  int? totalVolume;
  @JsonKey(name: "high_24h")
  double? high24h;
  @JsonKey(name: "low_24h")
  double? low24h;
  @JsonKey(name: "price_change_24h")
  double? priceChange24h;
  @JsonKey(name: "price_change_percentage_24h")
  double? priceChangePercentage24h;
  @JsonKey(name: "market_cap_change_24h")
  double? marketCapChange24h;
  @JsonKey(name: "market_cap_change_percentage_24h")
  double? marketCapChangePercentage24h;
  @JsonKey(name: "circulating_supply")
  double? circulatingSupply;
  @JsonKey(name: "total_supply")
  double? totalSupply;
  @JsonKey(name: "max_supply")
  double? maxSupply;
  double? ath;
  @JsonKey(name: "ath_change_percentage")
  double? athChangePercentage;
  @JsonKey(name: "ath_date")
  String? athDate;
  double? atl;
  @JsonKey(name: "atl_change_percentage")
  double? atlChangePercentage;
  @JsonKey(name: "atl_date")
  String? atlDate;
  @JsonKey(name: "lastUpdated")
  String? lastUpdated;
  //TODO make another class
  String? platforms;


  Coin(this.id, this.symbol, this.name, this.image, this.currentPrice,
      this.marketCap, this.marketCapRank, this.fullyDilutedValuation,
      this.totalVolume, this.high24h, this.low24h, this.priceChange24h,
      this.priceChangePercentage24h, this.marketCapChange24h,
      this.marketCapChangePercentage24h, this.circulatingSupply,
      this.totalSupply, this.maxSupply, this.ath, this.athChangePercentage,
      this.athDate, this.atl, this.atlChangePercentage, this.atlDate,
      this.lastUpdated, this.platforms);

  factory Coin.fromJson(Map<String, dynamic> json) =>
      _$CoinFromJson(json);

  // A method that converts a User instance into a map.
  Map<String, dynamic> toJson() => _$CoinToJson(this);
}