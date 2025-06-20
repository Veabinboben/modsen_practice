// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coin_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Coin _$CoinFromJson(Map<String, dynamic> json) => Coin(
      json['id'] as String?,
      json['symbol'] as String?,
      json['name'] as String?,
      json['image'] as String?,
      (json['currentPrice'] as num?)?.toInt(),
      (json['marketCap'] as num?)?.toInt(),
      (json['marketCapRank'] as num?)?.toInt(),
      (json['fullyDilutedValuation'] as num?)?.toInt(),
      (json['totalVolume'] as num?)?.toInt(),
      (json['high24h'] as num?)?.toInt(),
      (json['low24h'] as num?)?.toInt(),
      (json['priceChange24h'] as num?)?.toDouble(),
      (json['priceChangePercentage24h'] as num?)?.toDouble(),
      (json['marketCapChange24h'] as num?)?.toInt(),
      (json['marketCapChangePercentage24h'] as num?)?.toDouble(),
      (json['circulatingSupply'] as num?)?.toInt(),
      (json['totalSupply'] as num?)?.toInt(),
      (json['maxSupply'] as num?)?.toInt(),
      (json['ath'] as num?)?.toInt(),
      (json['athChangePercentage'] as num?)?.toDouble(),
      json['athDate'] as String?,
      (json['atl'] as num?)?.toDouble(),
      (json['atlChangePercentage'] as num?)?.toDouble(),
      json['atlDate'] as String?,
      json['roi'] as Map<String, dynamic>?,
      json['lastUpdated'] as String?,
      json['platforms'] as String?,
    );

Map<String, dynamic> _$CoinToJson(Coin instance) => <String, dynamic>{
      'id': instance.id,
      'symbol': instance.symbol,
      'name': instance.name,
      'image': instance.image,
      'currentPrice': instance.currentPrice,
      'marketCap': instance.marketCap,
      'marketCapRank': instance.marketCapRank,
      'fullyDilutedValuation': instance.fullyDilutedValuation,
      'totalVolume': instance.totalVolume,
      'high24h': instance.high24h,
      'low24h': instance.low24h,
      'priceChange24h': instance.priceChange24h,
      'priceChangePercentage24h': instance.priceChangePercentage24h,
      'marketCapChange24h': instance.marketCapChange24h,
      'marketCapChangePercentage24h': instance.marketCapChangePercentage24h,
      'circulatingSupply': instance.circulatingSupply,
      'totalSupply': instance.totalSupply,
      'maxSupply': instance.maxSupply,
      'ath': instance.ath,
      'athChangePercentage': instance.athChangePercentage,
      'athDate': instance.athDate,
      'atl': instance.atl,
      'atlChangePercentage': instance.atlChangePercentage,
      'atlDate': instance.atlDate,
      'roi': instance.roi,
      'lastUpdated': instance.lastUpdated,
      'platforms': instance.platforms,
    };
