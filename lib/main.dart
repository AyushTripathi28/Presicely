import 'package:flutter/material.dart';
import 'package:precisely/screens/PhoneNum.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sizer/sizer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: LoginScreen(),
          title: "Precisely",
          // theme: ThemeData(
          //   scaffoldBackgroundColor: Color(0xff1E1E1E)
          // ),
        );
      },
    );
  }
}
