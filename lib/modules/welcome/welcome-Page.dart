
import 'package:flutter/material.dart';
import 'package:sanai3ey/modules/auth/login/login-page.dart';
import 'package:sanai3ey/modules/auth/register-page.dart';
import 'package:sanai3ey/shared/components/defaultButtom.dart';
import 'package:sanai3ey/shared/constants/constants.dart';
class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Scaffold(
          body:
          SingleChildScrollView(
            child: Column(
              children: [
                const Column(
                  children: [
                    SizedBox(
                      height: 100.0,
                    ),
                    Image(
                        image: AssetImage('images/welcome.jpg'),
                      ),
                    SizedBox(
                      height: 50.0,
                    ),
                  ],
                ),
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: primaryColor,
                    borderRadius:BorderRadius.only(topLeft: Radius.circular(80.0))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 50.0),
                    child: Column(
                      children: [
                        const Text(
                          'Welcome To SANAI3EY!',
                          style: TextStyle(
                            color: secondaryColor,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        const Text(
                          'Login with your data that you entered \n during your registration.',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        const SizedBox(
                          height: 70.0,
                        ),
                        DefaultButtom(
                            onPressed: (){
                              Navigator.push(context,MaterialPageRoute(
                                builder: (_) => const LoginPage(),
                              ),
                              );
                            },
                            text: 'Sign In'
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        DefaultButtom(
                            onPressed: (){
                              Navigator.push(context,MaterialPageRoute(
                                builder: (_) => const RegisterPage(),
                              ),
                              );
                            },
                            text: 'Sign Up'
                        ),
                        const SizedBox(
                          height: 85.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          ),
    );
  }
}
