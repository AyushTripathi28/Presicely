import 'package:flutter/material.dart';
import 'package:precisely/assets/figmauploadicon_icons.dart';
import 'package:precisely/screens/goalsScreen/engineering.dart';
import 'package:precisely/screens/goalsScreen/management.dart';

import 'medicine.dart';

class PublicPolicy extends StatefulWidget {
  const PublicPolicy({Key? key}) : super(key: key);

  @override
  _PublicPolicyState createState() => _PublicPolicyState();
}

class _PublicPolicyState extends State<PublicPolicy> {
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
            size: 15,
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
              //Color(0xffED81FF).withOpacity(0.3),
              Color(0xffDB00FF).withOpacity(0.7),
              Colors.transparent
            ],
          )),
          child: Container(
            decoration: BoxDecoration(
                gradient: RadialGradient(
              radius: 0.05,
              center: Alignment(0.3, -0.85),
              colors: [
                Color(0xffED81FF),
                Color(0xffDB00FF),
                Colors.transparent
              ],
            )),
            child: Container(
              decoration: BoxDecoration(
                  gradient: RadialGradient(
                radius: 0.08,
                center: Alignment(-0.75, -0.6),
                colors: [
                  Color(0xffED81FF),
                  Color(0xffDB00FF),
                  Colors.transparent
                ],
              )),
              child: Container(
                decoration: BoxDecoration(
                    gradient: RadialGradient(
                  radius: 0.03,
                  center: Alignment(0.5, -0.3),
                  colors: [
                    Color(0xffED81FF),
                    Color(0xffDB00FF),
                    Colors.transparent
                  ],
                )),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: RadialGradient(
                    radius: 0.06,
                    center: Alignment(0.95, -0.4),
                    colors: [
                      Color(0xffED81FF),
                      Color(0xffDB00FF),
                      Colors.transparent
                    ],
                  )),
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: RadialGradient(
                      radius: 0.065,
                      center: Alignment(-0.95, -0),
                      colors: [
                        Color(0xffED81FF),
                        Color(0xffDB00FF),
                        Colors.transparent
                      ],
                    )),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 120,
                        ),
                        Stack(children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
                            child: Icon(
                              Figmauploadicon.privacypolicy1,
                              color: Color(0xffa33cd7),
                              size: 280,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(40, 20, 120, 0),
                            child: Icon(Figmauploadicon.privacypolicy2,
                              color: Color(0xffea81ff),
                              size: 280,
                        ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(70, 120, 0, 0),
                            child: Icon(Figmauploadicon.privacypolicy3,
                            size: 150,
                            color: Color(0xffee9dfa).withOpacity(0.9),),
                          )
                        ]),
                        SizedBox(
                          height: 100,
                        ),
                        Text(
                          'Public \n Policy',
                          style: TextStyle(
                              fontSize: 50,
                              color: Color(0xff831b95),
                              fontFamily: 'Monument Extended'),
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 50,
                            ),
                            new IconButton(
                              //alignment: Alignment(5, 0),
                              icon: Image.asset('assets/publicpolicy-backward.png'),
                              iconSize: 30,
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Medicine()));
                                print('Backward');
                              },
                            ),
                            SizedBox(
                              width: 270,
                            ),
                            new IconButton(
                              //alignment: Alignment(32, 0),
                              icon: Image.asset('assets/publicpolicy-forward.png'),
                              iconSize: 30,
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Management()));
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
                        SizedBox(
                          height: 10,
                        ),
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
                    // alignment: Alignment(0, -0.65),
                    // foregroundDecoration: BoxDecoration(
                    //     gradient: RadialGradient(
                    //         radius: 0.15,
                    //         center: Alignment(0.2, -0.55),
                    //         colors: [
                    //           Color(0xff9BE15D).withOpacity(0.8),
                    //           Color(0xff00E3AE).withOpacity(0.8),
                    //           Colors.transparent
                    //         ])),
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
