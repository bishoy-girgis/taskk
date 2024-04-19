import 'package:flutter/material.dart';
import 'package:sanai3ey/shared/constants/constants.dart';

class CuInkWell extends StatelessWidget {
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? text;
  final bool? enabled;
  final Function()? onTap;
  final TextEditingController? textEditingControllerController;

  const CuInkWell(
      {this.text,
      this.onTap,
      this.prefixIcon,
      this.suffixIcon,
      this.enabled,
      this.textEditingControllerController,
      super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          width: 350,
          height: 51,
          decoration: ShapeDecoration(
            gradient: LinearGradient(
              end: const Alignment(1.00, -0.02),
              begin: const Alignment(-1, 0.02),
              colors: [const Color(0x47005581), Colors.white.withOpacity(0)],
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
          ),
          padding: const EdgeInsets.all(6.0),
          child: TextField(
            controller: textEditingControllerController,
            enabled: enabled,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: text!,
              hintStyle:  TextStyle(
                color: primaryColor,
                fontSize: 18,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
              ),
              prefixIcon: Padding(
                padding: const EdgeInsets.all(2.0),
                child: prefixIcon,
              ),
              suffixIcon: suffixIcon,
            ),
          )),
    );
  }
}
