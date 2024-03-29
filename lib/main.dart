import 'package:flutter/material.dart';
import 'screens/home.dart';
import './screens/category.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.green,
          canvasColor: Color.fromARGB(255, 0, 7, 27)),
      home: const HomeWidget(),
      routes: {Category.routeName: (context) => Category()},
    );
  }
}
