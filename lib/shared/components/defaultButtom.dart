import 'package:flutter/material.dart';
import 'package:sanai3ey/shared/constants/constants.dart';

class DefaultButtom extends StatelessWidget {
  final GestureTapCallback onPressed;
  Color background ;
  final String text;
  double width ;
  double height ;
  double redius ;

   DefaultButtom({Key? key ,
    required this.onPressed,
    required this.text,
     this.redius=15.0,
     this.width =296.0,
     this.height =52.74,
     this.background=secondaryColor,
  }) :super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: background,
        fixedSize: Size(width, height),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(redius)
        ),
      ),
      child: Text(
        text ,
        style: const TextStyle(
            color: Colors.white,
            fontSize: 27.0,
            fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}





