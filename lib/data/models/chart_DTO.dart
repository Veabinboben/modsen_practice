
import 'package:json_annotation/json_annotation.dart';

part 'chart_DTO.g.dart';

@JsonSerializable()
class ChartDTO{
  List<List<double>> prices;
  @JsonKey(name: "market_caps")
  List<List<double>> marketCaps;
  @JsonKey(name: "total_volumes")
  List<List<double>> totalVolumes;

  ChartDTO(this.prices, this.marketCaps, this.totalVolumes);


  factory ChartDTO.fromJson(Map<String, dynamic> json) =>
      _$ChartDTOFromJson(json);

  // A method that converts a User instance into a map.
  Map<String, dynamic> toJson() => _$ChartDTOToJson(this);
}