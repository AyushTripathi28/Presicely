import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:precisely/assets/figmauploadicon_icons.dart';

class LoadingPersonal extends StatefulWidget {
  @override
  _LoadingPersonalState createState() => _LoadingPersonalState();
}

class _LoadingPersonalState extends State<LoadingPersonal> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
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
      ), // AppBar,
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
          width: size.width * 0.85,
          height: size.height * 0.85,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xff32383E),
                Color(0xff17191C),
              ],
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 12),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/Info.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(23.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "83%",
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffC1403F),
                      ),
                    ),
                    Text(
                      "percent of Americans agree\nthat our nation is better off\nwhen more of our students are\ninternationally educated and\nunderstand other cultures and\nlanguages.",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff144A52),
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: Container(
        margin:
        EdgeInsets.only(right: size.width / 10, bottom: size.height / 25),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff32383E),
              Color(0xff17191C),
            ],
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: OutlineGradientButton(
          strokeWidth: 2,
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          radius: Radius.circular(7),
          child: Text(
            'Next',
            style: TextStyle(color: Color(0xffFFFFFF), fontSize: 15),
          ),
          backgroundColor: Colors.black45,
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
    );
  }
}


