import 'dart:ui';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:modsen_practice/main.dart';

class CryptoChart extends StatefulWidget {
  CryptoChart(this._data,{super.key});

  List<List<double>> _data;

  @override
  State<CryptoChart> createState() => _CryptoChartState();
}

class _CryptoChartState extends State<CryptoChart> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  List<FlSpot> _spots = [
    //TestData
    // FlSpot(0, 1),
    // FlSpot(1, 3),
    // FlSpot(2, 2),
    // FlSpot(3, 5),
    // FlSpot(4, 4),
    // FlSpot(5, 6),
  ];
  List<LineChartBarData> _Animlines = [];
  double maxX = 0;
  double minX = 0;
  double maxY = 0;
  double minY = 0;

  @override
  void initState() {

    _setupSpots();

    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _animation = Tween<double>(begin: 0, end: _spots.length.toDouble()-1).animate(CurvedAnimation(
        parent: _controller,
        curve: Curves.linear))
      ..addListener(() {
        setState(() {
          _Animlines = _updateLines().toList();
        });
      });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _setupSpots(){
    final pointsRaw = widget._data;
     maxX = (pointsRaw.reduce((curr, next) => curr[0] > next[0]? curr: next))[0];
     minX = (pointsRaw.reduce((curr, next) => curr[0] < next[0]? curr: next))[0];
     maxY = (pointsRaw.reduce((curr, next) => curr[1] > next[1]? curr: next))[1];
     minY = (pointsRaw.reduce((curr, next) => curr[1] < next[1]? curr: next))[1];

     final points = pointsRaw.map((item) => FlSpot(item[0],item[1])).toList();
     _spots = points;
  }


  LineChartBarData _getBarData(List<FlSpot> spots, Color color ) {
    return LineChartBarData(
      spots: spots,
      isCurved: false,
      color: color,
      dotData: FlDotData(show: false),
      belowBarData: BarAreaData(
          show: true,
          gradient: LinearGradient(
            begin: Alignment.topCenter, end: Alignment.bottomCenter,
              colors: [
            color, Colors.transparent
          ])
      ),
    );
  }

  List <LineChartBarData> _updateLines() {
    int count = _animation.value.floor().toInt();
    int next = _animation.value.ceil().toInt();
    double animProcexs = _animation.value - count;
    final diff = _spots.length - count;
    final spots = _spots.sublist(0, count+1);
    if (next > count){
      final FlSpot interpolated = FlSpot(
          lerpDouble(_spots[count].x, _spots[next].x, animProcexs)!,
          lerpDouble(_spots[count].y, _spots[next].y, animProcexs)!);
      spots.add(interpolated);
    }
    final color = (_spots.last.y - _spots.first.y) < 0 ? Colors.red : Colors.green;
    final bardat = _getBarData(spots,color);
    return [bardat];
  }

  /// IMPORTANT: use this function if you want to use different colored segments
  /// has some limitations with styling
  // List <LineChartBarData> _updateLines() {
  //   List <LineChartBarData> _lines = [];
  //   int count = _animation.value.floor().toInt();
  //   int next = _animation.value.ceil().toInt();
  //   double animProcexs = _animation.value - count;
  //   final diff = _spots.length - count;
  //   int i = 0;
  //   for (i ; i < count;i++){
  //     final spots = _spots.sublist(i, i+2);
  //     final diff = (spots.last.y - spots.first.y) < 0 ;
  //     final bardat = _getBarData(spots, diff  == true ? Colors.red : Colors.green);
  //     _lines.add(bardat);
  //   }
  //   if (diff != 0){
  //     final spots = _spots.sublist(i, i+1);
  //     final FlSpot interpolated = FlSpot(
  //         lerpDouble(_spots[count].x, _spots[next].x, animProcexs)!,
  //         lerpDouble(_spots[count].y, _spots[next].y, animProcexs)!);
  //
  //     spots.add(interpolated);
  //     final diff = (spots.last.y - spots.first.y) < 0 ;
  //     final bardat = _getBarData(spots, diff  == true ? Colors.red : Colors.green);
  //     _lines.add(bardat);
  //   }
  //
  //   //logger.i(_lines);
  //   return _lines;
  //}

  @override
  Widget build(BuildContext context) {
    int counter = 0;
    return Padding(
      padding: EdgeInsets.only(top: 20,left: 20,right: 20,bottom: 0),
      child: LineChart(
        transformationConfig: FlTransformationConfig(
            minScale: 1,
            maxScale: 10,
            scaleAxis: FlScaleAxis.free,
            panEnabled: true,
            scaleEnabled: true),
        LineChartData(
          gridData: FlGridData(show: true),
          titlesData: FlTitlesData(
              leftTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: false
                )
              ),
              topTitles: const AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
              rightTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 60,
                  // getTitlesWidget: (value, meta){
                  //     return SideTitleWidget(child: Text(value.toString()), meta: meta);
                  // }
                )
              ),
              bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 40,
                      getTitlesWidget: (value, meta){
                        if ((counter++) % 2 != 0) {return Text("");}
                        else {
                          final time = DateTime.fromMillisecondsSinceEpoch(
                              value.toInt());
                          final formatedTime = DateFormat('kk:mm').format(time);
                          return SideTitleWidget(
                              child: Text(formatedTime), meta: meta);
                        }
                      }
                  )
              ),
              show: true
          ),
          borderData: FlBorderData(
            show: true,
            border: Border.all(color: const Color(0xff37434d)),
          ),
          minX: minX,
          maxX: maxX,
          minY: minY * 0.999,
          maxY: maxY * 1.001,
          lineBarsData: _Animlines,
          //TODO change tooltip here
          lineTouchData: LineTouchData(
            enabled: true,
            touchTooltipData: LineTouchTooltipData(
              fitInsideHorizontally: true,
                fitInsideVertically: true,
                getTooltipColor: (_) => Colors.black26,
                getTooltipItems: (List<LineBarSpot> touchedSpots) {
                  final tooltipItems = <LineTooltipItem?>[];
                  for (int i = 0; i < touchedSpots.length; i++) {
                    if (i >= 1) {
                      tooltipItems.add(null);
                      continue;
                    }
                    final spot = touchedSpots[i];
                    final time = DateTime.fromMillisecondsSinceEpoch(
                        spot.x.toInt());
                    final formatedTime = DateFormat('dd MMM - kk:mm').format(time);
                    tooltipItems.add(LineTooltipItem(
                      "\$${spot.y.toStringAsFixed(5)}\n",
                      TextStyle(color: Colors.white),
                      children: [
                        TextSpan(text: "$formatedTime UTC",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                      ],
                    ));
                  }
                  return tooltipItems;
                }
            ),
            getTouchedSpotIndicator:
                (LineChartBarData barData, List<int> indicators) {
              return indicators.map((index) {
                return TouchedSpotIndicatorData(
                  FlLine(color: Colors.white, strokeWidth: 2),
                  FlDotData(
                    show: true,
                    getDotPainter: (spot, percent, barData, index) =>
                        FlDotCirclePainter(
                          radius: 4,
                          color: Colors.white,
                          strokeWidth: 2,
                          strokeColor: Colors.black,
                        ),
                  ),
                );
              }).toList();
            },
            // Custom drawing of crosshair
            getTouchLineStart: (barData, index) => double.negativeInfinity,
            getTouchLineEnd: (barData, index) => double.infinity,
          ),
        ),
      ),
    );
  }
}
