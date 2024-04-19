import 'package:flutter/material.dart';

class BuildDot extends StatelessWidget {
  final Color Dotcolor;

  const BuildDot({Key? key ,
    required this.Dotcolor,
  }) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 10,
      width: 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Dotcolor,
        boxShadow: [BoxShadow(
            color:Colors.black.withOpacity(0.25),
            offset: const Offset(6, 6),
            blurRadius: 5,
            spreadRadius: 0
        )],
      ),
    );
  }
}

class BuildDot1 extends StatelessWidget {
  final Color Dotcolor;
  final bool Ispage;
  final String text;

  const BuildDot1({
    required this.Dotcolor,
    required this.Ispage,
    required this.text
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Dotcolor,
        boxShadow: [BoxShadow(
            color:Colors.black.withOpacity(0.25),
            offset: const Offset(6, 6),
            blurRadius: 5,
            spreadRadius: 0
        )],
      ),
      child: Ispage?
      const Icon(Icons.check_circle_outline ,color: Colors.white, size: 30.0,)
          :Text(
        text!,
        textAlign:TextAlign.center,
        style: const TextStyle(
            color: Colors.white,
            fontSize: 22.0
        ),
      ),
    );
  }
}

