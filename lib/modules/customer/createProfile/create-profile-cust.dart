import 'dart:io';
import 'package:flutter/material.dart';
import 'package:sanai3ey/modules/customer/createProfile/cust-gender-page.dart';
import 'package:sanai3ey/shared/components/loading.dart';
import 'package:sanai3ey/shared/constants/constants.dart';
import '../../../shared/components/defaultButtom.dart';
import '../../../shared/components/textfield.dart';
import 'package:intl/intl.dart';
import 'package:image_picker/image_picker.dart';



class CreateProfileCustPage extends StatefulWidget {
  const CreateProfileCustPage({super.key});

  @override
  State<CreateProfileCustPage> createState() => _CreateProfileCustPage();
}

class _CreateProfileCustPage extends State<CreateProfileCustPage> {
  var firstnamecontroller = TextEditingController();

  var lastnamecontroller = TextEditingController();

  var locationcontroller =TextEditingController();

  var birthdayController = TextEditingController();
  String formattedDate = 'Birthday Date';

  XFile? image;

  final ImagePicker picker = ImagePicker();

  Future getImage(ImageSource media) async {
    var img = await picker.pickImage(source: media);

    setState(() {
      image = img;
    });
  }
  void myAlert() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            title: const Text(
                'Please choose media to select',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            content: Container(
              height: MediaQuery.of(context).size.height / 6,
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      getImage(ImageSource.gallery);
                    },
                    child: const Row(
                      children: [
                        Icon(Icons.image,color:Colors.black),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                            'From Gallery',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      getImage(ImageSource.camera);
                    },
                    child: const Row(
                      children: [
                        Icon(Icons.camera_alt_outlined ,color:Colors.black),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                            'From Camera',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
  @override
  void initState() {
    birthdayController.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(
              children:[
                const Image(
                  image: AssetImage('images/register.jpg'),
                  width: double.infinity,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 120.0),
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: primaryColor,
                      borderRadius:BorderRadius.only(topLeft: Radius.circular(100.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Column(
                        children: [
                          const Text(
                            'Complete Profile',
                            style: TextStyle(
                                color: secondaryColor,
                                fontSize: 40.0,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          const Text(
                            'Tell us more about you',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(
                                  1,
                                      (index) => const BuildDot1(Dotcolor: Colors.green, Ispage: true, text: '1')
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(
                                       3,
                                      (index) => const BuildDot(Dotcolor: Colors.grey)
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(
                                  1,
                                      (index) =>const BuildDot1(Dotcolor: Colors.grey, Ispage: false, text: '2'),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(
                                  3,
                                      (index) =>const BuildDot(Dotcolor: Colors.grey),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(
                                  1,
                                      (index) => const BuildDot1(Dotcolor: Colors.grey, Ispage: false, text: '3'),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15.0),
                            child: Form(
                              child: Column(
                                children:[
                                  Stack(
                                    children: [
                                      image != null ?
                                      ClipRRect(
                                          borderRadius: BorderRadius.circular(150.0),
                                          child: Image.file(
                                            File(image!.path),
                                            fit: BoxFit.cover,
                                            width: 130.0,
                                            height: 130.0,
                                          ),
                                        )
                                      :ClipRRect(
                                        borderRadius:BorderRadius.circular(150.0),
                                        child: const Image(
                                          image: AssetImage('images/male.png'),
                                          width: 130.0,
                                          height: 130.0,
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 0,
                                        right: -8,
                                        child: IconButton(
                                          onPressed: (){
                                            myAlert();
                                          },
                                          icon: const Icon(Icons.add_circle_outlined),color: secondaryColor,iconSize: 40.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 40.0,
                                  ),
                                  DefaultTextFormField(
                                    hint: 'First Name',
                                    preicon:  const Icon(
                                        Icons.person_2_outlined
                                    ),
                                    controller: firstnamecontroller,
                                    keyboardType: TextInputType.name,
                                  ),
                                  const SizedBox(
                                    height: 20.0,
                                  ),
                                  DefaultTextFormField(
                                    hint: 'Last Name',
                                    preicon:  const Icon(
                                        Icons.person_2_outlined
                                    ),
                                    controller: lastnamecontroller,
                                    keyboardType: TextInputType.name,
                                  ),
                                  const SizedBox(
                                    height: 20.0,
                                  ),
                                  DefaultTextFormField(
                                      onTap:() async {
                                      DateTime? pickedDate = await showDatePicker(
                                          context:context ,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime(2000),
                                          lastDate: DateTime(2100)
                                      );
                                      if (pickedDate !=null){
                                        formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                                        setState(() {
                                          birthdayController.text = formattedDate;
                                        });
                                      }else{
                                        print('data is not selected');
                                      }
                                    } ,
                                      hint: formattedDate,
                                      preicon: const Icon(Icons.calendar_month_outlined),
                                      controller: birthdayController,
                                      keyboardType: TextInputType.datetime,
                                      readOnly: true,
                                  ),
                                  const SizedBox(
                                    height: 20.0,
                                  ),
                                  DefaultTextFormField(
                                    hint: 'Location',
                                    preicon:  const Icon(
                                        Icons.location_on_outlined
                                    ),
                                    controller: locationcontroller,
                                    keyboardType: TextInputType.streetAddress,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 80.0,
                          ),
                          DefaultButtom(
                              onPressed: (){
                                Navigator.push(context,MaterialPageRoute(
                                  builder: (_) => const CustGenderPage(),
                                ),
                                );
                              },
                              text: 'Next'
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ]
          ),
        ),
      ),
    );
  }
}
