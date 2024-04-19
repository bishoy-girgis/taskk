import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:awesome_bottom_bar/widgets/inspired/inspired.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'profile_page.dart';
import '/../../core/utils/app_color.dart';
import 'home_tab.dart';
import 'notification_screen.dart';

import 'package:provider/provider.dart'; // Add this line to import the provider package
import '/../../models/user-model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  List<Widget> bottom = [
    const HomeTab(),
    const HomeTab(),
    const HomeTab(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    final userModel = Provider.of<UserModel?>(context);
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        toolbarHeight: 40.h,
        backgroundColor: AppColors.primary,
        title: Text(
          userModel != null ? "Hello ${userModel.username}" : "Hello",
          style: const TextStyle(
            color: Colors.white,
            fontFamily: "Inter",
            fontSize: 23,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(
                  builder: (_) =>  NotificationPage(),
                ),
                );
              },
              icon: const Icon(
                Icons.notifications_active_outlined,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: bottom[currentIndex],
      bottomNavigationBar: BottomBarInspiredOutside(
        items: const [
          TabItem(
            icon: Icons.home,
            title: 'Home',
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
        chipStyle: ChipStyle(background: AppColors.onPrimary),
        itemStyle: ItemStyle.circle,
        elevation: 4,
        backgroundColor: AppColors.primary,
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


