import 'package:flutter/material.dart';
import 'package:precisely/screens/MainScreen/resume_sub.dart';
import 'package:precisely/utils/main_screen_card.dart';


class DashCard extends StatelessWidget {
  const DashCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1E1E1E),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Center(
            child: Wrap(
              spacing: 20,
              runSpacing: 20,
              children: [
                InkWell(
                  onTap: () {Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ResumeSubCard()));},
                  child: MainScreenCard(
                    title: "Resume Submission",
                    customIcon:   Image.asset('assets/Resume_Submission.png',height: 50,width: 50,),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: MainScreenCard(
                      title: "Schedule Call",
                      customIcon:   Image.asset('assets/ScheduleCall.png',height: 50,width: 50,)
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: MainScreenCard(
                      title: "Loan Calculator",
                      customIcon:   Image.asset('assets/LoanCalculator.png',height: 50,width: 50,)
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: MainScreenCard(
                      title: "Application Samples",
                      customIcon:   Image.asset('assets/ApplicationSamples.png',height: 50,width: 50,)
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
