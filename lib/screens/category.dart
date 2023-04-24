import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:inventory_app/widgets/search.dart';
import '../data/equipment_data.dart';

void btnAllEquip() {
  //Navigator.of(context)
}

class Category extends StatelessWidget {
  static const routeName = "/category";
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    final catID = ModalRoute.of(context)?.settings.arguments as String;
    final selectedCatId = dummyEquipment.firstWhere((cat) => cat.id == catID);
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text(selectedCatId.name),
        actions: [
          Container(
              margin: const EdgeInsets.all(20),
              child: InkWell(
                  onTap: () => null,
                  child: CircleAvatar(
                    radius: 10.0,
                    backgroundImage: AssetImage(
                      "assets/images/png-transparent-profile-logo-computer-icons-user-user-blue-heroes-logo-thumbnail.png",
                    ),
                  )))
        ],
      ),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 200.0,
            child: Image.network(
              selectedCatId.image,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Search(),
          ),
          Container(
            height: 650.0,
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0))),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            selectedCatId.name,
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Equipments Categories",
                            style: TextStyle(fontSize: 15.0),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      SizedBox(
                          width: double.infinity,
                          height: 600.0,
                          child: ListView.builder(
                            itemBuilder: (context, index) => InkWell(
                              onTap: () => null,
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Image.asset(
                                                "assets/images/personal-computer.png",
                                                width: 60.0,
                                                height: 60.0,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 25.0, left: 25.0),
                                                child: Text(
                                                  selectedCatId
                                                      .categories[index].name,
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20.0),
                                                ),
                                              ),
                                            ],
                                          ),
                                          IconButton(
                                              onPressed: null,
                                              icon: Icon(
                                                Icons.arrow_circle_right,
                                                color: Colors.green,
                                                size: 40.0,
                                              )),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            itemCount: selectedCatId.categories.length,
                          )),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
