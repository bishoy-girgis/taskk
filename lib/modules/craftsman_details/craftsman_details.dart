import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/constants/constants.dart';
import 'ChooseDateTime.dart';
import 'craftsman_reviews_card.dart';

class CraftsManDetails extends StatelessWidget {
  const CraftsManDetails({super.key});

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
          "Craftsman Details",
          style: TextStyle(
            color: secondaryColor,
            fontSize: 28.sp,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
            height: 0.02.h,
            letterSpacing: -0.41,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 20.h),
        child: SizedBox(
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 150.h,
                child: Row(
                  children: [
                    Image.asset(
                      'images/female.png',
                      width: 150.w,
                    ),
                    const VerticalDivider(),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 8.0.w, vertical: 8.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.person_outline),
                              SizedBox(width: 10.0.w),
                              Text(
                                'Youssef Sameh',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.sp,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: -0.41,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8.0.h),
                          Row(
                            children: [
                              const Icon(
                                Icons.format_paint,
                                color: Colors.black54,
                              ),
                              SizedBox(width: 10.0.w),
                              Text(
                                'Painting Services',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 16.sp,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8.0.h),
                          Row(
                            children: [
                              const Icon(
                                Icons.location_on_sharp,
                                color: Colors.black54,
                              ),
                              SizedBox(width: 10.0.w),
                              const Text(
                                'Cairo,Egypt',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 16,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8.0.h),
                          Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: secondaryColor,
                              ),
                              SizedBox(width: 10.0.w),
                              Text(
                                '4.8',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 18.sp,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0.h),
              Expanded(
                child: DefaultTabController(
                  length: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TabBar(
                        labelStyle: TextStyle(
                          color: secondaryColor,
                          fontSize: 20.sp,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 0.02,
                          letterSpacing: -0.41,
                        ),
                        unselectedLabelStyle: const TextStyle(
                          color: primaryColor,
                          fontSize: 20,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 0.02,
                          letterSpacing: -0.41,
                        ),
                        indicatorColor: secondaryColor,
                        tabs: const [
                          Tab(text: 'Skills'),
                          Tab(text: 'Gallery'),
                          Tab(text: 'Reviews'),
                        ],
                      ),
                      SizedBox(height: 8.0.h),
                      Expanded(
                        child: TabBarView(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  right: 20.0.w, left: 20.w, top: 30.h),
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'About',
                                          style: TextStyle(
                                            color: primaryColor,
                                            fontSize: 22,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w700,
                                            height: 0.02,
                                            letterSpacing: -0.41,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        SizedBox(
                                          width: 400.w,
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10.0.w),
                                            child: Text(
                                              '40 years old from cairo, hard worker',
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 18.sp,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w500,
                                              ),
                                              maxLines: 4,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 50.h,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Skills',
                                          style: TextStyle(
                                            color: primaryColor,
                                            fontSize: 22.sp,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w700,
                                            height: 0.02.h,
                                            letterSpacing: -0.41,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        SizedBox(
                                          width: 400.w,
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10.0.w),
                                            child: Text(
                                              'skilled and adept trade workers that use hand tools, power tools and automated machinery in their daily work.',
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 18.sp,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w500,
                                              ),
                                              maxLines: 4,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 50.h,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Price',
                                          style: TextStyle(
                                            color: primaryColor,
                                            fontSize: 22.sp,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w700,
                                            height: 0.02.h,
                                            letterSpacing: -0.41,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        SizedBox(
                                          width: 400.w,
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10.0.w),
                                            child: Text(
                                              '30\$ / hour',
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 18.sp,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w500,
                                              ),
                                              maxLines: 4,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  right: 20.0.w, left: 20.w, top: 20.h),
                              child: GridView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 3,
                                        crossAxisSpacing: 10,
                                        mainAxisSpacing: 10,
                                        childAspectRatio: 4.w / 5.h),
                                itemBuilder: (context, index) {
                                  return Image.asset(
                                    'images/female.png',
                                    fit: BoxFit.fill,
                                  );
                                },
                                itemCount: 6,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  right: 20.0.w, left: 20.w, top: 20.h),
                              child: ListView.separated(
                                itemCount: 2,
                                // Example item count
                                itemBuilder: (context, index) {
                                  return CraftsmanRevCard(
                                    hasText: index == 1,
                                  );
                                },
                                separatorBuilder:
                                    (BuildContext context, int index) {
                                  return SizedBox(
                                    height: 20.h,
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.0.w, vertical: 10.h),
        child: Row(
          children: [
            Expanded(
                child: SizedBox(
              height: 60.h,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: secondaryColor,
                  border: Border.all(
                    color: secondaryColor,
                    width: 1.w,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(12.sp)),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>  ChooseDateTime(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: secondaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.sp)),
                    ),
                  ),
                  child: Text(
                    "Book Now",
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
            )),
            SizedBox(
              width: 20.w,
            ),
            Expanded(
                child: SizedBox(
              height: 60.h,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: secondaryColor,
                  border: Border.all(
                    color: secondaryColor,
                    width: 1.w,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(12.sp)),
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.sp)),
                    ),
                  ),
                  child: Text(
                    "Book Latter",
                    style: TextStyle(
                      color: secondaryColor,
                      fontSize: 22.sp,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      height: 0.02.h,
                      letterSpacing: -0.41,
                    ),
                  ),
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
