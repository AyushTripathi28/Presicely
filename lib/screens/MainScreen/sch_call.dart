import 'package:flutter/material.dart';

class ScheduleCallCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Schedule Call'),
      ),
      body: Container(
        child: Center(child: Text('Welcome to Schedule Call')),
      ),
    );
  }
}