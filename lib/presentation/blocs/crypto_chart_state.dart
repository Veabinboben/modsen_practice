part of 'crypto_chart_cubit.dart';

sealed class CryptoChartState{
  const CryptoChartState();
}

class WaitingChartDataState extends CryptoChartState{
  const WaitingChartDataState() : super();
}

class NoChartDataState extends CryptoChartState{
  const NoChartDataState() : super();
}


class GotChartDataState extends CryptoChartState{

  List<List<double>> data;
  bool offline;

  GotChartDataState(this.data,this.offline) : super();
}



