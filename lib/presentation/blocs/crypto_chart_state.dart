part of 'crypto_chart_cubit.dart';

sealed class CryptoChartState{
  const CryptoChartState();
}

class NoChartDataState extends CryptoChartState{
  const NoChartDataState() : super();
}

class GotChartDataState extends CryptoChartState{

  List<List<double>> data;

  GotChartDataState(this.data) : super();
}



