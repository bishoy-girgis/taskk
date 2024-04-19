import 'package:flutter/material.dart';
import 'package:sanai3ey/shared/constants/constants.dart';

class DefaultTextFormField extends StatelessWidget {
  VoidCallback? onTap;
  final bool readOnly;
  final String hint;
  final Icon preicon;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool obsecure;
  Widget ? sufficon;
  DefaultTextFormField({super.key,
    required this.hint ,
    required this.preicon ,
    required this.controller,
    required this.keyboardType,
    this.obsecure =false,
    this.sufficon,
    this.readOnly= false,
    this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width:296.0,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.white,Colors.transparent]
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: TextFormField(
        readOnly: readOnly,
        onTap: onTap,
        style: const TextStyle(
            color: primaryColor,
            fontSize: 18.0,
            fontWeight: FontWeight.bold
        ),
        obscureText: obsecure,
        cursorColor: primaryColor,
        keyboardType: keyboardType,
        controller: TextEditingController(),
        decoration: InputDecoration(
          errorStyle: const TextStyle(
              color: Colors.red,
              fontSize: 15.0
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xff005581)),
            borderRadius: BorderRadius.circular(10.0),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: const BorderSide(color:  Color(0xff005581)),
            borderRadius: BorderRadius.circular(10.0),
          ),
          hintStyle: const TextStyle(
              color: primaryColor,
              fontSize: 18.0,
              fontWeight: FontWeight.bold
          ),
          prefixIconColor:primaryColor,
          hintText: hint ,
          prefixIcon: preicon,
          suffixIcon: sufficon,
          suffixIconColor: Colors.white.withOpacity(0.3),
        ),
      ),
    );
  }
}


class DefaultTextFormFieldBigsize extends StatelessWidget {
  VoidCallback? onTap;
  final bool readOnly;
  final String hint;
  final Icon preicon;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool obsecure;
  final int lines;
  Widget ? sufficon;
  DefaultTextFormFieldBigsize({super.key,
    required this.hint ,
    required this.preicon ,
    required this.controller,
    required this.keyboardType,
    this.obsecure =false,
    this.sufficon,
    this.readOnly= false,
    this.onTap,
    required this.lines,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width:296.0,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.white,Colors.transparent]
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: TextFormField(
        maxLines: lines,
        readOnly: readOnly,
        onTap: onTap,
        style: const TextStyle(
            color: primaryColor,
            fontSize: 18.0,
            fontWeight: FontWeight.bold
        ),
        obscureText: obsecure,
        cursorColor: primaryColor,
        keyboardType: keyboardType,
        controller: TextEditingController(),
        decoration: InputDecoration(
          errorStyle: const TextStyle(
              color: Colors.red,
              fontSize: 15.0
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xff005581)),
            borderRadius: BorderRadius.circular(10.0),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: const BorderSide(color:  Color(0xff005581)),
            borderRadius: BorderRadius.circular(10.0),
          ),
          hintStyle: const TextStyle(
              color: primaryColor,
              fontSize: 18.0,
              fontWeight: FontWeight.bold
          ),
          prefixIconColor:primaryColor,
          hintText: hint ,
          prefixIcon: preicon,
          suffixIcon: sufficon,
          suffixIconColor: Colors.white.withOpacity(0.3),
        ),
      ),
    );
  }
}