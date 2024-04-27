import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sanai3ey/models/day_available_model.dart';

import '../../../models/timeCraftMan_model.dart';
import '../../../shared/constants/constants.dart';

class MyAvailabilityScreen extends StatefulWidget {
  const MyAvailabilityScreen({super.key});

  @override
  State<MyAvailabilityScreen> createState() => _MyAvailabilityScreenState();
}

class _MyAvailabilityScreenState extends State<MyAvailabilityScreen> {
  late int _selectedIndex = -1;

  List<TimeCraftManModel> times = [
    TimeCraftManModel(time: "08:00 AM", status: "selected"),
    TimeCraftManModel(time: "09:00 AM", status: "empty"),
    TimeCraftManModel(time: "10:00 AM", status: "empty"),
    TimeCraftManModel(time: "11:00 AM", status: "empty"),
    TimeCraftManModel(time: "12:00 PM", status: "selected"),
    TimeCraftManModel(time: "01:00 PM", status: "empty"),
    TimeCraftManModel(time: "02:00 PM", status: "selected"),
    TimeCraftManModel(time: "03:00 PM", status: "empty"),
    TimeCraftManModel(time: "04:00 PM", status: "empty"),
    TimeCraftManModel(time: "05:00 PM", status: "empty"),
    TimeCraftManModel(time: "06:00 PM", status: "empty"),
    TimeCraftManModel(time: "07:00 PM", status: "selected"),
    TimeCraftManModel(time: "08:00 PM", status: "empty"),
    TimeCraftManModel(time: "09:00 PM", status: "selected"),
    TimeCraftManModel(time: "10:00 PM", status: "empty"),
    TimeCraftManModel(time: "11:00 PM", status: "empty"),
    TimeCraftManModel(time: "12:00 AM", status: "empty"),
  ];
  late int selectedDay = -1;
  List<DayAvailableModel> days = [
    DayAvailableModel(day: "SUN", status: "empty"),
    DayAvailableModel(day: "MON", status: "selected"),
    DayAvailableModel(day: "TUE", status: "empty"),
    DayAvailableModel(day: "WED", status: "empty"),
    DayAvailableModel(day: "THU", status: "empty"),
  ];
  late ConfettiController _controllerCenter;

  @override
  void initState() {
    super.initState();
    _controllerCenter =
        ConfettiController(duration: const Duration(seconds: 10));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Availability',
          style: TextStyle(
              color: secondaryColor,
              fontWeight: FontWeight.w900,
              fontSize: 27.sp),
        ),
        backgroundColor: primaryColor,
        iconTheme: const IconThemeData(color: secondaryColor),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(8.sp),
            child: Text(
              "Select Day",
              style: TextStyle(
                  color: primaryColor,
                  fontSize: 30.sp,
                  fontFamily: 'Inter',
                  letterSpacing: -0.41,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 60.h,
            width: double.infinity,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      if (selectedDay != index) {
                        if (selectedDay != -1) {
                          days[selectedDay].status = "empty";
                        }
                        selectedDay = index;
                        days[selectedDay].status = "selected";
                      }
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: days[index].status == "empty"
                            ? primaryColor
                            : days[index].status == "selected"
                                ? secondaryColor
                                : const Color(0x50000000),
                        borderRadius: BorderRadius.circular(10)),
                    margin:
                        EdgeInsets.symmetric(horizontal: 6.w, vertical: 5.h),
                    height: 53.h,
                    width: 89.w,
                    child: Center(
                        child: Text(days[index].day,
                            style: TextStyle(
                                fontSize: 27.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.bold))),
                  ),
                );
              },
              scrollDirection: Axis.horizontal,
              itemCount: days.length,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.sp),
            child: Text(
              "Select Time",
              style: TextStyle(
                  color: primaryColor,
                  fontSize: 30.sp,
                  fontFamily: 'Inter',
                  letterSpacing: -0.41,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.all(6.sp),
              child: GridView.builder(
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        if (_selectedIndex != index) {
                          if (_selectedIndex != -1) {
                            times[_selectedIndex].status = "empty";
                          }
                          _selectedIndex = index;
                          times[_selectedIndex].status = "selected";
                        }
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: times[index].status == "empty"
                              ? primaryColor
                              : times[index].status == "selected"
                                  ? secondaryColor
                                  : const Color(0x50000000),
                          borderRadius: BorderRadius.circular(10)),
                      margin:
                          EdgeInsets.symmetric(horizontal: 6.w, vertical: 5.h),
                      height: 53.h,
                      width: 118.w,
                      child: Center(
                          child: Text(times[index].time,
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold))),
                    ),
                  );
                },
                scrollDirection: Axis.vertical,
                itemCount: times.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, childAspectRatio: 2 / 1),
              ),
            ),
          ),
          const Spacer(),
          Container(
            height: 112.h,
            width: 390.w,
            color: primaryColor,
            child: Center(
              child: InkWell(
                onTap: () {
                  setTimeslotDialog();
                  _controllerCenter.play();
                },
                child: Container(
                  width: 296.w,
                  height: 53.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0XFFFFD200)),
                  child: Center(
                    child: Text(
                      "Set Timeslot",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.sp,
                          fontFamily: 'Inter',
                          letterSpacing: -0.41,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Path drawRandomPolygon(Size size) {
    final random = Random();
    final path = Path();
    final numberOfPoints = random.nextInt(6) + 2;

    final halfWidth = size.width / 2;
    final externalRadius = halfWidth;
    final degreesPerStep = (2 * pi) / numberOfPoints;

    path.moveTo(halfWidth + externalRadius * cos(0),
        halfWidth + externalRadius * sin(0));

    for (int i = 1; i <= numberOfPoints; i++) {
      final angle = i * degreesPerStep;
      final radius = externalRadius * (random.nextDouble() * 0.5 + 0.5);
      path.lineTo(
          halfWidth + radius * cos(angle), halfWidth + radius * sin(angle));
    }
    path.close();
    return path;
  }

  setTimeslotDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.white),
              width: 305.w,
              height: 353.h,
              padding: const EdgeInsets.all(16),
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image(
                          image:
                              const AssetImage("images/complete_request.png"),
                          fit: BoxFit.cover,
                          width: 143.w,
                          height: 143.h),
                      Text(
                        'Completed !',
                        style: TextStyle(
                            fontSize: 25.sp,
                            color: primaryColor,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Inter"),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.h),
                        child: Text(
                          'Timeslot has been updated successfully.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 17.sp,
                              color: const Color(0x50000000),
                              fontWeight: FontWeight.bold,
                              fontFamily: "Inter"),
                        ),
                      ),
                      SizedBox(height: 6.h),
                      SizedBox(
                        height: 50.h,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 15.w),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            border: Border.all(
                              color: primaryColor,
                              width: 1.w,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.sp)),
                          ),
                          child: ElevatedButton(
                            onPressed: () => Navigator.pop(context),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: primaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12.sp)),
                              ),
                            ),
                            child: Text(
                              "OK THANKS",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22.sp,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.bold,
                                height: 0.02.h,
                                letterSpacing: -0.41,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: ConfettiWidget(
                      confettiController: _controllerCenter,
                      blastDirectionality: BlastDirectionality.explosive,
                      shouldLoop: false,
                      colors: const [
                        Colors.green,
                        Colors.blue,
                        Colors.pink,
                        Colors.orange,
                        Colors.purple
                      ],
                      createParticlePath: drawRandomPolygon,
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
