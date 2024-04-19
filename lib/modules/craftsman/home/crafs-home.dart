import 'package:flutter/material.dart';
import 'package:sanai3ey/modules/craftsman/home/rating-page.dart';
import 'package:sanai3ey/modules/location/location.dart';
import 'package:sanai3ey/shared/constants/constants.dart';
import '../../../models/user-model.dart';
import '../notification_screen.dart';
import 'chart.dart';

class CrafsHomePage extends StatefulWidget {
  const CrafsHomePage({super.key});

  @override
  State<CrafsHomePage> createState() => _CrafsHomePageState();
}

class _CrafsHomePageState extends State<CrafsHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 60,
          backgroundColor: primaryColor,
          title: const Text(
            "Hello Rawan",
            style: TextStyle(
                color: Colors.white,
              fontWeight: FontWeight.w900
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: IconButton(
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(
                    builder: (_) => NotificationPage(),
                  ),
                  );
                },
                icon: const Icon(
                  Icons.notifications_on,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      body: Column(
        children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: primaryColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0,right: 10.0 ,bottom: 60.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                                  'Your Location',
                                style: TextStyle(
                                  color: Color(0xffDADADA),
                                  fontSize: 15.0,
                                    fontWeight: FontWeight.w900
                                ),
                              ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.location_on_outlined,color: secondaryColor,size: 30,),
                          Text(
                            'Cairo ,Egypt',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w900
                            ),
                          ),
                          SizedBox(
                            width: 140,
                          ),
                          TextButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (_) => const Location(),
                                ),);
                              },
                              child: Text(
                                'CHANGE',
                                style: TextStyle(
                                  color: secondaryColor,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 17
                                ),
                              )
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                transform: Matrix4.translationValues(0.0, -50.0, 0.0),
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow:[BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 4,
                    offset: Offset(0, 3),
                  )]
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0,top: 8.0,bottom: 15.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                              'Weekly Earnings',
                            style: TextStyle(
                              fontSize: 17,
                                fontWeight: FontWeight.w900
                            ),
                          ),
                          SizedBox(
                            width: 120,
                          ),
                          TextButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (_) => const Charts(),
                                ),);
                              },
                              child: Text(
                                  '\$130.00',
                                style: TextStyle(
                                  color: secondaryColor,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 17
                                ),
                              )
                          ),
                        ],
                      ),
                      Center(
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                boxShadow: [BoxShadow(
                                  color: Colors.white.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 4,
                                  offset: Offset(0, 3),
                                )]
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0 ,right: 8.0,top: 12.0 ,bottom: 12.0),
                                child: Column(
                                  children: [
                                    Column(
                                        children: [
                                          Container(
                                            width: 35,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(60),
                                              color: primaryColor.withOpacity(0.3)
                                            ),
                                            child: Center(
                                              child: Text(
                                                '2',
                                                style: TextStyle( fontSize: 15),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    SizedBox(height: 8,),
                                    Text(
                                        'Today’s Jobs',
                                      style: TextStyle(
                                        fontSize: 9,
                                        fontWeight: FontWeight.w900
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (_) => const RatingPage(),
                                ),);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    boxShadow: [BoxShadow(
                                      color: Colors.white.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 4,
                                      offset: Offset(0, 3),
                                    )]
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 8.0 ,right: 8.0,top: 12.0 ,bottom: 12.0),
                                  child: Column(
                                    children: [
                                      Column(
                                        children: [
                                          Container(
                                            width: 35,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(60),
                                                color: Colors.green.withOpacity(0.3)
                                            ),
                                            child: Center(
                                              child: Text(
                                                '4.5',
                                                style: TextStyle( fontSize: 15),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 8,),
                                      Text(
                                        'Avg.Rating',
                                        style: TextStyle(
                                            fontSize: 9,
                                            fontWeight: FontWeight.w900
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  boxShadow: [BoxShadow(
                                    color: Colors.white.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 4,
                                    offset: Offset(0, 3),
                                  )]
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0 ,right: 8.0,top: 12.0 ,bottom: 12.0),
                                child: Column(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          width: 35,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(60),
                                              color: secondaryColor.withOpacity(0.3)
                                          ),
                                          child: Center(
                                            child: Text(
                                              '\$80',
                                              style: TextStyle( fontSize: 15),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 8,),
                                    Text(
                                      ' Today Earning',
                                      style: TextStyle(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w900
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  boxShadow: [BoxShadow(
                                    color: Colors.white.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 4,
                                    offset: Offset(0, 3),
                                  )]
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0 ,right: 8.0,top: 12.0 ,bottom: 12.0),
                                child: Column(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          width: 35,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(60),
                                              color: Colors.red.withOpacity(0.3)
                                          ),
                                          child: Center(
                                            child: Text(
                                              '3',
                                              style: TextStyle( fontSize: 15),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 8,),
                                    Text(
                                      'Pending Jobs',
                                      style: TextStyle(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w900
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
          Text('today ')
        ],
      ),
    );
  }
}
