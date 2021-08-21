import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:precisely/assets/figmauploadicon_icons.dart';
import 'package:progress_indicator/progress_indicator.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';


class ScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1E1E1E),
      appBar: AppBar(
        title: GradientText(
          'Score',
          style: TextStyle(
            letterSpacing: 0.02,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
          colors: [
            Color(0xffFFE2CD),
            Color(0xfffec2e7),
            Color(0XffC9E7FF),
            Color(0xff86FEF4),
          ],
        ),
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
        backgroundColor: Color(0xff1E1E1E),
        actions: <Widget>[
          Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.blueGrey),
            ),
            child: new IconButton(
                onPressed: () => print('Clicked..'),
                icon: new Image.asset('assets/info1.png')),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 35,
            width: 35,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.blueGrey)),
            child: new IconButton(
              onPressed: () => print('Clicked..'),
              icon: new Image.asset('assets/Vector.png'),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(50, 30, 40, 30),
              padding: EdgeInsets.all(20),
              //height: 100,
              width: 230,
            ),
            GradientText(
              '178',
              style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
              //gradient: LinearGradient(
              colors: [
                Color(0xffFFE2CD),
                Color(0xffFEC2E7),
                Color(0xffC9E7FF),
                Color(0xff86FEF4),
              ],
              // ),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Your Score', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
            SizedBox(
              height: 15,
            ),
            Text('This is more than 70% of the users', style: TextStyle(fontSize: 16, color: Colors.grey)),
            SizedBox(
              height: 20,
            ),
            OutlineGradientButton(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
                child: Text('View Tracks', style: TextStyle(color: Colors.white, fontSize: 18),),
              ),
              gradient: LinearGradient(
                colors: [Color(0xffFFE2CD), Color(0xffFEC2E7), Color(0xffC9E7FF), Color(0xff86FEF4)],
              ),
              strokeWidth: 2,
              radius: Radius.circular(10),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.transparent),
                    child: Image.asset(
                      "assets/screen1.jpeg",
                      height: 150,
                      width: 150,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(24)),
                    child: Image.asset(
                      "assets/screen2.jpeg",
                      height: 150,
                      width: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 15),
              height: 230,
              width: 335,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: Colors.grey[850],
              ),
              child: Column(
                children: [
                  Text(
                    "Probability of Regions",
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Color(0xff616161), fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  BarProgress(
                    percentage: 85,
                    backColor: Color(0xff000000),
                    gradient: LinearGradient(colors: [
                      Color(0xffB276FF),
                      Color(0xffB276FF),
                    ]),
                    showPercentage: false,
                    stroke: 4,
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 2)),
                  Text('Asia', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Color(0xffB276FF))),
                  BarProgress(
                    percentage: 75,
                    backColor: Color(0xff000000),
                    gradient: LinearGradient(colors: [
                      Color(0xffFF7676),
                      Color(0xffFF7676),
                    ]),
                    showPercentage: false,
                    stroke: 4,
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 2)),
                  Text('North America', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Color(0xffFF7676))),
                  BarProgress(
                    percentage: 40,
                    backColor: Color(0xff000000),
                    gradient: LinearGradient(colors: [
                      Color(0xff57B599),
                      Color(0xff57B599),
                    ]),
                    showPercentage: false,
                    stroke: 4,
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 2)),
                  Text('Australia', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Color(0xff57B599))),
                  BarProgress(
                    percentage: 90,
                    backColor: Color(0xff000000),
                    gradient: LinearGradient(colors: [
                      Color(0xffCB813E),
                      Color(0xffCB813E),
                    ]),
                    showPercentage: false,
                    stroke: 4,
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 2)),
                  Text('West Europe', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Color(0xffCB813E))),
                  BarProgress(
                    percentage: 60,
                    backColor: Color(0xff000000),
                    gradient: LinearGradient(colors: [
                      Color(0xffCB3EC5),
                      Color(0xffCB3EC5),
                    ]),
                    showPercentage: false,
                    stroke: 4,
                  ),
                  Text('East Europe', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Color(0xffCB3EC5))),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(25),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(24), color: Colors.grey[850]),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(24), color: Colors.grey[850]),
                    child: Column(
                      children: [
                        Text('Last Mock Test', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white)),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text('83%', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
                            Icon(
                              Icons.arrow_drop_up_outlined,
                              color: Colors.green,
                            ),
                            Text('5%', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.green)),
                          ],
                        ),
                        Text('Compared to\n74% last exam', style: TextStyle(fontSize: 15, color: Colors.grey)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              height: 150,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: Colors.grey[850],
              ),
              child: Column(
                children: [
                  Text('People with a similar profile intreset', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey)),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text('Civil Engineering', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white)),
                          Text('Product Design', style: TextStyle(fontSize: 15, color: Colors.grey)),
                          Text('M.Arch Test', style: TextStyle(fontSize: 15, color: Colors.grey)),
                        ],
                      ),
                      Image.asset("assets/man.png", scale: 1.5),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(20),
              height: 150,
              width: 300,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(24), color: Colors.grey[850]),
              child: Column(
                children: [
                  Text('Mandatory Legal Formalities', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey)),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.check_outlined,
                            color: Colors.green,
                          ),
                          Text('Passport', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white)),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.close_outlined,
                            color: Colors.red,
                          ),
                          Text('Income Documents', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white)),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.close_outlined,
                            color: Colors.red,
                          ),
                          Text('English Proficiency Test', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
