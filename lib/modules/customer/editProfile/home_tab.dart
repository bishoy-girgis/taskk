import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/../../modules/craftsman_details/craftsman_details.dart';
import '/../../modules/location/location.dart';
import '/../../config/routes.dart';
import '/../../core/utils/app_color.dart';
import '/../../modules/service category/ServiceCategory.dart';
class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  final List<String> images = [
    'images/grid.png',
    'images/grid.png',
    'images/grid.png',
    'images/grid.png',
    'images/grid.png',
    'images/grid.png',
  ];
  final List<String> categoriesImages = [
    'images/Ellipse11.png',
    'images/Ellipse12.png',
    'images/Ellipse13.png',
    'images/Ellipse14.png',
    'images/Ellipse16.png',
    'images/more.png',
  ];
  final List<String> categoriesNames = [
    'Cleaning',
    'Repairing',
    'Painting',
    'Salon&spa',
    'Healthcare',
    'more',
  ];

  late PageController _pageController;
  int _currentPage = 0;
  String address = 'Cairo, Egypt'; // Default address

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);

    Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (_currentPage < images.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 150,
            child: Stack(
              children: [
                Container(
                  color: AppColors.primary,
                  height: 100,
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Your Location",
                        style: TextStyle(
                          color: AppColors.hint,
                          fontSize: 15.sp,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                CupertinoIcons.location_solid,
                                color: AppColors.onPrimary,
                              ),
                              SizedBox(
                                width: 2.w,
                              ),
                              Text(
                                address,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Inter",
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => Location(),
                                ),
                              ).then((value) {
                                if (value != null) {
                                  setState(() {
                                    address = value;
                                  });
                                }
                              });
                            },
                            child: Text(
                              "CHANGE",
                              style: TextStyle(
                                color: AppColors.onPrimary,
                                fontFamily: "Inter",
                                fontSize: 17.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 70.h,
                  right: 20.w,
                  child: Card(
                    color: Colors.white,
                    elevation: 8,
                    //borderRadius: BorderRadius.all(Radius.circular(15)),
                    child: SizedBox(
                      width: 340.w,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.0.w),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search for a service ..",
                            hintStyle: TextStyle(
                              fontFamily: "Inter",
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w700,
                            ),
                            prefixIcon: const Icon(
                              Icons.search,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 200.h,
            child: PageView.builder(
              controller: _pageController,
              itemCount: images.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0.sp),
                    child: Image.asset(
                      images[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
            ),
          ),
          SizedBox(
            height: 20.h,
            child: Center(
              child: ListView.separated(
                shrinkWrap: true,
                // Add this line
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => CircleAvatar(
                  backgroundColor: _currentPage == index
                      ? AppColors.onPrimary
                      : Colors.black12,
                  radius: 4.sp,
                ),
                separatorBuilder: (context, index) => SizedBox(
                  width: 2.w,
                ),
                itemCount: images.length,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Top Services",
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(
                        builder: (_) =>  ServiceCregory(),
                    ),
                    );
                  },
                  child: Text(
                    "See all",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.onPrimary,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100.h,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 8.0.w,
                vertical: 8.h,
              ),
              child: ListView.separated(
                itemCount: categoriesImages.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(
                      builder: (_) =>  const ServiceCregory(),
                    ),
                    );
                  },
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 30.sp,
                        backgroundColor: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: index == categoriesImages.length - 1 ? 10.0.w : 0,
                            horizontal: index == categoriesImages.length - 1 ? 10.0.h : 0,
                          ),
                          child: Image.asset(
                            categoriesImages[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text(
                        categoriesNames[index],
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w700,
                          color: const Color(0x80000000),
                        ),
                      )
                    ],
                  ),
                ),
                separatorBuilder: (BuildContext context, int index) => SizedBox(
                  width: 10.w,
                ),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
            child: SizedBox(
              width: double.infinity,
              child: Text(
                "Best Worker In The Community",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: "Inter",
                  fontSize: 17.sp,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 25.h),
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: 2,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) => Card(
                elevation: 20,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const CraftsManDetails(),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: const AssetImage(
                            "images/crafsman_pic.png",
                          ),
                          width: 60.w,
                          height: 80.h,
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Text(
                          "Nour Ahmed",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontFamily: "Inter",
                            fontSize: 13.sp,
                          ),
                        ),
                        Row(
                          children: [
                            const Icon(Icons.handyman),
                            Text(
                              "Painting Service",
                              style: TextStyle(
                                fontFamily: "Inter",
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w700,
                                color: const Color(0x80000000),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              CupertinoIcons.location_solid,
                              color: AppColors.onPrimary,
                            ),
                            SizedBox(
                              width: 2.w,
                            ),
                            Text(
                              "Cairo, Egypt",
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Inter",
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        const Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "50\$/hour",
                              style: TextStyle(
                                fontFamily: "Inter",
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                                Text(
                                  "4.9",
                                  style: TextStyle(
                                    fontFamily: "Inter",
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
