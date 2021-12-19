import 'package:flutter/material.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({Key? key}) : super(key: key);

  @override
  _SchedulePageState createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.calendar_today_rounded,
            size: 35,
            color: Colors.black45,
          ),
          Text(
            'Agendar',
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
