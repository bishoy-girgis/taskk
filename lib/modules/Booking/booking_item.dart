import 'package:flutter/material.dart';
import '../../../models/booking_model.dart';
import '../../../models/BookingDetails_model.dart';
import '../../../modules/Booking/BookingDetails/BookingDetailsPage.dart';
import '../../../modules/Booking/Service Progress/ServiceProgressPage.dart';

/*class BookingItem extends StatelessWidget {
  final Booking booking;

  const BookingItem({Key? key, required this.booking}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 380,
          height: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                blurRadius: 10,
                offset: const Offset(10, 4),
              ),
            ],
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      booking.craftsmanName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        fontFamily: 'Inter',
                      ),
                    ),
                    Text(
                      booking.serviceCategory,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        fontFamily: 'Inter',
                      ),
                    ),
                  ],
                ),
              ), //name & cat
              const SizedBox(height: 15),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        booking.startTime,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        booking.endTime,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ), //time
              const SizedBox(height: 0),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        booking.startDate,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        booking.endDate,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ), //date
              const SizedBox(height: 10),
              Divider(
                color: Colors.grey.withOpacity(0.3),
                height: 20,
                thickness: 3,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'Total:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      '  ${booking.total}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ), //total price
            ],
          ),
        ),
        Positioned(
          left: -15,
          top: 105,
          child: Container(
            width: 32,
            height: 29,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFF005581),
            ),
          ),
        ), //circle
        Positioned(
          right: -15,
          top: 105,
          child: Container(
            width: 32,
            height: 29,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFF005581),
            ),
          ),
        ), //circle
        Positioned(
          left: 160,
          top: 130,
          child: GestureDetector(
            onTap: () {
              // Handle tap event
              print('View Details tapped');
              // You can add more functionality here, such as navigating to another screen
            },
            child: Container(
              width: 130,
              height: 33,
              decoration: BoxDecoration(
                color: const Color(0xFFFFD200),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Center(
                child: Text(
                  'View Details',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ), //view details
        const Positioned(
          right: 140,
          top: 70,
          child: Icon(
            Icons.handyman_outlined,
            color: Color(0xFFFFD200),
            size: 30,
          ),
        ), //icon
      ],
    );
  }
}*/




/*class BookingItem extends StatelessWidget {
  final Booking booking;
  final bool isCurrentTab; // Flag to determine if the current tab is active

  const BookingItem({Key? key, required this.booking, required this.isCurrentTab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 380,
          height: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                blurRadius: 10,
                offset: const Offset(10, 4),
              ),
            ],
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      booking.craftsmanName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        fontFamily: 'Inter',
                      ),
                    ),
                    Text(
                      booking.serviceCategory,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        fontFamily: 'Inter',
                      ),
                    ),
                  ],
                ),
              ), //name & cat
              const SizedBox(height: 15),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        booking.startTime,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        booking.endTime,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ), //time
              const SizedBox(height: 0),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        booking.startDate,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        booking.endDate,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ), //date
              const SizedBox(height: 10),
              Divider(
                color: Colors.grey.withOpacity(0.3),
                height: 20,
                thickness: 3,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'Total:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      '  ${booking.total}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ), //total price
            ],
          ),
        ),
        Positioned(
          left: -15,
          top: 105,
          child: Container(
            width: 32,
            height: 29,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFF005581),
            ),
          ),
        ), //circle
        Positioned(
          right: -15,
          top: 105,
          child: Container(
            width: 32,
            height: 29,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFF005581),
            ),
          ),
        ), //circle
         //view details
        const Positioned(
          right: 140,
          top: 70,
          child: Icon(
            Icons.handyman_outlined,
            color: Color(0xFFFFD200),
            size: 30,
          ),
        ), //icon
      ],
    );
  }
}*/



/*class BookingItem extends StatelessWidget {
  final Booking booking;
  final BookingDetailsModel bookingDetails;
  final bool isCurrentTab; // Flag to determine if the current tab is active
  final VoidCallback? onPressed;

  const BookingItem({
    Key? key,
    required this.booking,
    required this.bookingDetails,
    required this.isCurrentTab,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 380,
          height: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                blurRadius: 10,
                offset: const Offset(10, 4),
              ),
            ],
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      booking.craftsmanName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        fontFamily: 'Inter',
                      ),
                    ),
                    Text(
                      booking.serviceCategory,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        fontFamily: 'Inter',
                      ),
                    ),
                  ],
                ),
              ), //name & cat
              const SizedBox(height: 15),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        booking.startTime,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        booking.endTime,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ), //time
              const SizedBox(height: 0),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        booking.startDate,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        booking.endDate,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ), //date
              const SizedBox(height: 10),
              Divider(
                color: Colors.grey.withOpacity(0.3),
                height: 20,
                thickness: 3,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'Total:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      '  ${booking.total}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ), //total price
            ],
          ),
        ),
        Positioned(
          left: -15,
          top: 105,
          child: Container(
            width: 32,
            height: 29,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFF005581),
            ),
          ),
        ), //circle
        Positioned(
          right: -15,
          top: 105,
          child: Container(
            width: 32,
            height: 29,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFF005581),
            ),
          ),
        ), //circle
        Positioned(
          left: 160,
          top: 130,
          child: GestureDetector(
            onTap: onPressed,
            child: Container(
              width: 130,
              height: 33,
              decoration: BoxDecoration(
                color: const Color(0xFFFFD200),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  isCurrentTab ? 'Service Progress' : 'View Details',
                  style: const TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
        const Positioned(
          right: 140,
          top: 70,
          child: Icon(
            Icons.handyman_outlined,
            color: Color(0xFFFFD200),
            size: 30,
          ),
        ), //icon
      ],
    );
  }
}*/


class BookingItem extends StatelessWidget {
  final Booking booking;
  final BookingDetailsModel bookingDetails;
  final bool isCurrentTab; // Flag to determine if the current tab is active
  final VoidCallback? onPressed;

  const BookingItem({
    Key? key,
    required this.booking,
    required this.bookingDetails,
    required this.isCurrentTab,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 380,
          height: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                blurRadius: 10,
                offset: const Offset(10, 4),
              ),
            ],
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      booking.craftsmanName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        fontFamily: 'Inter',
                      ),
                    ),
                    Text(
                      booking.serviceCategory,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        fontFamily: 'Inter',
                      ),
                    ),
                  ],
                ),
              ), //name & cat
              const SizedBox(height: 15),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        bookingDetails.startTime,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        bookingDetails.endTime,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ), //time
              const SizedBox(height: 0),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        bookingDetails.startDate,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        bookingDetails.endDate,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ), //date
              const SizedBox(height: 10),
              Divider(
                color: Colors.grey.withOpacity(0.3),
                height: 20,
                thickness: 3,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'Total:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      '  ${bookingDetails.total}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ), //total price
            ],
          ),
        ),
        Positioned(
          left: -15,
          top: 105,
          child: Container(
            width: 32,
            height: 29,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFF005581),
            ),
          ),
        ), //circle
        Positioned(
          right: -15,
          top: 105,
          child: Container(
            width: 32,
            height: 29,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFF005581),
            ),
          ),
        ), //circle
        Positioned(
          left: 160,
          top: 130,
          child: GestureDetector(
            onTap: onPressed,
            child: Container(
              width: 130,
              height: 33,
              decoration: BoxDecoration(
                color: const Color(0xFFFFD200),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  isCurrentTab ? 'Service Progress' : 'View Details',
                  style: const TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
        const Positioned(
          right: 140,
          top: 70,
          child: Icon(
            Icons.handyman_outlined,
            color: Color(0xFFFFD200),
            size: 30,
          ),
        ), //icon
      ],
    );
  }
}



