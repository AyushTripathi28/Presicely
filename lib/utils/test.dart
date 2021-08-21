import 'package:flutter/material.dart';

import 'package:precisely/assets/figmauploadicon_icons.dart';
import 'package:sizer/sizer.dart';

class TestEngineering extends StatefulWidget {
  const TestEngineering({Key? key}) : super(key: key);

  @override
  _TestEngineeringState createState() => _TestEngineeringState();
}

class _TestEngineeringState extends State<TestEngineering> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E1E1E),
      appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Figmauploadicon.backButton,size: 10.sp,),
            ),
            elevation: 0,
            backgroundColor: Colors.transparent,
          ),
      body: Center(
        child: Container(
          width: 50.w,
          height: 50.h,
          decoration: BoxDecoration(
            color: Color(0xFF9BE15D).withOpacity(0.1),
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Color(0xFF9BE15D).withOpacity(0.1),
                offset: Offset(4, 4),
                blurRadius: 10,
                spreadRadius: 1,
              ),
              BoxShadow(
                color: Color(0xFF00E3AE).withOpacity(0.1),
                offset: Offset(-4, -4),
                blurRadius: 10,
                spreadRadius: 1,
              ),
            ]
          ),
        ),
      ),
    );
  }
}
