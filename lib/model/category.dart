import 'package:inventory_app/model/all_equip_list.dart';

class Category {
  final String id;
  final String name;
  final String icon;
  final List<AllEquipList> allEquip;

  Category(
      {required this.id,
      required this.name,
      required this.icon,
      required this.allEquip});
}
