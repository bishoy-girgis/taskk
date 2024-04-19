import 'package:flutter/material.dart';
import 'package:sanai3ey/shared/constants/constants.dart';
import '../../../shared/components/ink_well.dart';
import 'edit_profile.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: primaryColor,
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(70),
            )),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 70,
                backgroundColor: Colors.transparent,
                child: Image.asset(
                  "images/female.png",
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 21,
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
              const SizedBox(
                height: 13,
              ),
              SizedBox(
                height: 50,
                width: 296,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      backgroundColor: secondaryColor,
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (_) => const EditProfile(),
                      ),);
                    },
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                      child: Text(
                        'Edit Profile',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 27,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 0.03,
                          letterSpacing: -0.41,
                        ),
                      ),
                    )),
              ),
              const SizedBox(
                height: 25,
              ),
              const CuInkWell(
                enabled: false,
                text: 'Helps',
                prefixIcon: Icon(
                  Icons.help_center_outlined,
                  color: primaryColor,
                ),
                suffixIcon: Icon(
                  Icons.arrow_forward_ios,
                  color: primaryColor,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const CuInkWell(
                enabled: false,
                text: 'Logout',
                prefixIcon: Icon(
                  Icons.logout,
                  color: primaryColor,
                ),
                suffixIcon: Icon(
                  Icons.arrow_forward_ios,
                  color: primaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
