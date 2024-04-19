import 'package:flutter/material.dart';
import 'package:sanai3ey/modules/auth/login/login-page.dart';
import 'package:sanai3ey/shared/constants/constants.dart';
import '../../../shared/components/defaultButtom.dart';
class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({super.key});

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  var passwordController = TextEditingController();
  var confirmpasswordController = TextEditingController();
  GlobalKey<FormState> formKey =GlobalKey();
  bool isPassword=true;
  bool isPassword1=true;
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
                padding: const EdgeInsets.symmetric(horizontal: 35.0),
                child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [Colors.white,Colors.transparent]
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: TextFormField(
                            style: const TextStyle(
                                color: primaryColor,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold
                            ),
                            obscureText: isPassword,
                            cursorColor: primaryColor,
                            keyboardType: TextInputType.visiblePassword,
                            controller: passwordController,
                            decoration: InputDecoration(
                              errorStyle: const TextStyle(
                                  color: Colors.red,
                                  fontSize: 15.0
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(color: primaryColor),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: const BorderSide(color:  primaryColor),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              hintStyle: const TextStyle(
                                  color: primaryColor,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold
                              ),
                              prefixIconColor:primaryColor,
                              hintText: 'New Password' ,
                              prefixIcon:  const Icon(
                                  Icons.lock_outline
                              ),
                              suffixIcon: IconButton(
                                  onPressed: (){
                                    setState(() {
                                      isPassword =! isPassword;
                                    });
                                  },
                                  icon: Icon(isPassword? Icons.visibility_outlined: Icons.visibility_off_outlined)
                              ),
                              suffixIconColor: Colors.white.withOpacity(0.3),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [Colors.white,Colors.transparent]
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: TextFormField(
                            style: const TextStyle(
                                color: primaryColor,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold
                            ),
                            obscureText: isPassword1,
                            cursorColor: primaryColor,
                            keyboardType: TextInputType.visiblePassword,
                            controller: confirmpasswordController,
                            decoration: InputDecoration(
                              errorStyle: const TextStyle(
                                  color: Colors.red,
                                  fontSize: 15.0
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(color: primaryColor),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: const BorderSide(color:  primaryColor),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              hintStyle: const TextStyle(
                                  color: primaryColor,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold
                              ),
                              prefixIconColor:primaryColor,
                              hintText: 'Confirm New Password' ,
                              prefixIcon:  const Icon(
                                  Icons.lock_outline
                              ),
                              suffixIcon: IconButton(
                                  onPressed: (){
                                    setState(() {
                                      isPassword1 =! isPassword1;
                                    });
                                  },
                                  icon: Icon(isPassword1? Icons.visibility_outlined: Icons.visibility_off_outlined)
                              ),
                              suffixIconColor: Colors.white.withOpacity(0.3),
                            ),
                          ),
                        ),
                      ],
                    )
                ),
              ),
              const SizedBox(
                height: 130.0,
              ),
              DefaultButtom(
                  onPressed: (){
                    Navigator.pushReplacement(context,MaterialPageRoute(
                      builder: (_) => LoginPage(),
                    ),
                    );
                  },
                  text: 'Confirm'
              ),
            ],
          ),
        ),
      ),
    );
  }
}
