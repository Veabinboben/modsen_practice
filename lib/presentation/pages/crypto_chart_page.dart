import 'dart:ui';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:modsen_practice/main.dart';

class CryptoChartPage extends StatefulWidget {
  const CryptoChartPage({super.key});

  @override
  State<CryptoChartPage> createState() => _CryptoChartPageState();
}

class _CryptoChartPageState extends State<CryptoChartPage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  final List<FlSpot> _spots = [
    FlSpot(0, 1),
    FlSpot(1, 3),
    FlSpot(2, 2),
    FlSpot(3, 5),
    FlSpot(4, 4),
    FlSpot(5, 6),
  ];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
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

  List<LineChartBarData> _Animlines = [];
  int prevVal = -1;
  bool needToFinalizeLine = false;


  LineChartBarData _getBarData(List<FlSpot> spots, Color color ) {
    return LineChartBarData(
      spots: spots,
      isCurved: true,
      color: color,
      dotData: FlDotData(show: false),
      belowBarData: BarAreaData(show: false),
    );
  }

  List <LineChartBarData> _updateLines() {
    List <LineChartBarData> _lines = [];
    int count = _animation.value.floor().toInt();
    int next = _animation.value.ceil().toInt();
    double animProcexs = _animation.value - count;
    final diff = _spots.length - count;
    int i = 0;
    for (i ; i < count;i++){
      final spots = _spots.sublist(i, i+2);
      final bardat = _getBarData(spots, Colors.red);
      _lines.add(bardat);
    }
    if (diff != 0){
      final spots = _spots.sublist(i, i+1);
      final FlSpot interpolated = FlSpot(
          lerpDouble(_spots[count].x, _spots[next].x, animProcexs)!,
          lerpDouble(_spots[count].y, _spots[next].y, animProcexs)!);
      spots.add(interpolated);

      final bardat = _getBarData(spots, Colors.red);
      _lines.add(bardat);
    }

    logger.i(_lines);
    return _lines;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Smooth Animated Line Chart')),
      body: Center(
        child: LineChart(
          LineChartData(

            gridData: FlGridData(show: false),
            titlesData: FlTitlesData(show: true),
            borderData: FlBorderData(show: true),
            minX: 0,
            maxX: _spots.length.toDouble(),
            minY: 0,
            maxY: 7,
            lineBarsData: _Animlines,
            //TODO change tooltip here
            lineTouchData: LineTouchData(
                enabled: true,
                touchTooltipData: LineTouchTooltipData(
                    getTooltipColor: (_) => Colors.black26,
                    getTooltipItems: (List<LineBarSpot> touchedSpots) {
                      final tooltipItems = <LineTooltipItem?>[];
                      for (int i = 0; i < touchedSpots.length; i++) {
                        if (i >= 1) {
                          tooltipItems.add(null);
                          continue;
                        }
                        final spot = touchedSpots[i];
                        tooltipItems.add(LineTooltipItem(
                          spot.y.toString(),
                          TextStyle(color: Colors.white),
                        ));
                      }
                      return tooltipItems;
                    }
                ),
              getTouchedSpotIndicator:
                  (LineChartBarData barData, List<int> indicators) {
                return indicators.map((index) {
                  return TouchedSpotIndicatorData(
                    FlLine(color: Colors.white, strokeWidth: 1),
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
      ),
    );
  }
}
