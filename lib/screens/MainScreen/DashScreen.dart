import 'package:flutter/material.dart';
import 'package:precisely/screens/MainScreen/dashscreencard.dart';
import 'package:precisely/screens/MainScreen/resume_sub.dart';
//import 'package:simple_gradient_text/simple_gradient_text.dart';


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
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ResumeSubCard(),
                      ),
                    );
                  },
                  child: SectionMainCard(
                    title: "Resume Submission",
                    customIcon:   Image.asset('assets/image1.png',height: 50,width: 50,),
                    ),
                  ),
                InkWell(
                  onTap: () {},
                  child: SectionMainCard(
                    title: "Schedule Call",
                      customIcon:   Image.asset('assets/image2.png',height: 50,width: 50,)
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: SectionMainCard(
                    title: "Loan Calculator",
                    customIcon:   Image.asset('assets/image3.png',height: 50,width: 50,)
                    ),
                  ),
                InkWell(
                  onTap: () {},
                  child: SectionMainCard(
                    title: "Application Samples",
                      customIcon:   Image.asset('assets/image4.png',height: 50,width: 50,)
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
