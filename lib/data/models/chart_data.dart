
import 'package:isar/isar.dart';

part 'chart_data.g.dart';

@collection
class ChartData{
  Id isarId = Isar.autoIncrement;
  String id;
  List<double> flattenedPrices;

  ChartData(this.id, this.flattenedPrices);

  @ignore
  List<List<double>> get prices {
    // Convert the flattened list back to a nested list
    List<List<double>> nestedPrices = [];
    for (int i = 0; i < flattenedPrices.length; i += 2) {
      nestedPrices.add(flattenedPrices.sublist(i, i + 2));
    }
    return nestedPrices;
  }

  @ignore
  set prices(List<List<double>> value) {
    // Flatten the nested list for storage
    flattenedPrices = value.expand((i) => i).toList();
  }
}