import 'package:flutter/material.dart';
import 'package:sanai3ey/modules/auth/login/login-page.dart';
import 'package:sanai3ey/modules/customer/createProfile/create-profile-cust.dart';
import 'package:sanai3ey/shared/constants/constants.dart';
import '../../shared/components/defaultButtom.dart';
import '../../../shared/components/textfield.dart';
import '../craftsman/createprofile/selectcateg.dart';

enum UserType{customer , craftsman}

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var usernameController = TextEditingController();

  var emailController = TextEditingController();

  var phoneController = TextEditingController();

  var passwordController = TextEditingController();

  var confirmPassController = TextEditingController();

  bool isPassword =true;
  bool isPassword1 =true;

  UserType ? _userType;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(
            children:[
                  const Image(
                      image: AssetImage('images/register.jpg'),
                      width: double.infinity,

                    ),
                  Padding(
                    padding: const EdgeInsets.only(top: 120.0),
                    child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: primaryColor,
                        borderRadius:BorderRadius.only(topLeft: Radius.circular(100.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Column(
                        children: [
                          const Text(
                            'Register',
                            style: TextStyle(
                                color: secondaryColor,
                                fontSize: 50.0,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          const Text(
                            'Create your account',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 35.0),
                            child: Form(
                              child: Column(
                                children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: RadioListTile<UserType>(
                                            contentPadding: const EdgeInsets.all(0.0),
                                            value: UserType.customer,
                                            groupValue:  _userType,
                                            title:Text(
                                                UserType.customer.name ,
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                    fontSize: 14.0,
                                                    fontWeight: FontWeight.bold,
                                                ),
                                            ),
                                            fillColor: MaterialStateColor.resolveWith((states) => Colors.white),
                                            onChanged: (val){
                                              setState(() {
                                                _userType=val;
                                              });
                                            },
                                          ),
                                        ),
                                        Expanded(
                                          child: RadioListTile<UserType>(
                                            contentPadding: const EdgeInsets.all(0.0),
                                            value: UserType.craftsman,
                                            groupValue:  _userType,
                                            title: Text(
                                                UserType.craftsman.name,
                                              style: const TextStyle(
                                                color: Colors.white,
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.bold
                                              ),
                                            ),
                                            fillColor: MaterialStateColor.resolveWith((states) => Colors.white),
                                            onChanged: (val){
                                              setState(() {
                                                _userType=val;
                                              });
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
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
                                  DefaultTextFormField(
                                      hint:'Email Address',
                                      preicon: const Icon(
                                          Icons.email_outlined
                                      ),
                                      controller: emailController,
                                      keyboardType: TextInputType.emailAddress
                                  ),
                                  const SizedBox(
                                    height: 20.0,
                                  ),
                                  DefaultTextFormField(
                                      hint: 'Phone Number',
                                      preicon: const Icon(
                                          Icons.local_phone_outlined
                                      ),
                                      controller: phoneController,
                                      keyboardType: TextInputType.phone
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
                                      obscureText: isPassword1,
                                      cursorColor: primaryColor,
                                      keyboardType: TextInputType.visiblePassword,
                                      controller: confirmPassController,
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
                                        hintText: 'Confirm Password' ,
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
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const Text(
                            'By registering , you are agreeing to our terms\n of use and privacy policy.',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          const SizedBox(
                            height: 40.0,
                          ),
                          DefaultButtom(
                              onPressed: (){
                                Navigator.pushReplacement(context,MaterialPageRoute(
                                  builder: (_) => (_userType == UserType.craftsman)?SelectCateg():CreateProfileCustPage(),
                                ),
                                );
                              },
                              text: 'Register'
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Already have an account?',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0
                                ),
                              ),
                             GestureDetector(
                               onTap: (){
                                 Navigator.push(context,MaterialPageRoute(
                                   builder: (_) => const LoginPage(),
                                 ),
                                 );
                               },
                               child: const Text(
                                      'Login',
                                       style: TextStyle(
                                          color: secondaryColor,
                                          fontSize: 16.0,
                                          decoration: TextDecoration.underline,
                                         decorationColor: secondaryColor,
                                      ),
                                    ),
                             )

                            ],
                          ),
                        ],
                      ),
                    ),
                    ),
                  ),
            ]
          ),
        ),
      ),
    );
  }
}
