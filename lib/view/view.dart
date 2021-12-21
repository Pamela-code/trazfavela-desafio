import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:trazfavela_desafio/model/tabs_model.dart';

class ViewPage extends StatefulWidget {
  const ViewPage({Key? key}) : super(key: key);

  @override
  _ViewPageState createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  final tabs = TabsModel(
    selectedTab: 2,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffff7715),
        centerTitle: true,
        title: const Text('TrazFavela - Desafio'),
      ),
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.white,
        activeColor: const Color(0xffff7715),
        color: Colors.black45,
        height: 75,
        curveSize: 110,
        items: const [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.calendar_today_rounded, title: 'Agendar'),
          TabItem(icon: Icons.shopping_basket_outlined, title: 'Compras'),
          TabItem(icon: Icons.menu_book, title: 'Cardápio'),
          TabItem(icon: Icons.person, title: 'Perfil'),
        ],
        initialActiveIndex: 2,
        onTap: (int i) => setState(() {
          tabs.changeTab(i);
        }),
      ),
      body: tabs.tabOption[tabs.selectedTab],
    );
  }
}
