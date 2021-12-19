import 'package:flutter/material.dart';

class ShoppingPage extends StatefulWidget {
  const ShoppingPage({Key? key}) : super(key: key);

  @override
  _ShoppingPageState createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<ShoppingPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.shopping_basket_outlined,
            size: 35,
            color: Colors.black45,
          ),
          Text(
            'Compras',
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
