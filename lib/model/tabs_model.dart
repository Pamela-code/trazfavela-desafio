import 'package:flutter/material.dart';
import 'package:trazfavela_desafio/view/home.dart';
import 'package:trazfavela_desafio/view/menu.dart';
import 'package:trazfavela_desafio/view/profile.dart';
import 'package:trazfavela_desafio/view/schedule.dart';
import 'package:trazfavela_desafio/view/shopping.dart';

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
