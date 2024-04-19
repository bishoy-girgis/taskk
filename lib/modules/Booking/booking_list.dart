import 'package:flutter/material.dart';
import '../../modules/Booking/booking_item.dart'; // Import the BookingItem widget
import '../../models/booking_model.dart';
import '../../models/BookingDetails_model.dart';
import 'BookingDetails/BookingDetailsPage.dart';

class NewBookingPage extends StatelessWidget {
  const NewBookingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // List of new bookings with different data for each booking
    List<Booking> newBookings = [
      Booking(
        craftsmanName: 'Arwa',
        serviceCategory: 'cleaning',

      ),
      Booking(
        craftsmanName: 'Ahmed',
        serviceCategory: 'Electrical',

      ),
      // Add more bookings with different data
    ];

    // List of corresponding booking details for each new booking
    List<BookingDetailsModel> bookingDetails = [
      BookingDetailsModel(
        requestNumber: '12345',
        service: 'Cleaning Service',
        serviceDetails: 'Description of cleaning service',
        customerName: 'John Doe',
        customerLocation: 'Location details',  startTime: '8:00 AM',
        endTime: '10:00 AM',
        startDate: 'October 26, 2023',
        endDate: 'October 26, 2023',
        total: '\$40',
      ),
      BookingDetailsModel(
        requestNumber: '67890',
        service: 'Electrical Service',
        serviceDetails: 'Description of electrical service',
        customerName: 'Jane Doe',
        customerLocation: 'Location details', startTime: '9:00 AM',
        endTime: '11:00 AM',
        startDate: 'October 27, 2023',
        endDate: 'October 27, 2023',
        total: '\$100',
      ),
      // Add more booking details for each booking
    ];

    return Scaffold(
      backgroundColor: const Color(0xFF005581),
      body: ListView.builder(
        itemCount: newBookings.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 30),
            child: BookingItem(
              // Pass data from the new bookings list
              booking: newBookings[index],
              bookingDetails: bookingDetails[index], // Pass corresponding booking details
              isCurrentTab: false, // Set isCurrentTab to false for the new tab
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BookingDetails(bookingDetails: bookingDetails[index],booking: newBookings[index])
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}




/*
class NewBookingPage extends StatelessWidget {
  const NewBookingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // List of new bookings with different data for each booking
    List<Booking> newBookings = [
      Booking(
        craftsmanName: 'Arwa',
        serviceCategory: 'cleaning',
        startTime: '8:00 AM',
        endTime: '10:00 AM',
        startDate: 'October 26, 2023',
        endDate: 'October 26, 2023',
        total: '\$40',
      ),
      Booking(
          craftsmanName: 'Ahmed',
          serviceCategory: 'Electrical',
          startTime: '9:00 AM',
          endTime: '11:00 AM',
          startDate: 'October 27, 2023',
          endDate: 'October 27, 2023',
          total: '\100'
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
            itemCount: newBookings.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: BookingItem(
                  // Pass data from the new bookings list
                  booking: newBookings[index],
                  isCurrentTab: false, // Set isCurrentTab to false for the new tab
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}*/