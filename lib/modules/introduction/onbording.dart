import 'package:flutter/material.dart';
import 'package:sanai3ey/models/content-model.dart';
import 'package:sanai3ey/modules/welcome/welcome-Page.dart';
import '../../shared/components/defaultButtom.dart';
import '../../shared/constants/constants.dart';

class Onbording extends StatefulWidget {
  const Onbording({super.key});

  @override
  _OnbordingState createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  int currentIndex = 0;
  var _controller  ;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    children: [
                      Image.asset(
                        contents[i].image,
                        height: 280,
                      ),
                      Text(
                        contents[i].title,
                        style: TextStyle(
                            color: currentIndex == contents.length - 3 ? secondaryColor : primaryColor,
                            fontSize: 27.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        contents[i].discription,
                        style:  TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                contents.length,
                    (index) => buildDot(index, context),
              ),
            ),
          Container(
            height: 60,
            margin: const EdgeInsets.all(40),
            width: double.infinity,
            child:  DefaultButtom(
              onPressed:() {
                if (currentIndex == contents.length - 1) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const WelcomePage(),
                    ),
                  );
                }
                _controller.nextPage(
                  duration: const Duration(milliseconds: 100),
                  curve: Curves.bounceIn,
                );
              },
              text: currentIndex == contents.length - 1 ? "Continue" : "Next",
              background:  currentIndex == contents.length - 3 ? secondaryColor : primaryColor,
            ),
            ),
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == contents.length - 3 ? secondaryColor : primaryColor,
      ),
    );
  }
}