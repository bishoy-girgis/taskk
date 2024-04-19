import 'package:flutter/material.dart';
import 'package:sanai3ey/modules/auth/login/verify-email-page.dart';
import 'package:sanai3ey/shared/constants/constants.dart';
import '../../../shared/components/defaultButtom.dart';
import '../../../shared/components/textfield.dart';
class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  var emailController = TextEditingController();
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
                'Forgot Your Password?',
                style: TextStyle(
                    color: secondaryColor,
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold
                ),
              ),
              const Text(
                'Enter the Email address associated\nwith your account',
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
                            hint:'Email Address',
                            preicon: const Icon(
                                Icons.email_outlined
                            ),
                            controller: emailController,
                            keyboardType: TextInputType.emailAddress
                        ),
                      ],
                    )
                ),
              ),
              const SizedBox(
                height: 180.0,
              ),
              DefaultButtom(
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(
                      builder: (_) => VerifyEmailPage(),
                    ),
                    );
                  },
                  text: 'Verify Email'
              ),
            ],
          ),
        ),
      ),
    );
  }
}
