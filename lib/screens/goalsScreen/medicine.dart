import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:precisely/assets/figmauploadicon_icons.dart';
import 'package:precisely/screens/goalsScreen/engineering.dart';
import 'package:precisely/screens/goalsScreen/public_policy.dart';
import 'package:sizer/sizer.dart';

class Medicine extends StatefulWidget {
  const Medicine({Key? key}) : super(key: key);

  @override
  _MedicineState createState() => _MedicineState();
}

class _MedicineState extends State<Medicine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
=======
      //extendBodyBehindAppBar: true,
>>>>>>> cc4c9a6644a3f52941a98027a9edde9c3d057ef1
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Figmauploadicon.backButton,
            size: 10.sp,
          ),
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
              //Color(0xffFFDB03).withOpacity(0.3),
              Color(0xffF87A1D).withOpacity(0.7),
              Colors.transparent
            ],
          )),
          child: Container(
            decoration: BoxDecoration(
                gradient: RadialGradient(
              radius: 0.05,
              center: Alignment(0.3, -0.85),
              colors: [
                Color(0xffFFDB03),
                Color(0xffF87A1D),
                Colors.transparent
              ],
            )),
            child: Container(
              decoration: BoxDecoration(
                  gradient: RadialGradient(
                radius: 0.08,
                center: Alignment(-0.75, -0.6),
                colors: [
                  Color(0xffFFDB03),
                  Color(0xffF87A1D),
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
                  //Color(0xffFFDB03).withOpacity(0.3),
                  Color(0xffF87A1D).withOpacity(0.7),
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
                    Color(0xffFFDB03),
                    Color(0xffF87A1D),
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
                      Color(0xffFFDB03),
                      Color(0xffF87A1D),
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
                        Color(0xffFFDB03),
                        Color(0xffF87A1D),
                        Colors.transparent
                      ],
                    )),
<<<<<<< HEAD
=======
                child: Container(
                  decoration: BoxDecoration(
                      gradient: RadialGradient(
                        radius: 0.06,
                        center: Alignment(0.95, -0.4),
                        colors: [
                          Color(0xffFFDB03),
                          Color(0xffF87A1D),
                          Colors.transparent
                        ],
                      )),
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: RadialGradient(
                          radius: 0.065,
                          center: Alignment(-0.95, -0),
                          colors: [
                            Color(0xffFFDB03),
                            Color(0xffF87A1D),
                            Colors.transparent
                          ],
                        )),
>>>>>>> cc4c9a6644a3f52941a98027a9edde9c3d057ef1
                    child: Column(
                      children: [
                        SizedBox(
                          height: 5.5.h,
                        ),
                        Image.asset(
                          'assets/Medicine.png',
<<<<<<< HEAD
                          scale: 0.8.sp,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
=======
                          scale: 0.9.sp,
                        ),
                        // SizedBox(
                        //   height: 10.h,
                        // ),
>>>>>>> cc4c9a6644a3f52941a98027a9edde9c3d057ef1
                        Text(
                          'Medicine',
                          style: TextStyle(
                              fontSize: 30.sp,
                              color: Color(0xffF6831B),
                              fontFamily: 'Monument Extended'),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 10.w,
                            ),
                            new IconButton(
                              //alignment: Alignment(5, 0),
                              icon: Image.asset('assets/medicine-backward.png'),
                              iconSize: 30,
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Engineering()));
                                print('Backward');
                              },
                            ),
                            SizedBox(
                              width: 55.w,
                            ),
                            new IconButton(
                              //alignment: Alignment(32, 0),
                              icon: Image.asset('assets/medicine-forward.png'),
                              iconSize: 30,
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => PublicPolicy()));
                                print('Forward');
                              },
                            ),
                          ],
                        ),
                        SizedBox(
<<<<<<< HEAD
                          height: 5.h,
=======
                          height: 3.h,
>>>>>>> cc4c9a6644a3f52941a98027a9edde9c3d057ef1
                        ),
                        Text(
                          'NOTE',
                          style: TextStyle(
                              fontSize: 15.sp,
                              color: Color(0xff969696),
                              fontFamily: 'Circular Std',
                              fontWeight: FontWeight.normal),
                        ),
<<<<<<< HEAD
                        // SizedBox(
                        //   height: 1.h,
                        // ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(100, 10, 100, 0),
=======
                        SizedBox(
                          height: 1.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(90, 10, 90, 0),
>>>>>>> cc4c9a6644a3f52941a98027a9edde9c3d057ef1
                          child: Text(
                            'In the last three years, how many years of skilled work experience do you have in Canada?',
                            style: TextStyle(
                              fontSize: 10.sp,
                              color: Color(0xff969696),
                              fontFamily: 'Circular Std',
                              fontWeight: FontWeight.normal,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                    //alignment: Alignment(0, -0.65),
                    // foregroundDecoration: BoxDecoration(
                    //     gradient: LinearGradient(
                    //         colors: [
                    //       //Color(0xff9BE15D).withOpacity(0.8),
                    //           Color(0xff000000),
                    //       Colors.transparent,
                    //     ])),
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
