import 'package:flutter/material.dart';

class LoanCalCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title:  Text('Loan Calculator'),
      ),
      body: Container(
        child: Center(child: Text('Welcome to Loan Calculator')),
      ),
    );
  }
}