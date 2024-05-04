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
