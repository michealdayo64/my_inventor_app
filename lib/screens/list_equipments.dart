import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:inventory_app/widgets/search.dart';

class ListEquipent extends StatelessWidget {
  const ListEquipent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: const Text("Equipment List"),
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
            child: ListView(
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
                            "Staff",
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
                        height: 120.0,
                        child: Card(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                            "Printer Cable",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
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
                                Row(
                                  children: [
                                    Text(
                                      "Total: ",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    Text(
                                      "45",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
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
