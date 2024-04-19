import 'dart:math';

import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sanai3ey/models/timeCraftMan_model.dart';
import '../../shared/constants/constants.dart';

class ChooseDateTime extends StatefulWidget {
  ChooseDateTime({super.key});

  @override
  State<ChooseDateTime> createState() => _ChooseDateTimeState();
}

class _ChooseDateTimeState extends State<ChooseDateTime> {
  late ConfettiController _controllerCenter;
  late List<DateTime?> _dates = [];
  late int _selectedIndex = -1;
  bool selected = false;
  List<TimeCraftManModel> times = [
    TimeCraftManModel(time: "10:00 AM", status: "empty"),
    TimeCraftManModel(time: "01:00 PM", status: "booked"),
    TimeCraftManModel(time: "03:00 PM", status: "empty"),
    TimeCraftManModel(time: "05:00 PM", status: "empty"),
    TimeCraftManModel(time: "07:00 PM", status: "empty"),
  ];

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
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: secondaryColor,
          ),
        ),
        backgroundColor: primaryColor,
        title: Text(
          "Choose Date & Time",
          style: TextStyle(
            color: secondaryColor,
            fontSize: 27.sp,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
            height: 0.02.h,
            letterSpacing: -0.41,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Select Data",
              style: TextStyle(
                  color: secondaryColor,
                  fontSize: 27.sp,
                  fontFamily: 'Inter',
                  letterSpacing: -0.41,
                  fontWeight: FontWeight.bold),
            ),
            CalendarDatePicker2(
              config: CalendarDatePicker2Config(
                controlsHeight: 100.h,
                calendarType: CalendarDatePicker2Type.single,
                weekdayLabelTextStyle: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0x80000000),
                ),
                currentDate: DateTime.now(),
                dayTextStyle: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
                controlsTextStyle: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                selectableDayPredicate: (day) => true,
                selectedDayHighlightColor: primaryColor,
                todayTextStyle: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
                disabledDayTextStyle: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              value: _dates,
              onValueChanged: (dates) => _dates = dates,
            ),
            Text(
              "Select Time",
              style: TextStyle(
                  color: secondaryColor,
                  fontSize: 27.sp,
                  fontFamily: 'Inter',
                  letterSpacing: -0.41,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 6.h,
            ),
            SizedBox(
              height: 60.h,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(left: 10.w),
                child: ListView.builder(
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
                            selected = true;
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
                        margin: EdgeInsets.symmetric(
                            horizontal: 6.w, vertical: 5.h),
                        height: 55.h,
                        width: 90.w,
                        child: Center(
                            child: Text(times[index].time,
                                style: TextStyle(
                                    fontSize: 17.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold))),
                      ),
                    );
                  },
                  scrollDirection: Axis.horizontal,
                  itemCount: times.length,
                ),
              ),
            ),
            SizedBox(
              height: 6.h,
            ),
            selected == true
                ? Center(
                    child: Text(
                      "Time Selected Successfully..",
                      style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: 17.sp,
                          fontWeight: FontWeight.bold,
                          color: const Color(0XFF008000)),
                    ),
                  )
                : Container(),
            const Spacer(),
            SizedBox(
              height: 60.h,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 25.w),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: secondaryColor,
                  border: Border.all(
                    color: secondaryColor,
                    width: 1.w,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.sp)),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    completeRequestDialog();
                    _controllerCenter.play();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: secondaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.sp)),
                    ),
                  ),
                  child: Text(
                    "Complete Request",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.sp,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      height: 0.02.h,
                      letterSpacing: -0.41,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
          ],
        ),
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

  completeRequestDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.white),
              width: 400.w,
              height: 410.h,
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
                        'Booking Requested',
                        style: TextStyle(
                            fontSize: 25.sp,
                            color: primaryColor,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Inter"),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.h),
                        child: Text(
                          'Sanai3ey has accepted your request. you can check the status by tapping below button',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15.sp,
                              color: const Color(0x50000000),
                              fontWeight: FontWeight.bold,
                              fontFamily: "Inter"),
                        ),
                      ),
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
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: primaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12.sp)),
                              ),
                            ),
                            child: Text(
                              "VIEW BOOKING LIST",
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
                      SizedBox(
                        height: 10.h,
                      ),
                      SizedBox(
                        height: 50.h,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 15.w),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: const Color(0xFFDADADA),
                            border: Border.all(
                              color: const Color(0xFFDADADA),
                              width: 1.w,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.sp)),
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFDADADA),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12.sp)),
                              ),
                            ),
                            child: Text(
                              "CANCEL",
                              style: TextStyle(
                                color:
                                    const Color(0xFF000000).withOpacity(0.25),
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
