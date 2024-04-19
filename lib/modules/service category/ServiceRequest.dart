import 'package:flutter/material.dart';
import 'package:sanai3ey/modules/service%20category/ChooseCraftsMan.dart';
import 'package:sanai3ey/shared/constants/constants.dart';
import 'package:sanai3ey/shared/components/defaultButtom.dart';

class ServiceRequestPage extends StatelessWidget {
  final TextEditingController LocationController = TextEditingController();
  final TextEditingController DetailsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        title: const Text(
          "Choose\n Your Service",
          style: TextStyle(
            color: Color(0xFF005581),
            fontFamily: 'Inter',
            fontWeight: FontWeight.bold,
            fontSize: 32,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Color(0xFF005581),
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 30.0),
                const Text(
                  'Where?',
                  style: TextStyle(
                    color: Color(0xFF005581),
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5.0),
                Container(
                  width: 296.0,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.blueGrey,Colors.white],
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(4, 3),
                      ),
                    ],
                  ),
                  child: TextFormField(
                    controller: LocationController,
                    style: const TextStyle(
                      color: Color(0xFF005581),
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Your Location',
                      prefixIcon: Icon(Icons.location_city, color: primaryColor),
                      hintStyle: TextStyle(
                        color: Color(0xFF005581),
                        fontSize: 18.0,
                        //fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 80.0),
                const Text(
                  'Tell us the details of your task!',
                  style: TextStyle(
                    color: Color(0xFF005581),
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5.0),
                Container(
                  height: 180,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.blueGrey,Colors.white],
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: TextFormField(
                    controller: DetailsController ,
                    style: const TextStyle(
                      color: Color(0xFF005581),
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Summary of what you need to done, '
                          'be sure to include details like the size '
                          'of your space, any tools needed, and how to get in...',
                      hintStyle: TextStyle(
                        color: Color(0xFF005581),
                        fontSize: 15.0,
                        //fontWeight: FontWeight.bold,
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
                    ),
                    keyboardType: TextInputType.multiline,
                    maxLines: 5,
                  ),
                ),
                const SizedBox(height: 150.0),
                Align(
                  alignment: Alignment.center,
                  child: DefaultButtom(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ChooseCraftsManPage(),
                        ),
                      );
                    },
                    text: 'Choose Craftsman',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/*void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ServiceRequestPage(),
  ));
}*/
