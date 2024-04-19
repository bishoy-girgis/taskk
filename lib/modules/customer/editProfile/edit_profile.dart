import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:sanai3ey/modules/craftsman/notification_screen.dart';
import 'package:sanai3ey/modules/customer/editProfile/reset_password.dart';
import 'package:sanai3ey/shared/components/defaultButtom.dart';
import 'package:sanai3ey/shared/constants/constants.dart';
import '../../../shared/components/ink_well.dart';



class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  File? updateImage;
  String? imageUrl;
  TextEditingController fNameController = TextEditingController();
  TextEditingController lNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        iconTheme: IconThemeData(
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
              icon: Icon(
                Icons.notifications_on,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
            height: 660,
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundColor: Colors.transparent,
                          child: Image.asset(
                            "images/female.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  height: 200,
                                  color: Colors.white,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 10,
                                  ),
                                  child: Center(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        DefaultButtom(
                                          onPressed: () {
                                            pickImage();
                                            Navigator.pop(context);
                                          },
                                          text: 'Take Photo',
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        DefaultButtom(
                                          onPressed: () {
                                            getImage();

                                            Navigator.pop(context);
                                          },
                                          text: 'Choose Photo',
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            padding: const EdgeInsets.all(6),
                            child: const Icon(
                              Icons.edit,
                              color: Colors.white,
                              size: 22,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CuInkWell(
                    textEditingControllerController: fNameController,
                    text: 'rawan',
                    prefixIcon: Icon(
                      Icons.person_outlined,
                      color: primaryColor,
                    ),
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                  CuInkWell(
                      textEditingControllerController: lNameController,
                      text: 'mohamed',
                      prefixIcon: Icon(
                        Icons.person_outlined,
                        color: primaryColor,
                      )),
                  const SizedBox(
                    height: 11,
                  ),
                  CuInkWell(
                      textEditingControllerController: userNameController,
                      enabled: false,
                      text: 'Rawanmoha12',
                      prefixIcon: Icon(
                        Icons.person_outlined,
                        color: primaryColor,
                      )),
                  const SizedBox(
                    height: 11,
                  ),
                  CuInkWell(
                      textEditingControllerController: emailController,
                      enabled: false,
                      text: 'rawanmohamed@gmail.com',
                      prefixIcon: Icon(
                        Icons.mail_outlined,
                        color: primaryColor,
                      )),
                  const SizedBox(
                    height: 11,
                  ),
                  CuInkWell(
                      textEditingControllerController: phoneController,
                      text: '01025378301',
                      prefixIcon: Icon(
                        Icons.call_outlined,
                        color: primaryColor,
                      )),
                  const SizedBox(
                    height: 11,
                  ),
                  CuInkWell(
                    enabled: false,
                    text: 'Reset Password',
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: primaryColor,
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (_) => const ResetPassword(),
                      ),);
                    },
                    suffixIcon: Icon(
                      Icons.arrow_forward_ios,
                      color: primaryColor,
                    ),
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                  DefaultButtom(onPressed: () {}, text: "UPDATE"),
                ],
              ),
            )),
      ),
    );
  }

  void pickImage() async {
    var image = await ImagePicker().pickImage(source: ImageSource.camera);

    if (image != null) {
      setState(() {
        updateImage = File(image.path);
      });
    }
  }

  Future<void> getImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      updateImage = File(pickedFile.path);
    }
  }
}
