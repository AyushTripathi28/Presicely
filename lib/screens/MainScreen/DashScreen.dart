import 'package:flutter/material.dart';
import 'package:precisely/screens/MainScreen/dashscreencard.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';


class DashCard extends StatelessWidget {
  const DashCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GradientText(
          'Precisely',
          style: TextStyle(
              fontSize: 22.0, fontWeight: FontWeight.bold, letterSpacing: 1.5),
          gradientType: GradientType.linear,
          colors: [
            Color(0xffFFE2CD),
            Color(0xffFEC2E7),
            Color(0xffC9E7FF),
            Color(0xff86FEF4),
          ],
        ),
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Color(0xff161616),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Center(
            child: Wrap(
              spacing: 30,
              runSpacing: 30,
              children: [
                InkWell(
                  onTap: () {},
                  child: SectionMainCard(
                    title: "Resume Submission",
                    customIcon: Icon(Icons.ac_unit),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: SectionMainCard(
                    title: "Schedule Call",
                    customIcon: Icon(Icons.ac_unit),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: SectionMainCard(
                    title: "Loan Calculator",
                    customIcon: Icon(Icons.ac_unit),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: SectionMainCard(
                    title: "Application Samples",
                    customIcon: Icon(Icons.ac_unit),
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
