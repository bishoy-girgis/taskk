import 'package:flutter/material.dart';
import 'booking_list.dart';
import 'Current_Booking.dart';


class BookingPage extends StatelessWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFF005581),
            leading: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Color(0xFFFFD200),
                ),
              ),
            ), //back
            title: const Text(
              "Booking List",
              style: TextStyle(
                color: Color(0xFFFFD200),
                fontFamily: 'Inter',
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Text(
                    'New',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Current',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
              indicator: BoxDecoration(
                color: Color(0xFFFFD200),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(10), // Adjust top radius to change indicator height
                ),
              ),
              indicatorColor: Color(0xFFFFD200),
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: Colors.white, // Change the color of the selected tab label
              unselectedLabelColor: Colors.white, // Change the color of unselected tab labels

            ),

          ),
          body: const TabBarView(
            children: [
              NewBookingPage(),
              CurrentBookingPage(),
            ],
          ),

        ),
      ),
    );
  }
}
