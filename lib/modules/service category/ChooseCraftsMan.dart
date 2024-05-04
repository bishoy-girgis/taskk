import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sanai3ey/core/utils/app_color.dart';
import 'package:sanai3ey/models/craftsMan_model.dart';

import '../craftsman_details/craftsman_details.dart';

class ChooseCraftsManPage extends StatelessWidget {
  ChooseCraftsManPage({super.key});

  List<CraftsManModel> crafts = [
    CraftsManModel(profileImage: "images/crafsman_pic.png",
        name: "Nour Ahmed",
        service: "Painting Service",
        location: "Cairo, Egypt",
        rating: "4.9",
        price: "50\$/hour"),
    CraftsManModel(profileImage: "images/crafsman_pic.png",
        name: "Youssef Ahmed",
        service: "Cleaning Service",
        location: "Cairo, Egypt",
        rating: "4.6", price: "40\$/hour",),
    CraftsManModel(profileImage: "images/crafsman_pic.png",
        name: "Jack ",
        service: "Painting Service",
        location: "Cairo, Egypt",
        rating: "4.7", price: "40\$/hour",),
    CraftsManModel(profileImage: "images/crafsman_pic.png",
      name: "Daniel ",
      service: "Painting Service",
      location: "Cairo, Egypt",
      rating: "4.3", price: "35\$/hour",)
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            elevation: 10,
            shadowColor: Colors.black,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            backgroundColor: const Color(0xFF005581),
            toolbarHeight: 180,
            title: Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Row(
                children: [
                  Text(
                    "Choose\n Your Craftsman ",
                    style: TextStyle(
                      color: AppColors.onPrimary,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.bold,
                      fontSize: 35.sp,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 40.sp),
                    child: ImageIcon(
                      const AssetImage("images/hamer1.png"),
                      color: AppColors.onPrimary,
                    ),
                  ),
                ],
              ),
            ),
            leading: Padding(
              padding: const EdgeInsets.only(left: 8, bottom: 30),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: AppColors.onPrimary,
                ),
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.125),
                  Text(
                    "our recommendation",
                    style: TextStyle(
                        color: AppColors.primary,
                        letterSpacing: -0.41,
                        fontFamily: 'Inter',
                        fontSize: 25.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 25.h),
                    child: GridView.builder(
                      shrinkWrap: true,
                      itemCount: crafts.length,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 4 / 5,
                          mainAxisSpacing: 8,
                          crossAxisSpacing: 12),
                      itemBuilder: (context, index) =>
                          Card(
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
                                    border: Border.all(
                                      color: const Color(0xFF005581),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(14)),
                                padding: EdgeInsets.symmetric(horizontal: 10.w),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image(
                                      image:  AssetImage(
                                      crafts[index].profileImage,
                                      ),
                                      width: 60.w,
                                      height: 70.h,
                                    ),
                                    SizedBox(
                                      height: 3.h,
                                    ),
                                    Text(
                                      crafts[index].name,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Inter",
                                        fontSize: 13.sp,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        ImageIcon(
                                          const AssetImage(
                                              "images/hamer2.png"),
                                          size: 16.sp,
                                          color: const Color(0x80000000),
                                        ),
                                        Text(
                                          crafts[index].service,
                                          style: TextStyle(
                                            fontFamily: "Inter",
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w700,
                                            color: const Color(0x80000000),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 1.h,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          size: 16.sp,
                                          CupertinoIcons.location_solid,
                                          color: const Color(0x80000000),
                                        ),
                                        SizedBox(
                                          width: 2.w,
                                        ),
                                        Text(
                                          crafts[index].location,
                                          style: TextStyle(
                                            color: const Color(0x80000000),
                                            fontFamily: "Inter",
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Divider(),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          crafts[index].price,
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
                                              crafts[index].rating,
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
            ),
          ),
        ),
        Positioned(
          top: 170.h,
          left: MediaQuery
              .of(context)
              .size
              .width * 0.12,
          child: Card(
            elevation: 10,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14), color: Colors.white),
              padding: EdgeInsets.symmetric(vertical: 22.h, horizontal: 12.w),
              width: 300.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      textAlign: TextAlign.center,
                      "Request #1241",
                      style: TextStyle(
                          color: AppColors.primary,
                          fontFamily: 'Inter',
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Text(
                    "Carpet Cleaning",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Inter',
                        fontSize: 25.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "17 helwan st, cairo",
                    style: TextStyle(
                        color: Color(0x80000000),
                        fontFamily: 'Inter',
                        fontSize: 19.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
