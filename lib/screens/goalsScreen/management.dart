import 'package:flutter/material.dart';
import 'package:precisely/assets/figmauploadicon_icons.dart';
import 'package:precisely/screens/appbarbottom.dart';
import 'package:precisely/screens/goalsScreen/public_policy.dart';
import 'package:sizer/sizer.dart';

class Management extends StatefulWidget {
  const Management({Key? key}) : super(key: key);

  @override
  _ManagementState createState() => _ManagementState();
}

class _ManagementState extends State<Management> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            center: Alignment(0, -0.5),
            radius: 0.5,
            colors: [
              Color(0xff00E0FF).withOpacity(0.3),
              //Color(0xff004483).withOpacity(0.7),
              Colors.transparent
            ],
          )),
          child: Container(
            decoration: BoxDecoration(
                gradient: RadialGradient(
              radius: 0.05,
              center: Alignment(0.3, -0.85),
              colors: [
                Color(0xff00E0FF),
                Color(0xff004483),
                Colors.transparent
              ],
            )),
            child: Container(
              decoration: BoxDecoration(
                  gradient: RadialGradient(
                radius: 0.08,
                center: Alignment(-0.75, -0.6),
                colors: [
                  Color(0xff00E0FF),
                  Color(0xff004483),
                  Colors.transparent
                ],
              )),
              child: Container(
                decoration: BoxDecoration(
                    gradient: RadialGradient(
                  radius: 0.03,
                  center: Alignment(0.5, -0.3),
                  colors: [
                    Color(0xff00E0FF),
                    Color(0xff004483),
                    Colors.transparent
                  ],
                )),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: RadialGradient(
                    radius: 0.06,
                    center: Alignment(0.95, -0.4),
                    colors: [
                      Color(0xff00E0FF),
                      Color(0xff004483),
                      Colors.transparent
                    ],
                  )),
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: RadialGradient(
                      radius: 0.065,
                      center: Alignment(-0.95, -0),
                      colors: [
                        Color(0xff00E0FF),
                        Color(0xff004483),
                        Colors.transparent
                      ],
                    )),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10.h,
                        ),
                        Stack(children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                            child: Image.asset('assets/bulb.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(100, 90, 0, 0),
                            child: Image.asset(
                              'assets/bulbbox.png',
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(8, 110, 0, 0),
                              child: Image.asset('assets/b-1.png')),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(0, 75, 0, 0),
                              child: Image.asset('assets/b-2.png')),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(6, 30, 0, 0),
                              child: Image.asset('assets/b-3.png')),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(35, 0, 0, 0),
                              child: Image.asset('assets/b-4.png')),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(170, 10, 0, 0),
                              child: Image.asset('assets/b-5.png')),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(180, 50, 0, 0),
                              child: Image.asset('assets/b-6.png')),
                          Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(170, 110, 0, 0),
                              child: Image.asset('assets/b-7.png')),
                        ]),
                        SizedBox(
                          height: 4.h,
                        ),
                        Text(
                          'Management',
                          style: TextStyle(
                              fontSize: 30.sp,
                              color: Color(0xff00E0FF),
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
                              icon:
                                  Image.asset('assets/management-backward.png'),
                              iconSize: 30,
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => PublicPolicy()));
                                print('Backward');
                              },
                            ),
                            SizedBox(
                              width: 55.w,
                            ),
                            new IconButton(
                              //alignment: Alignment(32, 0),
                              icon:
                                  Image.asset('assets/management-forward.png'),
                              iconSize: 30,
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        AppBarBottom(value: 0)));
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
                        SizedBox(
                          height: 1.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(90, 10, 90, 0),
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
                    alignment: Alignment(0, -0.65),
                    foregroundDecoration: BoxDecoration(
                        gradient: RadialGradient(
                            radius: 0.25,
                            center: Alignment(-0.03, -0.4),
                            focalRadius: 2.5,
                            colors: [
                          Color(0xff00E0FF).withOpacity(1),
                          Color(0xff096C7A).withOpacity(0.5),
                          Colors.transparent
                        ])),
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
