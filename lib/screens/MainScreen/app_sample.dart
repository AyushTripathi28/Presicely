import 'package:flutter/material.dart';

class AppSampleCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title:  Text('Application Sample'),
      ),
      body: Container(
        child: Center(child: Text('Welcome to Application Sample')),
      ),
    );
  }
}