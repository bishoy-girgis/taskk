import 'package:flutter/material.dart';
import 'package:sanai3ey/shared/components/loading.dart';
import 'package:sanai3ey/shared/constants/constants.dart';
import '../../../shared/components/defaultButtom.dart';
import '../../../shared/components/gender.dart';
import 'createportfolio.dart';

class CraftsmanGender extends StatefulWidget {
  const CraftsmanGender({Key? key}) : super(key: key);

  @override
  State<CraftsmanGender> createState() => _CraftsmanGender();
}

class _CraftsmanGender extends State<CraftsmanGender> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(
            children: [
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
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(100.0)),
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
                              fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          'Tell us more about you',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold),
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
                                      (index) => const BuildDot(Dotcolor: Colors.green)
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                1,
                                    (index) =>const BuildDot1(Dotcolor: Colors.green, Ispage: true, text: '2'),
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
                                    (index) => const BuildDot1(Dotcolor: Colors.grey, Ispage: false, text: '4'),
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
                                children: [
                                  const Text(
                                    'Select Your Gender',
                                    style: TextStyle(
                                        color: secondaryColor,
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 40.0,
                                  ),
                                  Container(
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 47.0),
                                      child: Column(
                                        children: [
                                          RadioButtom(),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                        ),
                        const SizedBox(
                          height: 80.0,
                        ),
                        DefaultButtom(onPressed: () {
                          Navigator.push(context,MaterialPageRoute(
                            builder: (_) => CreatePortfolio() ,
                          ),
                          );
                        },
                            text: 'Next'),
                        const SizedBox(
                          height: 30.0,
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}