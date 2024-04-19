import '../../../models/ServiceCategory_model.dart';

class CategoryDetails {
  final Category category;
  final String imagePath;
  final String description;
  final List<String> package;
  final String min_time;
  final String materials;

  CategoryDetails({
    required this.category,
    required this.imagePath,
    required this.description,
    required this.package,
    required this.min_time,
  required this.materials,
  });
}