

// Model class for booking details
class BookingDetailsModel {
final String requestNumber;
final String service;
final String serviceDetails;
final String customerName;
final String customerLocation;
final String startTime;
final String endTime;
final String startDate;
final String endDate;
final String total;

BookingDetailsModel({
required this.requestNumber,
required this.service,
required this.serviceDetails,
required this.customerName,
required this.customerLocation,
  required this.startTime,
  required this.endTime,
  required this.startDate,
  required this.endDate,
  required this.total,
});
}