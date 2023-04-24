import '../model/category.dart';
import '../model/equipments.dart';

var dummyEquipment = [
  Equipments(
      id: "1",
      name: "Staff",
      image:
          "https://miro.medium.com/v2/resize:fit:1400/1*HRKEJQgBYUrde4pvaFqhWw.jpeg",
      icon: "assets/images/personal-computer.png",
      categories: [
        Category(
            id: "1",
            name: "Computer Gadget",
            icon: "assets/images/tool-box.png",
            allEquip: []),
        Category(
            id: "2",
            name: "Cables",
            icon: "assets/images/tool-box.png",
            allEquip: []),
      ]),
  Equipments(
      id: "2",
      name: "Guest",
      image: "https://i.ytimg.com/vi/5Oibv4_D6eg/maxresdefault.jpg",
      icon: "assets/images/settings.png",
      categories: []),
  Equipments(
      id: "3",
      name: "General",
      image:
          "https://www.vincehardwarestore.com/uploads/7YOJeW4p/767x0_2560x0/shutterstock_80238202.jpg",
      icon: "assets/images/tool-box.png",
      categories: [])
];
