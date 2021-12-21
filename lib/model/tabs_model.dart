import 'package:flutter/material.dart';
import '../view/home.dart';
import '../view/menu.dart';
import '../view/profile.dart';
import '../view/schedule.dart';
import '../view/shopping.dart';

class TabsModel {
  int selectedTab;
  final List<StatefulWidget> tabOption = [
    const HomePage(),
    const SchedulePage(),
    const ShoppingPage(),
    const MenuPage(),
    const ProfilePage()
  ];

  TabsModel({required this.selectedTab});

  void changeTab(index) {
    selectedTab = index;
  }
}
