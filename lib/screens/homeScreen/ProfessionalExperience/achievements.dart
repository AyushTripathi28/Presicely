import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:precisely/screens/appbarbottom.dart';
import 'package:precisely/screens/homeScreen/HomeScreen.dart';
import 'package:precisely/screens/utils/progrssbar.dart';
import 'package:precisely/utils/custom_card.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class Achievements extends StatefulWidget {
  const Achievements({Key? key}) : super(key: key);

  @override
  _AchievementsState createState() => _AchievementsState();
}

class _AchievementsState extends State<Achievements> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GradientText(
          'Achievements',
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
          icon: Icon(Icons.arrow_back),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: false,
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
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(25.0),
          child: ProgressBar(
            value: 0, //widget.value
          ),
        ),
      ),
      backgroundColor: Color(0xFF1E1E1E),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: Container(
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
            boxShadow: [
              BoxShadow(
                color: Color(0xff000000),
                blurRadius: 20.0, // soften the shadow
                spreadRadius: 0.0, //extend the shadow
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              // height: height,
              // width: width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xffC8D5E1).withOpacity(0.09),
                    Color(0xff000000).withOpacity(0.2),
                  ],
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: EdgeInsets.all(1.5), // white outline width
                child: DecoratedBox(
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
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Stack(
                        children: [
                          Container(
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("Important",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.grey)),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                      "Please select a relevent category and answer the cooresponding question",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white)),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  CustomCard(
                                    title: "MUNS",
                                    opt1: "National",
                                    opt2: "Regional",
                                    opt3: "District",
                                    optV1: 0,
                                    optV2: 10,
                                    optV3: 20,
                                  ),
                                  CustomCard(
                                    title: "Olympiads",
                                    opt1: "National",
                                    opt2: "Regional",
                                    opt3: "District",
                                    optV1: 0,
                                    optV2: 10,
                                    optV3: 20,
                                  ),
                                  CustomCard(
                                    title: "Quiz Competition",
                                    opt1: "National",
                                    opt2: "Regional",
                                    opt3: "District",
                                    optV1: 0,
                                    optV2: 10,
                                    optV3: 20,
                                  ),
                                  CustomCard(
                                    title: "Community Service",
                                    opt1: "0-2 yrs",
                                    opt2: "2-3 yrs",
                                    opt3: "3-4 yrs",
                                    optV1: 0,
                                    optV2: 10,
                                    optV3: 20,
                                  ),
                                  CustomCard(
                                    title: "Volunteer Work",
                                    opt1: "0-2 yrs",
                                    opt2: "2-3 yrs",
                                    opt3: "3-4 yrs",
                                    optV1: 0,
                                    optV2: 10,
                                    optV3: 20,
                                  ),
                                  CustomCard(
                                    title: "Student Council",
                                    opt1: "0-2 yrs",
                                    opt2: "2-3 yrs",
                                    opt3: "3-4 yrs",
                                    optV1: 0,
                                    optV2: 10,
                                    optV3: 20,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: -5,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color(0xff1E2125).withOpacity(0.15),
                                    Color(0xff212528),
                                  ],
                                ),
                              ),
                              width: 290,
                              height: 150,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 40, bottom: 30),
        child: OutlineGradientButton(
          child: Text('Submit',
              style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 15,
                  fontWeight: FontWeight.w400)),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => AppBarBottom(
                  value: 0,
                ),
              ),
            );
          },
          gradient: LinearGradient(colors: [
            Color(0xffFFE2CD),
            Color(0xffFEC2E7),
            Color(0xffC9E7FF),
            Color(0xff86FEF4)
          ]),
          strokeWidth: 2,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
          radius: Radius.circular(8),
        ),
      ),
    );
  }
}
