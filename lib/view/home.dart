import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.home,
            size: 35,
            color: Colors.black45,
          ),
          Text(
            'Home',
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
