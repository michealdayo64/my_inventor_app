import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:inventory_app/widgets/image_slider.dart';
import '../data/equipment_data.dart';

import '../screens/category.dart';

void categoryBtn(BuildContext ctx, String id) {
  Navigator.of(ctx).pushNamed(Category.routeName, arguments: id);
}

class Index extends StatelessWidget {
  const Index({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = Colors.lightGreenAccent;
    return Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageSlider(),
            SizedBox(
              height: 20.0,
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              width: double.infinity,
              height: 420,
              decoration: BoxDecoration(
                //color: Colors.green,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0)),
                gradient: LinearGradient(colors: [
                  color.withOpacity(0.2),
                  color,
                ], begin: Alignment.bottomLeft, end: Alignment.topRight),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("All Equipment",
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                  Column(
                      children: dummyEquipment
                          .map(
                            (eqt) => Column(
                              children: [
                                SizedBox(
                                  width: double.infinity,
                                  height: 100,
                                  child: GestureDetector(
                                    onTap: () => categoryBtn(context, eqt.id),
                                    child: Card(
                                      color: Colors.white,
                                      elevation: 10.0,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              children: [
                                                Text(eqt.name,
                                                    style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                Image.asset(
                                                  eqt.icon,
                                                  width: 60.0,
                                                  height: 50.0,
                                                )
                                              ],
                                            ),
                                          ),
                                          ClipRRect(
                                            borderRadius:
                                                const BorderRadius.only(
                                                    bottomRight:
                                                        Radius.circular(10.0),
                                                    topRight:
                                                        Radius.circular(10.0)),
                                            child: Image.network(eqt.image,
                                                fit: BoxFit.cover,
                                                width: 266.3),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding:
                                      EdgeInsets.only(top: 6.0, bottom: 6.0),
                                  child: Divider(
                                    height: 5.0,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          )
                          .toList())
                ],
              ),
            ),
          ],
        ));
  }
}
