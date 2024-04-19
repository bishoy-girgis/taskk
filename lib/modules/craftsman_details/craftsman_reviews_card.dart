import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sanai3ey/shared/constants/constants.dart';

class CraftsmanRevCard extends StatelessWidget {
  final bool hasText;

  const CraftsmanRevCard({this.hasText = true, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              width: double.infinity,
              child: Card(
                shape: const OutlineInputBorder(
                    borderSide: BorderSide(color: primaryColor)),
                elevation: 10,
                shadowColor: primaryColor,
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 90.0.w,
                      top: 10.h,
                      bottom: 15.h,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Kareem ahmed",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.sp,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.41,
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        RatingBarIndicator(
                          rating: 4.75,
                          itemBuilder: (context, index) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          itemCount: 5,
                          itemSize: 20.0.sp,
                          direction: Axis.horizontal,
                        ),
                        hasText
                            ? SizedBox(
                                height: 5.h,
                              )
                            : const SizedBox(),
                        hasText
                            ? Padding(
                                padding: EdgeInsets.only(right: 8.w),
                                child: Text(
                                  "Youssef's work is precise, exceeding expectations.",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15.sp,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: -0.41,
                                  ),
                                ),
                              )
                            : const SizedBox(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          top: 0,
          left: 20.w,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: primaryColor),
              borderRadius: BorderRadius.all(
                Radius.circular(25.sp),
              ),
            ),
            child: CircleAvatar(
              radius: 25.sp,
              backgroundImage: const AssetImage("images/intro3.jpg"),
            ),
          ),
        )
      ],
    );
  }
}
