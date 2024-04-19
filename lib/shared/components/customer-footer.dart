import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:awesome_bottom_bar/widgets/inspired/inspired.dart';
import 'package:flutter/material.dart';
import 'package:sanai3ey/modules/craftsman/notification_screen.dart';
import 'package:sanai3ey/modules/customer/editProfile/edit_profile.dart';
import 'package:sanai3ey/modules/customer/editProfile/profile_page.dart';
import 'package:sanai3ey/modules/customer/editProfile/reset_password.dart';
import 'package:sanai3ey/shared/constants/constants.dart';
import '../../modules/customer/editProfile/homepage.dart';

class CustFooter extends StatefulWidget {
  const CustFooter({super.key});

  @override
  State<CustFooter> createState() => _CustFooterState();
}

class _CustFooterState extends State<CustFooter> {
  int currentIndex = 0;
  List<Widget> bottom = [
    const HomePage(),
    const ResetPassword(),
    const EditProfile(),
    const ProfilePage(),
  ];

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
      body:
      bottom[currentIndex],
      bottomNavigationBar: BottomBarInspiredOutside(
        items: const [
          TabItem(
            icon: Icons.home,
            // title: 'Home',
          ),
          TabItem(
            icon: Icons.calendar_today_outlined,
          ),
          TabItem(
            icon: Icons.payment,
          ),
          TabItem(
            icon: Icons.person,
          ),
        ],
        chipStyle: const ChipStyle(background: secondaryColor),
        itemStyle: ItemStyle.circle,
        elevation: 4,
        backgroundColor: primaryColor,
        color: Colors.white,
        colorSelected: Colors.white,
        indexSelected: currentIndex,
        onTap: (int index) => setState(() {
          currentIndex = index;
        }),
        top: -28,
        animated: true,
      ),
    );
  }
}
