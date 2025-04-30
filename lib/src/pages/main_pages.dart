import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../controllers/main_controller.dart';

class MainPages extends StatelessWidget {
   MainPages({super.key});
  final _con =Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(builder: (_)=>Scaffold(
      body: _con.pages[_con.ind], //con.page access page one more and con.ind is ind one more of color
      bottomNavigationBar: BottomNavigationBar(
        // onTap: (value)=>_con.onSelectItem(value),
          onTap: _con.onSelectItem,
          selectedItemColor: Colors.green,
          iconSize: 40,
          currentIndex: _con.ind,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.notification_add),label: "Notification"),
            BottomNavigationBarItem(icon: Icon(Icons.card_travel),label: "Order"),
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Favorite"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
          ]),
    ),);
  }
}

