/*class Booking {
  final String craftsmanName;
  final String serviceCategory;
  final String startTime;
  final String endTime;
  final String startDate;
  final String endDate;
  final String total;

  Booking({
    required this.craftsmanName,
    required this.serviceCategory,
    required this.startTime,
    required this.endTime,
    required this.startDate,
    required this.endDate,
    required this.total,
  });
}*/
class Booking {
  final String craftsmanName;
  final String serviceCategory;


  Booking({
    required this.craftsmanName,
    required this.serviceCategory,

  });

  factory Booking.fromJson(Map<String, dynamic> json) {
    return Booking(
      craftsmanName: json['craftsmanName'] ?? '',
      serviceCategory: json['serviceCategory'] ?? '',

    );
  }
}
