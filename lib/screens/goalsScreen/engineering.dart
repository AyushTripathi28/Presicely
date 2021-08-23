import 'dart:ui';

<<<<<<< HEAD
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:precisely/assets/figmaUploadIcon_icons.dart';
import 'package:precisely/screens/goalsScreen/management.dart';
import 'package:precisely/screens/goalsScreen/medicine.dart';
import 'package:precisely/utils/bottom_bar.dart';
=======

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:precisely/assets/figmauploadicon_icons.dart';
import 'package:precisely/screens/goalsScreen/management.dart';
import 'package:precisely/screens/goalsScreen/medicine.dart';
>>>>>>> cc4c9a6644a3f52941a98027a9edde9c3d057ef1
import 'package:sizer/sizer.dart';

class Engineering extends StatefulWidget {
  const Engineering({Key? key}) : super(key: key);

  @override
  _EngineeringState createState() => _EngineeringState();
}

class _EngineeringState extends State<Engineering> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
<<<<<<< HEAD
            Navigator.of(context).pop(AppBarBottom(value: 0));
=======
            Navigator.of(context).pop();
>>>>>>> cc4c9a6644a3f52941a98027a9edde9c3d057ef1
          },
          icon: Icon(Figmauploadicon.backButton,size: 10.sp,),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          foregroundDecoration: BoxDecoration(
              gradient: RadialGradient(
<<<<<<< HEAD
            center: Alignment(0, -0.5),
            radius: 0.5,
            colors: [
              //Color(0xff9BE15D).withOpacity(0.3),
              Color(0xff00E3AE).withOpacity(0.7),
              Colors.transparent
            ],
          )),
          child: Container(
            decoration: BoxDecoration(
                gradient: RadialGradient(
              radius: 0.05,
              center: Alignment(0.3, -0.85),
              colors: [
                Color(0xff9BE15D),
                Color(0xff00E3AE),
                Colors.transparent
              ],
            )),
            child: Container(
              decoration: BoxDecoration(
                  gradient: RadialGradient(
                radius: 0.08,
                center: Alignment(-0.75, -0.6),
                colors: [
                  Color(0xff9BE15D),
                  Color(0xff00E3AE),
                  Colors.transparent
                ],
              )),
              child: Container(
                decoration: BoxDecoration(
                    gradient: RadialGradient(
                  radius: 0.03,
                  center: Alignment(0.5, -0.3),
=======
                center: Alignment(0, -0.5),
                radius: 0.5,
                colors: [
                  //Color(0xff9BE15D).withOpacity(0.3),
                  Color(0xff00E3AE).withOpacity(0.7),
                  Colors.transparent
                ],
              )),
          child: Container(
            decoration: BoxDecoration(
                gradient: RadialGradient(
                  radius: 0.05,
                  center: Alignment(0.3, -0.85),
>>>>>>> cc4c9a6644a3f52941a98027a9edde9c3d057ef1
                  colors: [
                    Color(0xff9BE15D),
                    Color(0xff00E3AE),
                    Colors.transparent
                  ],
                )),
<<<<<<< HEAD
                child: Container(
                  decoration: BoxDecoration(
                      gradient: RadialGradient(
                    radius: 0.06,
                    center: Alignment(0.95, -0.4),
=======
            child: Container(
              decoration: BoxDecoration(
                  gradient: RadialGradient(
                    radius: 0.08,
                    center: Alignment(-0.75, -0.6),
>>>>>>> cc4c9a6644a3f52941a98027a9edde9c3d057ef1
                    colors: [
                      Color(0xff9BE15D),
                      Color(0xff00E3AE),
                      Colors.transparent
                    ],
                  )),
<<<<<<< HEAD
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: RadialGradient(
                      radius: 0.065,
                      center: Alignment(-0.95, -0),
=======
              child: Container(
                decoration: BoxDecoration(
                    gradient: RadialGradient(
                      radius: 0.03,
                      center: Alignment(0.5, -0.3),
>>>>>>> cc4c9a6644a3f52941a98027a9edde9c3d057ef1
                      colors: [
                        Color(0xff9BE15D),
                        Color(0xff00E3AE),
                        Colors.transparent
                      ],
                    )),
<<<<<<< HEAD
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10.h),
=======
                child: Container(
                  decoration: BoxDecoration(
                      gradient: RadialGradient(
                        radius: 0.06,
                        center: Alignment(0.95, -0.4),
                        colors: [
                          Color(0xff9BE15D),
                          Color(0xff00E3AE),
                          Colors.transparent
                        ],
                      )),
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: RadialGradient(
                          radius: 0.065,
                          center: Alignment(-0.95, -0),
                          colors: [
                            Color(0xff9BE15D),
                            Color(0xff00E3AE),
                            Colors.transparent
                          ],
                        )),
                    child: Column(
                      children: [
                        SizedBox(
                            height: 10.h),
>>>>>>> cc4c9a6644a3f52941a98027a9edde9c3d057ef1
                        Icon(
                          Figmauploadicon.rocket,
                          color: Color(0xff9BE15D),
                          size: 175.sp,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'ENGINEERING',
                          style: TextStyle(
                              fontSize: 30.sp,
                              color: Color  (0xff6FDE72),
                              fontFamily: 'Monument Extended'),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Row(
                          children: [
                            SizedBox(width: 10.w,),
                            new IconButton(
                              //alignment: Alignment(5, 0),
                              icon: Image.asset('assets/Vector_backward.png'),
                              color: Colors.green,
                              iconSize: 30,
                              onPressed: () {
                                Navigator.of(context).push(
<<<<<<< HEAD
                                  MaterialPageRoute(builder: (context) => Management())
=======
                                    MaterialPageRoute(builder: (context) => Management())
>>>>>>> cc4c9a6644a3f52941a98027a9edde9c3d057ef1
                                );
                                print('Backward');
                              },
                            ),
                            SizedBox(width: 55.w,),
                            new IconButton(
                              //alignment: Alignment(32, 0),
                              icon: Image.asset('assets/Vector_forward.png'),
                              color: Colors.green,
                              iconSize: 30,
                              onPressed: () {
                                Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context) => Medicine())
                                );
                                print('Forward');
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          'NOTE',
                          style: TextStyle(
                              fontSize: 15.sp,
                              color: Color(0xff969696),
                              fontFamily: 'Circular Std',
                              fontWeight: FontWeight.normal),
                        ),
                        SizedBox(height: 1.h,),
                        Padding(
<<<<<<< HEAD
                          padding: const EdgeInsets.fromLTRB(100, 10, 100, 0),
                          child: Text(
                            'In the last three years, how many years of skilled work experience do you have in Canada?',
                            style: TextStyle(
                                fontSize: 10.sp,
                                color: Color(0xff969696),
                                fontFamily: 'Circular Std',
                                fontWeight: FontWeight.normal,
=======
                          padding: const EdgeInsets.fromLTRB(90, 10, 90, 0),
                          child: Text(
                            'In the last three years, how many years of skilled work experience do you have in Canada?',
                            style: TextStyle(
                              fontSize: 10.sp,
                              color: Color(0xff969696),
                              fontFamily: 'Circular Std',
                              fontWeight: FontWeight.normal,
>>>>>>> cc4c9a6644a3f52941a98027a9edde9c3d057ef1
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                    alignment: Alignment(0, -0.65),
                    foregroundDecoration: BoxDecoration(
                        gradient: RadialGradient(
                            radius: 0.15,
                            center: Alignment(0.2, -0.55),
                            colors: [
<<<<<<< HEAD
                          Color(0xff9BE15D).withOpacity(0.8),
                          Color(0xff00E3AE).withOpacity(0.8),
                          Colors.transparent
                        ])),
=======
                              Color(0xff9BE15D).withOpacity(0.8),
                              Color(0xff00E3AE).withOpacity(0.8),
                              Colors.transparent
                            ])),
>>>>>>> cc4c9a6644a3f52941a98027a9edde9c3d057ef1
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Color(0xFF1E1E1E),
    );
  }
}
