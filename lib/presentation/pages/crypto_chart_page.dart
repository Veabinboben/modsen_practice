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
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _animation = Tween<double>(begin: 0, end: _spots.length.toDouble()).animate(CurvedAnimation(
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

  LineChartBarData temp() {
   return LineChartBarData(
     spots: _spots,
     isCurved: false,
     color: Colors.red,
     dotData: FlDotData(show: false),
     belowBarData: BarAreaData(show: false),
   );
  }

  //TODO should recalc all based on animation timing, cause it can skip some frames
  List <LineChartBarData> _updateLines(){
    var _lines = _Animlines;
    int count = _animation.value.floor().toInt();
    int next = _animation.value.ceil().toInt();
    double animProcexs = _animation.value - count;
    if (prevVal == -1){
      final spots = _spots.sublist(0, 1);
      final FlSpot interpolated = FlSpot(
          lerpDouble(_spots[count].x, _spots[next].x, animProcexs)!,
          lerpDouble(_spots[count].y, _spots[next].y, animProcexs)!);
      spots.add(interpolated);
      logger.i(spots);
      _lines.add(LineChartBarData(
        spots: spots,
        isCurved: false,
        color: Colors.red,
        dotData: FlDotData(show: false),
        belowBarData: BarAreaData(show: false),
      ));
    }
    else if (count == prevVal){
      needToFinalizeLine = true;
      final lastBarData = _lines.last;
      _lines.removeLast();
      final nexSpots = lastBarData.spots;
      nexSpots.removeLast();
      final FlSpot interpolated = FlSpot(
          lerpDouble(_spots[count].x, _spots[next].x, animProcexs)!,
          lerpDouble(_spots[count].y, _spots[next].y, animProcexs)!);
      nexSpots.add(interpolated);
      logger.i(nexSpots);
      _lines.add(lastBarData.copyWith(spots: nexSpots));
    }
    else{
      if (needToFinalizeLine == true){
        logger.i("FINALIZING");
        needToFinalizeLine = false;
        final lastBarData = _lines.last;
        _lines.removeLast();
        final nexSpots = lastBarData.spots;
        nexSpots.removeLast();
        final spot = _spots[count >= _spots.length ? _spots.length-1 : count];
        nexSpots.add(spot);
        _lines.add(lastBarData.copyWith(spots: nexSpots));
      }
      final spots = _spots.sublist(count, count+1);
      final FlSpot interpolated = FlSpot(
          lerpDouble(_spots[count].x, _spots[next].x, animProcexs)!,
          lerpDouble(_spots[count].y, _spots[next].y, animProcexs)!);
      spots.add(interpolated);
      logger.i(spots);
      _lines.add(LineChartBarData(
        show: true,
        spots: spots,
        isCurved: false,
        color: Colors.red,
        dotData: FlDotData(show: false),
        belowBarData: BarAreaData(show: false),
      ));
    }
    prevVal = count;
    return _lines;
  }

  // List<FlSpot> getInterpolatedSpots() {
  //   // FIXME for *some* reason this returns not 0 but 1 on first iteration.
  //   // Dont know why, if it changed at some point remove -1s
  //   int count = _animation.value.floor().toInt();
  //   if(count == _spots.length) return _spots;
  //   int next = _animation.value.ceil().toInt();
  //   //if (next >= _spots.length) next = _spots.length-1;
  //   double animProcexs = _animation.value - count;
  //   if (count == 0) return [];
  //
  //   List<FlSpot> interpolatedSpots = _spots.sublist(0, count);
  //
  //   final FlSpot interpolated = FlSpot(
  //       lerpDouble(_spots[count-1].x, _spots[next-1].x, animProcexs)!,
  //       lerpDouble(_spots[count-1].y, _spots[next-1].y, animProcexs)!);
  //
  //   interpolatedSpots.add(interpolated); // Add the last point
  //   logger.i("$count ${_animation.value} $interpolatedSpots");
  //   return interpolatedSpots;
  // }

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
                          TextStyle(color: Colors.blue),
                        ));
                      }
                      return tooltipItems;
                    }
                )
            ),
          ),
        ),
      ),
    );
  }
}
