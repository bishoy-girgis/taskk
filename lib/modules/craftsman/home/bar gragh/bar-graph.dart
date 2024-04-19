import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:sanai3ey/modules/craftsman/home/bar%20gragh/bar-data.dart';
import 'package:sanai3ey/shared/constants/constants.dart';
class BarGraph extends StatelessWidget {
  final List WeeklySummary;
  const BarGraph({super.key , required this.WeeklySummary});


  @override
  Widget build(BuildContext context) {
    BarData myBarData = BarData(
        sunAmount: WeeklySummary[0],
        monAmount: WeeklySummary[1],
        tueAmount: WeeklySummary[2],
        wedAmount: WeeklySummary[3],
        thurAmount: WeeklySummary[4],
        friAmount: WeeklySummary[5],
        satAmount: WeeklySummary[6]
    );
    myBarData.initializeBarData();
    return BarChart(
        BarChartData(
          maxY: 200,
          minY: 0,
          gridData: const FlGridData(show: false),
          borderData: FlBorderData(show: false),
          titlesData: const FlTitlesData(
            show: true,
            rightTitles: AxisTitles(sideTitles: SideTitles(showTitles:false)),
            topTitles:  AxisTitles(sideTitles: SideTitles(showTitles:false)),
            bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  getTitlesWidget: getButtomTitles,
                ),
            ),
          ),
          barGroups: myBarData.barData.map((data) => BarChartGroupData(
              x: data.x,
              barRods: [BarChartRodData(
                  toY: data.y,
                  color: primaryColor,
                  width: 20,
                  borderRadius: BorderRadius.circular(6),
                backDrawRodData: BackgroundBarChartRodData(
                  show: true,
                  toY: 200,
                  color: primaryColor.withOpacity(0.1)
                )
              ),],
          )).toList(),
        )
    );
  }
}

Widget getButtomTitles(double value , TitleMeta meta){
  const style= TextStyle(
    color: primaryColor,
    fontWeight: FontWeight.w900,
    fontSize: 14
  );
  Widget text;
  switch (value.toInt()){
    case 0:
       text =const Text('S',style: style,);
      break;
    case 1:
      text =const Text('M',style: style,);
      break;
    case 2:
      text =const Text('T',style: style,);
      break;
    case 3:
      text =const Text('W',style: style,);
      break;
    case 4:
      text =const Text('TH',style: style,);
      break;
    case 5:
      text =const Text('F',style: style,);
      break;
    case 6:
      text =const Text('SA',style: style,);
      break;
    default:
      text =const Text('S',style: style,);
      break;
  }
  return SideTitleWidget(child: text,axisSide: meta.axisSide,);
}
