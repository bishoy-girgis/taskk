import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '/../../core/utils/app_color.dart';
import '/../../providers/profile_provider.dart';
import '/../../shared/components/ink_well.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    var profileProvider = Provider.of<ProfileProvider>(context);

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(70.sp),
          )),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 60.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 70.sp,
              backgroundColor: Colors.transparent,
              child: Image.asset(
                "assets/images/photo.png",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 21.h,
            ),
            const Text(
              'Rawanmoha12',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
            SizedBox(
              height: 13.h,
            ),
            SizedBox(
              height: 50.h,
              width: 296.w,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.sp),
                  ),
                  backgroundColor: AppColors.onPrimary,
                ),
                onPressed: () {
                  profileProvider.onPageChange(1);
                },
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 0.h),
                  child: Text(
                    'Edit Profile',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 27.sp,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            CuInkWell(
              enabled: false,
              text: 'Helps',
              prefixIcon: Icon(
                Icons.help_center_outlined,
                color: AppColors.primary,
              ),
              suffixIcon: Icon(
                Icons.arrow_forward_ios,
                color: AppColors.primary,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            CuInkWell(
              enabled: false,
              text: 'Logout',
              prefixIcon: Icon(
                Icons.logout,
                color: AppColors.primary,
              ),
              suffixIcon: Icon(
                Icons.arrow_forward_ios,
                color: AppColors.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
