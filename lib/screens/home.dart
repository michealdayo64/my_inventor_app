import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:inventory_app/widgets/all_task.dart';
import 'package:inventory_app/widgets/image_slider.dart';
import 'package:inventory_app/widgets/index.dart';
import 'package:inventory_app/screens/login.dart';
import 'package:inventory_app/widgets/profile.dart';

void loginBtn(BuildContext ctx) {
  Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
    return LoginWidget();
  }));
}

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  final List<Widget> _pages = [Index(), Alltask(), Profile()];

  int _selectedPageIndex = 0;

  void selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          title: const Text("Inventory app"),
          actions: [
            Container(
                margin: const EdgeInsets.all(20),
                child: InkWell(
                    onTap: () => loginBtn(context),
                    child: CircleAvatar(
                      radius: 10.0,
                      backgroundImage: AssetImage(
                        "assets/images/png-transparent-profile-logo-computer-icons-user-user-blue-heroes-logo-thumbnail.png",
                      ),
                    )))
          ],
        ),
        body: _pages[_selectedPageIndex],
        bottomNavigationBar: BottomNavigationBar(
          elevation: 10.0,
          onTap: selectPage,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.green,
          currentIndex: _selectedPageIndex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
                backgroundColor: Colors.green),
            BottomNavigationBarItem(
              icon: Icon(Icons.task),
              label: "Task Done",
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box_rounded),
              label: "Profile",
              backgroundColor: Colors.green,
            )
          ],
        ));
  }
}
