import 'package:flutter/material.dart';
import 'package:sanai3ey/modules/auth/login/forgot-password-page.dart';
import 'package:sanai3ey/modules/auth/register-page.dart';
import 'package:sanai3ey/shared/constants/constants.dart';
import '../../../shared/components/defaultButtom.dart';
import '../../../shared/components/textfield.dart';
import 'package:http/http.dart' as http;
import '../../customer/editProfile/homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();
  GlobalKey<FormState> formKey =GlobalKey();
  bool isPassword=true;
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
                    'Welcome back',
                    style: TextStyle(
                        color: secondaryColor,
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  const Text(
                    'Login to your account',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Form(
                        key: formKey,
                        child: Column(
                          children: [
                            DefaultTextFormField(
                              hint: 'Username',
                              preicon:  const Icon(
                                  Icons.person_2_outlined
                              ),
                              controller: usernameController,
                              keyboardType: TextInputType.name,
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
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
                                  hintText: 'Password' ,
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
                          ],
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 55.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context,MaterialPageRoute(
                              builder: (_) => const ForgotPasswordPage(),
                            ),
                            );
                          },
                          child:const Text(
                            'Forgot Password?',
                            style: TextStyle(
                              color: secondaryColor,
                              fontSize: 14.0,
                              decoration: TextDecoration.underline,
                              decorationColor: secondaryColor,
                            ),
                          ) ,
                        ) ,
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 80.0,
                  ),
                  DefaultButtom(
                      onPressed: () async{
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                        );
                      },
                      text: 'LOGIN'
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Don’t have an account?',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(
                            builder: (_) => const RegisterPage(),
                          ),
                          );
                        },
                        child:const Text(
                          'Sign up',
                          style: TextStyle(
                              color: secondaryColor,
                              fontSize: 16.0,
                              decoration: TextDecoration.underline,
                              decorationColor: secondaryColor,
                          ),
                        ) ,
                      ) ,
                      const SizedBox(
                        height: 40,
                      )
                    ],
                  ),
                ],
              ),
        ),
      ),
    );
  }
}
