import 'package:flutter/material.dart';
import 'package:precisely/screens/homeScreen/EducationalInfo/education.dart';
import 'package:precisely/screens/homeScreen/ProfessionalExperience/achievements.dart';
import 'package:precisely/screens/utils/scoreScreen.dart';
//import 'package:simple_gradient_text/simple_gradient_text.dart';
//import 'package:easy_gradient_text/easy_gradient_text.dart]';

import 'PersonalInfo/personal_info_1.dart';
import 'maincard.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EducationPage(
                              value: 0,
                            )),
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
                    MaterialPageRoute(builder: (context) => Achievements()),
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
                child: MainCard(
                  title: "Work Experience Info",
                ),
              ),
              SizedBox(
                height: 20,
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
