import 'package:isar/isar.dart';
import 'package:modsen_practice/data/models/chart_data.dart';
import 'package:modsen_practice/main.dart';
import 'package:path_provider/path_provider.dart';

import '../../domain/models/coin_model.dart';


abstract interface class AbstractLocalChartsDbSource{
  Future<List<List<double>>?> getChartFromDb(String id);
  Future<void> saveChartToDb(List<List<double>> chart, String id);
  Future<void> deleteChartsFromDb();
}

class IsarChartsDbSource implements AbstractLocalChartsDbSource{
  IsarChartsDbSource(){
    try {
      _isar = Isar.getInstance(_dbName);
      logger.i("'Isar by the name of $_dbName is opened!");
    }
    catch (e){
      logger.e('Isar by the name of $_dbName is not inited');
      _isar = null;
    }
  }

  static Future<void> openChartsDb() async {
    final dir = await getApplicationDocumentsDirectory();
    await Isar.open([ChartDataSchema], directory: dir.path,name: _dbName);
  }

  late final Isar? _isar;
  static const String _dbName = "ChartsDb";

  @override
  Future<void> deleteChartsFromDb() async{
    await _isar!.writeTxn(() async {
      await _isar.chartDatas.clear();
    });
    logger.i("charts clear");
  }

  @override
  Future<List<List<double>>?> getChartFromDb(String id)  async  {
    List<List<double>>? chart;
    await _isar!.txn(() async {
      final chartData = (await _isar!.chartDatas.filter().idEqualTo(id).findFirst());
      chart = chartData?.prices;
    });
    logger.i("chart got ${chart != null}");
    return chart;
  }

  @override
  Future<void> saveChartToDb(List<List<double>> chart, String id) async {
    await _isar!.writeTxn(() async {
      final chartData = ChartData(id, []);
      chartData.prices = chart;
      await _isar.chartDatas!.put(chartData);
    });
    logger.i("chart set");
  }


}