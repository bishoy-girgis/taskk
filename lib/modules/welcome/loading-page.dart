import 'package:flutter/material.dart';
import 'package:sanai3ey/modules/introduction/onbording.dart';
import 'package:sanai3ey/shared/constants/constants.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedSplashScreen(
        splashIconSize: 300,
          backgroundColor: primaryColor,
          splashTransition: SplashTransition.scaleTransition,
          pageTransitionType: PageTransitionType.rightToLeft,
          splash: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Image(
                  image: AssetImage('images/logo.png'),
                  height:220.0 ,
                  width: 220.0,
                ),
                Text(
                  'SANAI3EY',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    color:secondaryColor,
                  ),
                ),
              ],
            ),
          ),
          nextScreen: const Onbording()),
    );
  }
}
