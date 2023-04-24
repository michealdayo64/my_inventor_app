import 'package:inventory_app/model/category.dart';

class Equipments {
  final String id;
  final String name;
  final String image;
  final String icon;
  final List<Category> categories;

  Equipments(
      {required this.id,
      required this.name,
      required this.image,
      required this.icon,
      required this.categories});
}
