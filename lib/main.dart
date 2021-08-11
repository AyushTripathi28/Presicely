import 'package:flutter/material.dart';
import 'package:precisely/screens/MainScreen/resume_sub.dart';
import 'package:precisely/screens/PhoneNum.dart';
import 'package:precisely/screens/goalsScreen/engineering.dart';
import 'package:precisely/screens/homeScreen/ProfessionalExperience/achievements.dart';
import 'package:precisely/utils/scoreScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PhoneNum(),
      title: "Precisely",
      // theme: ThemeData(
      //   scaffoldBackgroundColor: Color(0xff1E1E1E)
      // ),
    );
  }
}
