import 'package:flutter/material.dart';
import 'package:precisely/utils/bottom_bar.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType)
    {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AppBarBottom(value: 0,),
        title: "Precisely",
        // theme: ThemeData(
        //   scaffoldBackgroundColor: Color(0xff1E1E1E)
        // ),
      );
    },);
  }
}
