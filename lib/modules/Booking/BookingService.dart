import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../../models/booking_model.dart';
class BookingService {
  Future<List<Booking>> fetchCurrentBookings() async {
    final response = await http.get(Uri.parse('YOUR_BACKEND_ENDPOINT'));

    if (response.statusCode == 200) {
      final List<dynamic> responseData = jsonDecode(response.body);
      return responseData.map((json) => Booking.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load current bookings');
    }
  }
}
