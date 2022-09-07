import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saheefa/controller/base_controller.dart';
import 'package:saheefa/screens/category_screen.dart';
import 'package:saheefa/screens/home.dart';
import 'package:saheefa/screens/profile_screen.dart';
import 'package:saheefa/util/mycolor.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> list = [Home(), CategoryScreen(), ProfileScreen()];
    return GetBuilder<BaseController>(builder: (controller) {
      return Scaffold(
          body: Obx(() => Center(
                child: list.elementAt(controller.index),
              )),
          bottomNavigationBar: Obx(
            () => BottomNavigationBar(
              selectedItemColor: mycolor.blue,
              unselectedItemColor: Colors.grey,
              onTap: (index) => controller.selectItem(index),
              currentIndex: controller.index,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.category), label: "Category"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: "Profile"),
              ],
            ),
          ));
    });
  }
}
