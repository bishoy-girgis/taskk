import 'package:flutter/material.dart';
import 'package:sanai3ey/shared/constants/constants.dart';


class RadioButtom extends StatefulWidget {
  const RadioButtom({super.key});

  @override
  State<RadioButtom> createState() => _RadioButtomState();
}

class _RadioButtomState extends State<RadioButtom> {
  int value = 0;
  Widget CustomRadioButton(String text, int index ,String imgName) {
    return OutlinedButton(
      style: ButtonStyle(
          backgroundColor:MaterialStateColor.resolveWith((states) => (value == index) ? secondaryColor : Colors.white),
          side:MaterialStateBorderSide.resolveWith((states) => const BorderSide(color: secondaryColor, width: 2)),
          fixedSize: MaterialStateProperty.resolveWith((states) => const Size(125, 240)),
          shape: MaterialStateProperty.resolveWith((states) =>  RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)))
      ),
      onPressed: () {
        setState(() {
          value = index;
        });
      },
      child:  Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            Text(
              text,
              style: TextStyle(
                  color: (value == index) ? Colors.white : secondaryColor,
                  fontSize: 20.0
              ),
            ),
            Image(
              image: AssetImage('images/'+ imgName),
              width: 220.0,
              height: 200.0,
            ),
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      children:[
        CustomRadioButton("Female", 1 ,'female.png'),
        const SizedBox(width: 10.0,),
        CustomRadioButton("Male", 2 ,'male.png'),
      ],
    );
  }

}