import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../shared/constants/constants.dart';
import 'bar gragh/bar-graph.dart';
class Charts extends StatefulWidget {
  const Charts({super.key});

  @override
  State<Charts> createState() => _ChartsState();
}

class _ChartsState extends State<Charts> {
  List<double> WeeklySummary = [
    4.40,
    30.0,
    15.4,
    90.45,
    100.4,
    88.99,
    10.0
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weekly Earnings',style: TextStyle(color: secondaryColor ,fontWeight: FontWeight.w900 ,fontSize: 27),),
        backgroundColor: primaryColor,
        iconTheme: IconThemeData(color: secondaryColor),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:60.0),
            child: Center(
              child: SizedBox(
                  height: 400,
                  child: BarGraph(
                      WeeklySummary:WeeklySummary
                  )
              ),
            ),
          ),
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.circular(10),
                boxShadow:[ BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                )
                ]
              ),
              child: Row(
                children: [
                  Row(
                    children: [
                      Icon(Icons.insert_chart_outlined_outlined ,size: 30,),
                      SizedBox(width: 10,),
                      Column(
                        children: [
                          Text('6' ,style: TextStyle(fontSize: 17,fontWeight: FontWeight.w900),),
                          Text('No.of jobs' ,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900 ,color: Colors.black45),)
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    width: 55,
                  ),
                  Row(
                    children: [
                      Icon(Icons.layers_outlined,size: 30,),
                      SizedBox(width: 10,),
                      Column(
                        children: [
                          Text('1300' ,style: TextStyle(fontSize: 17,fontWeight: FontWeight.w900),),
                          Text('Total Earing' ,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900 ,color: Colors.black45),)
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
