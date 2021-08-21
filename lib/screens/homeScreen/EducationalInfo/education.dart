import 'package:flutter/material.dart';
import 'package:precisely/screens/homeScreen/EducationalInfo/scholarship.dart';
import 'package:precisely/screens/homeScreen/EducationalInfo/LiveCountry.dart';
import 'package:precisely/screens/homeScreen/EducationalInfo/visa_back_in_country.dart';
import 'package:precisely/screens/utils/progrssbar.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';


import 'Educational Info.dart';
import 'StudyCountry.dart';
import 'major_subjects.dart';

class EducationPage extends StatefulWidget {
  const EducationPage({Key? key, required this.value}) : super(key: key);
  final int value;

  @override
  _EducationPageState createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {
  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController(initialPage: 0);
    return Scaffold(
      appBar: AppBar(
        title: GradientText(
          'Precisely',
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
            // Navigator.of(context).pop();
            print(pageController.initialPage);
            pageController.page == 0
                ? Navigator.of(context).pop()
                : pageController.previousPage(
                duration: Duration(milliseconds: 400), curve: Curves.ease);
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
        padding: const EdgeInsets.all(20.0),
        child: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: pageController,
          children: [
            AcademicDetails1(
              value: 0,
              pageController: pageController,
            ),
            MajorSubject(
              value: 0,
              pageController: pageController,
            ),
            StudyCountry(value: 0, pageController: pageController),
            LiveCountry(value: 0, pageController: pageController),
            VisaBackInCountry(
              value: 0,
              pageController: pageController,
            ),
            Scholarship(
              value: 0,
              pageController: pageController,
            ),
          ],
        ),
      ),
    );
  }
}
