import 'package:flutter/material.dart';
import '../../../models/ServiceCategory_model.dart';
import '../../../models/CategoryDetails_model.dart';
import 'ServiceRequest.dart';
class ServiceDetailsPage extends StatefulWidget {
  final CategoryDetails categoryDetails;

  ServiceDetailsPage({required this.categoryDetails});

  @override
  State<ServiceDetailsPage> createState() => _ServiceDetailsPageState();
}

class _ServiceDetailsPageState extends State<ServiceDetailsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Package details container
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 421,
              height: 211,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.categoryDetails.imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          Positioned(
            left: 31,
            top: 412,
            child: Container(
              width: 321,
              height: 211,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('Commercial-Carpet-Cleaning-Services-Rates-This-2020.jpg'),
                  fit: BoxFit.cover,
                ),
                color: const Color.fromRGBO(0, 85, 129, 0.23),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),

          Positioned(
            left: 31,
            top: 412,
            child: Container(
              width: 321,
              height: 50,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('Commercial-Carpet-Cleaning-Services-Rates-This-2020.jpg'),
                  fit: BoxFit.cover,
                ),
                color: const Color(0xFF005581),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          const Positioned(
            left: 130,
            top: 420,
            child: Text(
              'Our Package',
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),

          // Arrow / Chevron_Left
          Positioned(
            left: 15,
            top: 14,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Color(0xFF005581),
              ),
            ),
          ),

          // Texts
          Positioned(
            left: 38,
            top: 243,
            child: Text(
              widget.categoryDetails.category.name,
              style: const TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.bold,
                fontSize: 35,
                color: Color(0xFF005581),
              ),
            ),
          ),
          Positioned(
            left: 47,
            top: 292,
            child: Container(
              width: 307,
              height: 67,
              child: Text(
                widget.categoryDetails.description,
                style: const TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.black54,
                ),
              ),
            ),
          ),


          Positioned(
            left: 50,
            top: 481,
            child: Text(
              widget.categoryDetails.package[0],
              style: const TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            left: 50,
            top: 518,
            child: Text(
              widget.categoryDetails.package[1],
              style: const TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            left: 50,
            top: 553,
            child: Text(
              widget.categoryDetails.package[2],
              style: const TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            left: 50,
            top: 588,
            child: Text(
              widget.categoryDetails.package[3],
              style: const TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.black,
              ),
            ),
          ),


          // Additional information
          const Positioned(
            left: 50,
            top: 630,
            child: Text(
              'Additional information:',
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.bold,
                fontSize: 19,
                color: Color(0xFF005581),
              ),
            ),
          ),
          Positioned(
            left: 58,
            top: 670,
            child: Text(
              'min time :              ${widget.categoryDetails.min_time}',
              style: const TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: Colors.grey,
              ),
            ),
          ),
          const Positioned(
            left: 58,
            top: 700,
            child: Text(
              'material :    ',
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: Colors.grey,
              ),
            ),
          ),

          Positioned(
            left: 140,
            top: 700,
            child: Text(
              widget.categoryDetails.materials,
              style: const TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ),

          // Confirm button
          // Request Service button
          Positioned(
            left: 53,
            top: 750,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ServiceRequestPage(),
                  ),
                );
              },
              child: Container(
                width: 296,
                height: 52.74,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFD200),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Center(
                  child: Text(
                    'Request Service',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.bold,
                      fontSize: 27,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}






/*void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ServiceDetailsPage(),
  ));
}*/
