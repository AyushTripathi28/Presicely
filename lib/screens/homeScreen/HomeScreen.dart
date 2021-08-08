import 'package:flutter/material.dart';
import 'package:precisely/screens/MainScreen/sch_call.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key,required this.value}) : super(key: key);
  final int value;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("Home Screen"),
    ),);
  }
}
