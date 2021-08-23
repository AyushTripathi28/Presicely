import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:precisely/utils/bottom_bar.dart';
import 'package:sizer/sizer.dart';

void main() {
=======
import 'package:precisely/screens/PhoneNum.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sizer/sizer.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
>>>>>>> cc4c9a6644a3f52941a98027a9edde9c3d057ef1
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: AppBarBottom(
            value: 0,
          ),
          title: "Precisely",
          // theme: ThemeData(
          //   scaffoldBackgroundColor: Color(0xff1E1E1E)
          // ),
        );
      },
    );
  }
}
=======
    return Sizer(builder: (context, orientation, deviceType)
      {
       return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      title: "Precisely",
      // theme: ThemeData(
      //   scaffoldBackgroundColor: Color(0xff1E1E1E)
      // ),
    );
  },);
  }
}

>>>>>>> cc4c9a6644a3f52941a98027a9edde9c3d057ef1
