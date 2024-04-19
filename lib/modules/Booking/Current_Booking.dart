import 'package:flutter/material.dart';
import '../../modules/Booking/booking_item.dart'; // Import the BookingItem widget
import '../../../models/booking_model.dart';
import '../../../models/BookingDetails_model.dart';
import 'Service Progress/ServiceProgressPage.dart'; // Import the ServiceProgressPage

class CurrentBookingPage extends StatelessWidget {
  const CurrentBookingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // List of current bookings with different data for each booking
    List<Booking> currentBookings = [
      Booking(
        craftsmanName: 'Alice',
        serviceCategory: 'Electrical',

      ),
      Booking(
        craftsmanName: 'Bob',
        serviceCategory: 'Plumbing',

      ),
      // Add more bookings with different data
    ];

    // List of corresponding booking details for each current booking
    List<BookingDetailsModel> bookingDetails = [
      BookingDetailsModel(
        requestNumber: '12345',
        service: 'Electrical Service',
        serviceDetails: 'Description of electrical service',
        customerName: 'John Doe',
        customerLocation: 'Location details',
        startTime: '9:00 AM',
        endTime: '11:00 AM',
        startDate: 'October 26, 2023',
        endDate: 'October 26, 2023',
        total: '\$60',
      ),
      BookingDetailsModel(
        requestNumber: '67890',
        service: 'Plumbing Service',
        serviceDetails: 'Description of plumbing service',
        customerName: 'Jane Doe',
        customerLocation: 'Location details',
        startTime: '10:00 AM',
        endTime: '1:00 PM',
        startDate: 'October 27, 2023',
        endDate: 'October 27, 2023',
        total: '\$80',
      ),
      // Add more booking details for each booking
    ];

    return Stack(
      children: [
        Container(
          color: const Color(0xFF005581),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 30),
          child: ListView.builder(
            itemCount: currentBookings.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 50.0),
                child: BookingItem(
                  // Pass data from the current bookings list
                  booking: currentBookings[index],
                  bookingDetails: bookingDetails[index], // Pass corresponding booking details
                  isCurrentTab: true, // Set isCurrentTab to true for the current tab
                  onPressed: () {
                    // Navigate to the ServiceProgressPage
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ServiceProgressPage(serviceProgressPage: bookingDetails[index]),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}




/*class CurrentBookingPage extends StatelessWidget {
  const CurrentBookingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // List of current bookings with different data for each booking
    List<Booking> currentBookings = [
      Booking(
        craftsmanName: 'Alice',
        serviceCategory: 'Electrical',
        startTime: '9:00 AM',
        endTime: '11:00 AM',
        startDate: 'October 26, 2023',
        endDate: 'October 26, 2023',
        total: '\$60',
      ),
      Booking(
        craftsmanName: 'Bob',
        serviceCategory: 'Plumbing',
        startTime: '10:00 AM',
        endTime: '1:00 PM',
        startDate: 'October 27, 2023',
        endDate: 'October 27, 2023',
        total: '\$80',
      ),
      // Add more bookings with different data
    ];

    return Stack(
      children: [
        Container(
          color: const Color(0xFF005581),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 30),
          child: ListView.builder(
            itemCount: currentBookings.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: BookingItem(
                  // Pass data from the current bookings list
                  booking: currentBookings[index],
                  isCurrentTab: true, // Set isCurrentTab to true for the current tab
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}*/

//import 'BookingService.dart';
/*class CurrentBookingPage extends StatefulWidget {
  const CurrentBookingPage({Key? key}) : super(key: key);

  @override
  _CurrentBookingPageState createState() => _CurrentBookingPageState();
}

class _CurrentBookingPageState extends State<CurrentBookingPage> {
  final BookingService _bookingService = BookingService();
  late Future<List<Booking>> _futureBookings;

  @override
  void initState() {
    super.initState();
    _futureBookings = _bookingService.fetchCurrentBookings();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Booking>>(
      future: _futureBookings,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else {
          final currentBookings = snapshot.data!;
          return Stack(
            children: [
              Container(
                color: const Color(0xFF005581),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 30),
                child: ListView.builder(
                  itemCount: currentBookings.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 30.0),
                      child: BookingItem(
                        booking: currentBookings[index],
                        isCurrentTab: true,
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        }
      },
    );
  }
}*/
