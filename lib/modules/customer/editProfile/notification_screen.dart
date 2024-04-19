import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '/../../core/utils/app_color.dart';

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
            color: AppColors.onPrimary,
            fontSize: 37,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 8.h),
                child: Text(
                  "New",
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
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
                    color: AppColors.newNotification,
                  );
                },
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: const Divider(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                child: Text(
                  "Older",
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
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
      margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
      child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(
              Radius.circular(10.sp),
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10.w),
                child: CircleAvatar(
                  backgroundImage: const AssetImage('assets/images/photo.png'),
                  // You can replace this with your image path
                  radius: 25.sp,
                ),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: Text(
                  title,
                  maxLines: 2,
                  style: TextStyle(
                    color: AppColors.primary,
                    fontWeight: FontWeight.w700,
                    fontSize: 18.sp,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          )),
    );
  }
}
//the api connection
/*import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/utils/app_color.dart';
import 'package:http/http.dart' as http;*/

/*class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  List<String> newNotifications = [];
  List<String> olderNotifications = [];

  @override
  void initState() {
    super.initState();
    fetchNotifications();
  }

  Future<void> fetchNotifications() async {
    // Replace the URL with your backend API endpoint
    final newNotificationsResponse =
    await http.get(Uri.parse('YOUR_BACKEND_API_URL/newNotifications'));
    final olderNotificationsResponse =
    await http.get(Uri.parse('YOUR_BACKEND_API_URL/olderNotifications'));

    if (newNotificationsResponse.statusCode == 200) {
      setState(() {
        newNotifications = List<String>.from(newNotificationsResponse.body);
      });
    }

    if (olderNotificationsResponse.statusCode == 200) {
      setState(() {
        olderNotifications = List<String>.from(olderNotificationsResponse.body);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notifications",
          textAlign: TextAlign.start,
          style: TextStyle(
            color: AppColors.onPrimary,
            fontSize: 37,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 8.h),
                child: Text(
                  "New",
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
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
                    color: AppColors.newNotification,
                  );
                },
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: const Divider(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                child: Text(
                  "Older",
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
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
    Key? key,
    required this.title,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(
            Radius.circular(10.sp),
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10.w),
              child: CircleAvatar(
                backgroundImage: const AssetImage('assets/images/photo.png'),
                // You can replace this with your image path
                radius: 25.sp,
              ),
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: Text(
                title,
                maxLines: 2,
                style: TextStyle(
                  color: AppColors.primary,
                  fontWeight: FontWeight.w700,
                  fontSize: 18.sp,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}*/
