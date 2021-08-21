import 'package:flutter/material.dart';
import 'package:precisely/screens/goalsScreen/engineering.dart';
import 'package:precisely/utils/main_card.dart';
import 'package:precisely/utils/scoreScreen.dart';
import 'package:precisely/utils/step_1_submit.dart';
import 'package:precisely/utils/step_2_submit.dart';

import 'PersonalInfo/personal_info_1.dart';

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
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Engineering()),
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
                    MaterialPageRoute(builder: (context) => ScoreScreen()),
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
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StepSubmit2()),
                  );
                },
                child: MainCard(
                  title: "Work Experience Info",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
