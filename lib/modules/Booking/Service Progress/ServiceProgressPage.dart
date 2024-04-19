import 'package:flutter/material.dart';
import '../../../models/BookingDetails_model.dart';

class ServiceProgressPage extends StatefulWidget {

  final BookingDetailsModel serviceProgressPage;

  ServiceProgressPage({required this.serviceProgressPage});

  @override
  _ServiceProgressPageState createState() => _ServiceProgressPageState();
  }


class _ServiceProgressPageState extends State<ServiceProgressPage> {
  bool arrived = false;
  bool jobStarted = false;
  bool jobCompleted = false;

  void toggleArrivedState() {
    setState(() {
      if (!arrived) {
        arrived = true;
      } else {
        if (!jobStarted) {
          jobStarted = true;
        } else {
          jobCompleted = true;
          // Show alert when job is completed
          showDialog(
            context: context,
            builder: (BuildContext context) {
               return AlertDialog(
                content: Container(
                  width: double.maxFinite,
                  color: Colors.white,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/images/1.png', // Replace this with your image path
                        width: double.infinity,
                        height: 120,
                        fit: BoxFit.fitWidth, // Adjust the height as needed
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Service Completed',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          color: Color(0xFF005581),
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Your Current Job has completed successfully',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Inter',
                          color: Colors.black26,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                          // Close the dialog
                        },
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xFF005581) ,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: const Text(
                          'Ok Thanks',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                      ),


                    ],
                  ),
                ),

              );

            },
          );
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF005581),
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Color(0xFFFFD200),
            ),
          ),
        ), //back
        title: const Text(
          "Service Progress",
          style: TextStyle(
            color: Color(0xFFFFD200),
            fontFamily: 'Inter',
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
      backgroundColor: const Color(0xFF005581),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).padding.top,
            color: const Color(0xFF005581),
          ),
          Container(
            height: 40,
            color: const Color(0xFF005581),
          ),
          Positioned(
            left: 56, // Adjust the left position as needed
            top: 0, // Adjust the top position as needed
            child: Container(
              width: 224,
              height: 52,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 4,
                    offset: const Offset(6, 9),
                  ),
                ],
                borderRadius: BorderRadius.circular(25),
              ),
              child:  Center(
                child: Text(
                  'Request# ${widget.serviceProgressPage.requestNumber}',
                  style: const TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0xFF005581),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Stack(
                children: [
                  // Ellipse 77
                  Positioned(
                    left: 32,
                    top: 66,
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color(0xFF005581),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            blurRadius: 4,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Ellipse 78
                  Positioned(
                    left: 32,
                    top: 173,
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color(0xFF005581),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            blurRadius: 4,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // 1
                  const Positioned(
                    left: 48,
                    top: 69,
                    child: Text(
                      '1',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        fontFamily: 'Inter',
                      ),
                    ),
                  ),
                  // 2
                  const Positioned(
                    left: 47,
                    top: 177,
                    child: Text(
                      '2',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        fontFamily: 'Inter',
                      ),
                    ),
                  ),
                  // Line 6
                  Positioned(
                    left: 57,
                    top: 116,
                    child: Container(
                      width: 0,
                      height: 67,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF005581), width: 5),
                      ),
                    ),
                  ),
                  // Group 4
                  const Positioned(
                    left: 100,
                    top: 69,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Service Booked
                        Text(
                          'Service Booked',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            fontFamily: 'Inter',
                          ),
                        ),
                        // 13-5-2022

                      ],
                    ),
                  ),
                  // Group 5
                  const Positioned(
                    left: 100,
                    top: 173,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Craftsman has accept request
                        Text(
                          'Craftsman has accept request',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            fontFamily: 'Inter',
                          ),
                        ),
                        // 13-5-2022

                      ],
                    ),
                  ),
                  // Additional elements to appear when craftsman arrives
                  if (arrived) ...[
                    Positioned(
                      left: 57,
                      top: 220,
                      child: Container(
                        width: 0,
                        height: 67,
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xFF005581), width: 5),
                        ),
                      ),
                    ),
                    // Ellipse 79
                    Positioned(
                      left: 32,
                      top: 280,
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color(0xFF005581),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.25),
                              blurRadius: 4,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Number 3
                    const Positioned(
                      left: 47,
                      top: 284,
                      child: Text(
                        '3',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          fontFamily: 'Inter',
                        ),
                      ),
                    ),
                    // Group 4
                    const Positioned(
                      left: 100,
                      top: 280,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Craftsman arrived to request location
                          Text(
                            'Craftsman arrived to request location',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              fontFamily: 'Inter',
                            ),
                          ),
                          // 13-5-2022

                        ],
                      ),
                    ),
                    if (jobStarted) ...[
                      Positioned(
                        left: 57,
                        top: 320,
                        child: Container(
                          width: 0,
                          height: 67,
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xFF005581), width: 5),
                          ),
                        ),
                      ),
                      // Ellipse 79
                      Positioned(
                        left: 32,
                        top: 380,
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color(0xFF005581),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.25),
                                blurRadius: 4,
                                offset: const Offset(0, 4),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Number 3
                      const Positioned(
                        left: 47,
                        top: 385,
                        child: Text(
                          '4',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ),
                      // Group 4
                      const Positioned(
                        left: 100,
                        top: 380,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Craftsman arrived to request location
                            Text(
                              'Craftsman Started the Job',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                fontFamily: 'Inter',
                              ),
                            ),
                            // 13-5-2022

                          ],
                        ),
                      ),
                    ],
                    if (jobCompleted) ...[
                      Positioned(
                        left: 57,
                        top: 420,
                        child: Container(
                          width: 0,
                          height: 67,
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xFF005581), width: 5),
                          ),
                        ),
                      ),
                      // Ellipse 79
                      Positioned(
                        left: 32,
                        top: 480,
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.25),
                                blurRadius: 4,
                                offset: const Offset(0, 4),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Number 3
                      const Positioned(
                        left: 35,
                        top: 482,
                        child:  Icon(
                          Icons.check,
                          color: Colors.white,
                          size: 45,
                        ),
                      ),
                      // Group 4
                      const Positioned(
                        left: 100,
                        top: 480,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Craftsman arrived to request location
                            Text(
                              'Job Completed',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                fontFamily: 'Inter',
                              ),
                            ),
                            // 13-5-2022

                          ],
                        ),
                      ),
                    ],
                  ],
                  Positioned(
                    left: 60,
                    top: 580, // Adjusted value to make the button visible
                    child: GestureDetector(
                      onTap: () {
                        toggleArrivedState();
                      },
                      child: Container(
                        width: 296,
                        height: 52.74,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFD200),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text(
                            jobStarted
                                ? (jobCompleted ? 'Completed' : 'End Job')
                                : (arrived ? 'Start Job' : 'Arrive to Location'),
                            style: const TextStyle(
                              fontFamily: 'Inter',
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}






/*class ServiceProgressPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF005581),
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Color(0xFFFFD200),
            ),
          ),
        ), //back
        title: const Text(
          "Service Progress",
          style: TextStyle(
            color: Color(0xFFFFD200),
            fontFamily: 'Inter',
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
      backgroundColor: const Color(0xFF005581),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).padding.top,
            color: const Color(0xFF005581),
          ),
          Container(
            height: 40,
            color: const Color(0xFF005581),
          ),
          Positioned(
            left: 56, // Adjust the left position as needed
            top: 0, // Adjust the top position as needed
            child: Container(
              width: 224,
              height: 52,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 4,
                    offset: const Offset(6, 9),
                  ),
                ],
                borderRadius: BorderRadius.circular(25),
              ),
              child: const Center(
                child: Text(
                  'Request# ',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0xFF005581),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),

          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),


              child: Stack(
                children: [
                  // Ellipse 77
                  Positioned(
                    left: 32,
                    top: 66,
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color(0xFF005581),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            blurRadius: 4,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Ellipse 78
                  Positioned(
                    left: 32,
                    top: 173,
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color(0xFF005581),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            blurRadius: 4,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // 1
                  const Positioned(
                    left: 48,
                    top: 69,
                    child: Text(
                      '1',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        fontFamily: 'Inter',
                      ),
                    ),
                  ),

                  // 2
                  const Positioned(
                    left: 47,
                    top: 177,
                    child: Text(
                      '2',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        fontFamily: 'Inter',
                      ),
                    ),
                  ),

                  // Line 6
                  Positioned(
                    left: 57,
                    top: 116,
                    child: Container(
                      width: 0,
                      height: 67,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF005581), width: 5),
                      ),
                    ),
                  ),

                  // Group 4
                  const Positioned(
                    left: 100,
                    top: 69,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Service Booked
                        Text(
                          'Service Booked',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            fontFamily: 'Inter',
                          ),
                        ),
                        // 13-5-2022
                        Text(
                          '13-5-2022',
                          style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 0.5),
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Group 5
                  const Positioned(
                    left: 100,
                    top: 173,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Craftsman has accept request
                        Text(
                          'Craftsman has accept request',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            fontFamily: 'Inter',
                          ),
                        ),
                        // 13-5-2022
                        Text(
                          '13-5-2022',
                          style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 0.5),
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ],
                    ),
                  ),

                  Positioned(
                    left: 60,
                    top: 580, // Adjusted value to make the button visible
                    child: GestureDetector(
                      onTap: () {
                        // Handle button tap
                      },
                      child: Container(
                        width: 296,
                        height: 52.74,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFD200),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Center( // Center the text horizontally and vertically
                          child: Text(
                            'Arrive to Location',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),

          ),



        ],
      ),
    );
  }
}*/






