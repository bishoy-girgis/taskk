import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:awesome_bottom_bar/widgets/inspired/inspired.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/../../../modules/customer/editProfile/profile_page.dart';
import '../../core/utils/app_color.dart';
import 'ChooseServicePage.dart';

import 'package:provider/provider.dart'; // Add this line to import the provider package
import '../../models/user-model.dart';

class ServiceCregory extends StatefulWidget {
  const ServiceCregory({super.key});

  @override
  State<ServiceCregory> createState() => _HomePageState();
}

class _HomePageState extends State<ServiceCregory> {
  int currentIndex = 0;
  List<Widget> bottom = [
    ChooseServicePage(),
    ProfilePage(),
    ProfilePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    final userModel = Provider.of<UserModel?>(context);
    return Scaffold(
      extendBody: true,
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


