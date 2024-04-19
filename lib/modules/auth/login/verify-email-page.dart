import 'package:flutter/material.dart';
import 'package:sanai3ey/modules/auth/login/reset-password-page.dart';
import 'package:sanai3ey/shared/constants/constants.dart';
import '../../../shared/components/defaultButtom.dart';
import '../../../shared/components/textfield.dart';
class VerifyEmailPage extends StatefulWidget {
  const VerifyEmailPage({super.key});

  @override
  State<VerifyEmailPage> createState() => _VerifyEmailPageState();
}

class _VerifyEmailPageState extends State<VerifyEmailPage> {
  var CodeNumberController = TextEditingController();
  GlobalKey<FormState> formKey =GlobalKey();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: primaryColor,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child:
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 250.0,
                decoration:BoxDecoration(
                  shape: BoxShape.rectangle,
                  boxShadow: [BoxShadow(
                      color:Colors.black.withOpacity(0.25),
                      offset: const Offset(8, 6),
                      blurRadius: 5,
                      spreadRadius: 0
                  )],
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(205),
                    bottomRight: Radius.circular(205),
                  ),
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image:AssetImage('images/login.jpg'),
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                'Verify Your Email',
                style: TextStyle(
                    color: secondaryColor,
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold
                ),
              ),
              const Text(
                'Please Enter the 6 digit code sent to\nyour Email',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        DefaultTextFormField(
                          hint: 'Code Number',
                          preicon:  const Icon(
                              Icons.sms_outlined
                          ),
                          controller: CodeNumberController,
                          keyboardType: TextInputType.number,
                        ),
                      ],
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 55.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: (){
                        },
                        child: const Text(
                          'Resend Code',
                          style: TextStyle(
                            color: secondaryColor,
                            fontSize: 16.0,
                            decoration: TextDecoration.underline,
                            decorationColor: secondaryColor,
                          ),
                        )
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 180.0,
              ),
              DefaultButtom(
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(
                      builder: (_) => ResetPasswordPage(),
                    ),
                    );
                  },
                  text: 'Reset Password'
              ),
            ],
          ),
        ),
      ),
    );
  }
}
