import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:precisely/assets/figmaUploadIcon_icons.dart';

class LoadingPersonal extends StatefulWidget {
  @override
  _LoadingPersonalState createState() => _LoadingPersonalState();
}

class _LoadingPersonalState extends State<LoadingPersonal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1E1E1E),
      appBar: AppBar(
        title: Text('Personal Info'),
        backgroundColor: Color(0xff1E1E1E),
        elevation: 10.0,
        actions: [
          IconButton(
              onPressed: () {
                print('clicked');
              },
              icon: Icon(Icons.info)),
          IconButton(
              onPressed: () {
                print('clicked');
              },
              icon: Icon(Icons.chat)),
        ],
        leading: IconButton(
            icon: Icon(
              Figmauploadicon.backButton,
              size: 15,
            ),
            onPressed: () {}),
      ), // AppBar
      body: Center(
        child: Container(
          child: Stack(
            children: [
              Image(
                image: AssetImage("assets/Info.png"),
                alignment: AlignmentDirectional.center,
              ),
              Positioned(
                  top: 40,
                  bottom: 40,
                  left: 40,
                  right: 40,
                  child: Container(
                    alignment: Alignment.topRight,
                    height: 30,
                    width: 70,
                    child: Column(
                      children: [
                        Text(
                          "83%",
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                              fontFamily: 'agne'),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "percent of Americans agree\nthat our nation is better off\nwhen more of our students are\ninternationally educated and\nunderstand other cultures and\nlanguages.",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                            fontFamily: 'futur',
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ],
                    ),
                  )),
              Align(
                alignment: Alignment(0.9, 0.95),
                child: OutlineGradientButton(
                  strokeWidth: 2,
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  radius: Radius.circular(8),
                  child: Text(
                    'Next',
                    style: TextStyle(color: Color(0xffFFFFFF), fontSize: 15),
                  ),
                  backgroundColor: Colors.black45,
                  elevation: 4,
                  inkWell: true,
                  onTap: () => print('Tap'),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xffFFE2CD),
                      Color(0xffFEC2E7),
                      Color(0xffC9E7FF),
                      Color(0xff86FEF4)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
