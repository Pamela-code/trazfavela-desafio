import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.menu_book,
            size: 35,
            color: Colors.black45,
          ),
          Text(
            'Cardápio',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black45,
            ),
          ),
        ],
      ),
    );
  }
}
