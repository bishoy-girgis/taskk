import 'package:flutter/material.dart';
import 'package:sanai3ey/shared/constants/constants.dart';
import '../../../shared/components/defaultButtom.dart';
import '../../../shared/components/ink_well.dart';
import '../../craftsman/notification_screen.dart';


class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController currentPasswordController = TextEditingController();
    TextEditingController newPasswordController = TextEditingController();
    TextEditingController confirmNewPasswordController =
        TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: primaryColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white
        ),
        toolbarHeight: 80,
        backgroundColor: primaryColor,
        title: const Text(
          "Hello Rawan",
          style: TextStyle(color: Colors.white),
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
              ),
            ),
          )
        ],
      ),
      body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(70),
              )),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 25.0),
                      child: SizedBox(
                        width: double.infinity,
                        child: Text(
                          'Reset Password',
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
                      ),
                    ),
                    const SizedBox(
                      height: 55,
                    ),
                    CuInkWell(
                      textEditingControllerController:
                          currentPasswordController,
                      enabled: true,
                      text: 'Current Password',
                      prefixIcon: const Icon(
                        Icons.lock_outline,
                        color: primaryColor,
                      ),
                    ),
                    const SizedBox(
                      height: 44,
                    ),
                    CuInkWell(
                      textEditingControllerController: newPasswordController,
                      enabled: true,
                      text: 'New Password',
                      prefixIcon: const Icon(
                        Icons.lock_outline,
                        color: primaryColor,
                      ),
                    ),
                    const SizedBox(
                      height: 44,
                    ),
                    CuInkWell(
                      textEditingControllerController:
                          confirmNewPasswordController,
                      enabled: true,
                      text: 'Confirm New Password',
                      prefixIcon: const Icon(
                        Icons.lock_outline,
                        color: primaryColor,
                      ),
                    ),
                  ],
                ),
                DefaultButtom(
                    onPressed: (){},
                    text: 'Update Password'
                )
              ],
            ),
          )),
    );
  }
}
