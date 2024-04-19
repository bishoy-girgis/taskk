import 'package:flutter/material.dart';
import 'package:sanai3ey/shared/constants/constants.dart';

class NotificationPage extends StatelessWidget {
  final List<String> newNotifications = [
    "You make a booking for cleaning service with Ahmed..",

    // Add more notifications as needed
  ];

  final List<String> olderNotifications = [
    "You make a booking for cleaning service with Ahmed..",

    // Add more notifications as needed
  ];

  NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notifications",
          textAlign: TextAlign.start,
          style: TextStyle(
            color: secondaryColor,
            fontSize: 37,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
            height: 0.02,
            letterSpacing: -0.41,
          ),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "New",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: newNotifications.length,
                itemBuilder: (context, index) {
                  return NotificationCard(
                    title: newNotifications[index],
                    color: newNotification,
                  );
                },
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Divider(),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Older",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: olderNotifications.length,
                itemBuilder: (context, index) {
                  return NotificationCard(
                    color: Colors.white,
                    title: olderNotifications[index],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NotificationCard extends StatelessWidget {
  final String title;
  final Color color;

  const NotificationCard({
    super.key,
    required this.title,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.all(8),
      child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/female.png'),
                  // You can replace this with your image path
                  radius: 25,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  title,
                  maxLines: 2,
                  style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 18),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          )),
    );
  }
}
