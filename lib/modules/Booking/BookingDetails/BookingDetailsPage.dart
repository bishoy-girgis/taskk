import 'package:flutter/material.dart';
import '../../../modules/Booking/Service Progress/ServiceProgressPage.dart';
import '../../../models/BookingDetails_model.dart';
import '../../../models/booking_model.dart';

class BookingDetails extends StatefulWidget {
  final BookingDetailsModel bookingDetails;
  final Booking booking;

  BookingDetails({Key? key,
    required this.booking,
    required this.bookingDetails,
  }) : super(key: key);

  @override
  _BookingDetailsState createState() => _BookingDetailsState();
}

class _BookingDetailsState extends State<BookingDetails> {
  bool _isAccepted = false;

  void _acceptRequest() {
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
                  'Accepted',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    color: Color(0xFF005581),
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Now you start a new job',
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ServiceProgressPage(serviceProgressPage: widget.bookingDetails), // Navigate to ServiceProgressPage
                      ),
                    );// Close the dialog
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF005581) ,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: const Text(
                    'View Booking Progress',
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

  void _rejectRequest() {
    // Handle reject request logic here
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
          "Booking  Details",
          style: TextStyle(
            color: Color(0xFFFFD200),
            fontFamily: 'Inter',
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
      backgroundColor: const Color(0xFF005581),
      body: Expanded(
        child: Column(
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
                transform: Matrix4.translationValues(0.0, -50.0,0.0),
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
                child: Center(
                  child: Text(
                    'Request# ${widget.bookingDetails.requestNumber}',
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
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 50),
                       Text(
                        "${widget.bookingDetails.startDate} AT ${widget.bookingDetails.startTime} ",
                        style: const TextStyle(
                          color: Colors.black38,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        width: 300,
                        height: 250,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.25),
                              blurRadius: 4,
                              offset: const Offset(1, 1),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.bookingDetails.service,
                                style: const TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Color(0xFF005581),
                                ),
                              ),
                              const SizedBox(height: 3),
                              Text(
                                'Request Budget: \$${widget.bookingDetails.total}',
                                style: const TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.green,
                                ),
                              ),
                              const SizedBox(height: 15),
                              const Text(
                                'Details',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Color(0xFF005581),
                                ),
                              ),
                              Text(
                                widget.bookingDetails.serviceDetails,
                                style: const TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Customer Details',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Color(0xFF005581),
                                ),
                              ),
                              Text(
                                widget.bookingDetails.customerName,
                                style: const TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                widget.bookingDetails.customerLocation,
                                style: const TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 250),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: _isAccepted ? null : _acceptRequest,
                            style: ElevatedButton.styleFrom(
                              primary: _isAccepted ? Colors.grey.withOpacity(0.6) : const Color(0xFFFFD200),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            child: const Text(
                              'Accept Request',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          ElevatedButton(
                            onPressed: _rejectRequest,
                            style: ElevatedButton.styleFrom(
                              primary: Colors.grey.withOpacity(0.6),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            child: const Text(
                              'Reject Request',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                color: Colors.white70,
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*void main() */