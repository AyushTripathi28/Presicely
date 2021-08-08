import 'package:flutter/material.dart';
import 'package:precisely/screens/homeScreen/ProfessionalExperience/achievements.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Achievements(),
      title: "Precisely",
      // theme: ThemeData(
      //   scaffoldBackgroundColor: Color(0xff1E1E1E)
      // ),
    );
  }
}
