import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import './../pages/notification_page.dart';
import './../pages/order_page.dart';
import './../pages/profile_page.dart';
import './../pages/home_page.dart';
import './../pages/favorite_page.dart';

 class MainController extends GetxController{

  int ind =2;
  List<Widget>pages=[
   NotificationPage(),
   OrderPage(),
   HomePage(),
   FavoritePage(),
   ProfilePage(),
  ];

  onSelectItem(value){
   ind = value;
   update();

  }
}