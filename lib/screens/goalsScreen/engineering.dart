import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:precisely/assets/figmauploadicon_icons.dart';
import 'package:precisely/utils/scoreScreen.dart';

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
            Navigator.of(context).pop();
          },
          icon: Icon(Figmauploadicon.backButton,size: 15,),
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
                  colors: [
                    Color(0xff9BE15D),
                    Color(0xff00E3AE),
                    Colors.transparent
                  ],
                )),
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
                          height: 120,
                        ),
                        Icon(
                          Figmauploadicon.rocket,
                          color: Color(0xff9BE15D),
                          size: 280,
                        ),
                        SizedBox(
                          height: 100,
                        ),
                        Text(
                          'ENGINEERING',
                          style: TextStyle(
                              fontSize: 50,
                              color: Color(0xff6FDE72),
                              fontFamily: 'Monument Extended'),
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        Row(
                          children: [
                            SizedBox(width: 50,),
                            new IconButton(
                              //alignment: Alignment(5, 0),
                              icon: Image.asset('assets/Vector_backward.png'),
                              color: Colors.green,
                              iconSize: 30,
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) => Scorescreen())
                                );
                                print('Backward');
                              },
                            ),
                            SizedBox(width: 270,),
                            new IconButton(
                              //alignment: Alignment(32, 0),
                              icon: Image.asset('assets/Vector_forward.png'),
                              color: Colors.green,
                              iconSize: 30,
                              onPressed: () {
                                Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context) => Scorescreen())
                                );
                                print('Forward');
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          'NOTE',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff969696),
                              fontFamily: 'Circular Std',
                              fontWeight: FontWeight.normal),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(100, 10, 100, 0),
                          child: Text(
                            'In the last three years, how many years of skilled work experience do you have in Canada?',
                            style: TextStyle(
                                fontSize: 20,
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
                            radius: 0.15,
                            center: Alignment(0.2, -0.55),
                            colors: [
                          Color(0xff9BE15D).withOpacity(0.8),
                          Color(0xff00E3AE).withOpacity(0.8),
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