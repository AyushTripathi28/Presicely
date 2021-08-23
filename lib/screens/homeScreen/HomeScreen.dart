import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:precisely/screens/goalsScreen/engineering.dart';
import 'package:precisely/utils/main_card.dart';
import 'package:precisely/utils/scoreScreen.dart';
import 'package:precisely/utils/step_1_submit.dart';
import 'package:precisely/utils/step_2_submit.dart';

import 'PersonalInfo/personal_info_1.dart';
=======
import 'package:precisely/screens/homeScreen/EducationalInfo/education.dart';
import 'package:precisely/screens/homeScreen/ProfessionalExperience/achievements.dart';
import 'package:precisely/screens/utils/scoreScreen.dart';
//import 'package:simple_gradient_text/simple_gradient_text.dart';
//import 'package:easy_gradient_text/easy_gradient_text.dart]';

import 'PersonalInfo/personal_info_1.dart';
import 'maincard.dart';
>>>>>>> cc4c9a6644a3f52941a98027a9edde9c3d057ef1

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
=======
      // appBar: AppBar(
      //   title: GradientText(
      //     'Precisely',
      //     style: TextStyle(
      //         fontSize: 22.0, fontWeight: FontWeight.bold, letterSpacing: 1.5),
      //     gradientType: GradientType.linear,
      //     colors: [
      //       Color(0xffFFE2CD),
      //       Color(0xffFEC2E7),
      //       Color(0xffC9E7FF),
      //       Color(0xff86FEF4),
      //     ],
      //   ),
      //   centerTitle: false,
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      // ),
>>>>>>> cc4c9a6644a3f52941a98027a9edde9c3d057ef1
      backgroundColor: Color(0xff1E1E1E),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PersonalInfoPage()),
                  );
                },
                child: MainCard(
                  title: "Personal Info",
                ),
              ),
              SizedBox(
                height: 20,
              ),
<<<<<<< HEAD
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Engineering()),
=======
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EducationPage(value: 0,)),
>>>>>>> cc4c9a6644a3f52941a98027a9edde9c3d057ef1
                  );
                },
                child: MainCard(
                  title: "Educational Info",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
<<<<<<< HEAD
                    MaterialPageRoute(builder: (context) => ScoreScreen()),
=======
                    MaterialPageRoute(builder: (context) => Achievements()),
>>>>>>> cc4c9a6644a3f52941a98027a9edde9c3d057ef1
                  );
                },
                child: MainCard(
                  title: "Professional Info",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
<<<<<<< HEAD
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StepSubmit2()),
                  );
                },
                child: MainCard(
                  title: "Work Experience Info",
=======
                child: MainCard(
                  title: "Work Experience Info",
                ),
              ),
              SizedBox(
                height : 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ScoreScreen()),
                  );
                },
                child: MainCard(
                  title: "Score",
>>>>>>> cc4c9a6644a3f52941a98027a9edde9c3d057ef1
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
<<<<<<< HEAD
}
=======
}
>>>>>>> cc4c9a6644a3f52941a98027a9edde9c3d057ef1
