// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chart_DTO.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChartDTO _$ChartDTOFromJson(Map<String, dynamic> json) => ChartDTO(
      (json['prices'] as List<dynamic>)
          .map((e) =>
              (e as List<dynamic>).map((e) => (e as num).toDouble()).toList())
          .toList(),
      (json['market_caps'] as List<dynamic>)
          .map((e) =>
              (e as List<dynamic>).map((e) => (e as num).toDouble()).toList())
          .toList(),
      (json['total_volumes'] as List<dynamic>)
          .map((e) =>
              (e as List<dynamic>).map((e) => (e as num).toDouble()).toList())
          .toList(),
    );

Map<String, dynamic> _$ChartDTOToJson(ChartDTO instance) => <String, dynamic>{
      'prices': instance.prices,
      'market_caps': instance.marketCaps,
      'total_volumes': instance.totalVolumes,
    };
