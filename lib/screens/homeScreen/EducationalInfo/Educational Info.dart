import 'package:flutter/material.dart';
import 'package:precisely/utils/custom_card.dart';
import 'package:precisely/utils/progress_bar.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

import 'major_subjects.dart';

class AcademicDetails1 extends StatefulWidget {
  AcademicDetails1(
      {Key? key, required this.value, required this.pageController})
      : super(key: key);
  int value;
  final PageController pageController;

  @override
  _AcademicDetails1State createState() => _AcademicDetails1State();
}

class _AcademicDetails1State extends State<AcademicDetails1>
    with AutomaticKeepAliveClientMixin<AcademicDetails1> {
  get pageController => pageController;
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);

    var screensize = MediaQuery.of(context).size;
    return Scaffold(
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
              ]),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              // height: 1500,
              // width: 150,
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
                                    CustomCard(
                                      title: "10th",
                                      opt1: "34-60%",
                                      opt2: "61-80%",
                                      opt3: "81-100%",
                                      optV1: 0,
                                      optV2: 10,
                                      optV3: 20,
                                    ),
                                    CustomCard(
                                      title: "12th",
                                      opt1: "34-60%",
                                      opt2: "61-80%",
                                      opt3: "81-100%",
                                      optV1: 0,
                                      optV2: 10,
                                      optV3: 20,
                                    ),
                                    CustomCard(
                                      title: "Bachelor",
                                      opt1: "0-6",
                                      opt2: "6.1-8",
                                      opt3: "8.1-10",
                                      optV1: 0,
                                      optV2: 10,
                                      optV3: 20,
                                    ),
                                    CustomCard(
                                      title: "Masters",
                                      opt1: "0-6",
                                      opt2: "6.1-8",
                                      opt3: "8.1-10",
                                      optV1: 0,
                                      optV2: 10,
                                      optV3: 20,
                                    ),
                                    CustomCard(
                                      title: "SAT",
                                      opt1: "0-500",
                                      opt2: "501-1000",
                                      opt3: "801-1600",
                                      optV1: 0,
                                      optV2: 10,
                                      optV3: 20,
                                    ),
                                    CustomCard(
                                      title: "ACT",
                                      opt1: "0-500",
                                      opt2: "501-1000",
                                      opt3: "801-1600",
                                      optV1: 0,
                                      optV2: 10,
                                      optV3: 20,
                                    ),
                                    CustomCard(
                                      title: "IELTS",
                                      opt1: "0-6",
                                      opt2: "6.1-8",
                                      opt3: "8.1-10",
                                      optV1: 0,
                                      optV2: 10,
                                      optV3: 20,
                                    ),
                                    CustomCard(
                                      title: "TOEFL",
                                      opt1: "0-6",
                                      opt2: "6.1-8",
                                      opt3: "8.1-10",
                                      optV1: 0,
                                      optV2: 10,
                                      optV3: 20,
                                    ),
                                    CustomCard(
                                      title: "GMAT",
                                      opt1: "0-500",
                                      opt2: "501-1000",
                                      opt3: "801-1600",
                                      optV1: 0,
                                      optV2: 10,
                                      optV3: 20,
                                    ),
                                    CustomCard(
                                      title: "GRE",
                                      opt1: "0-500",
                                      opt2: "501-1000",
                                      opt3: "801-1600",
                                      optV1: 0,
                                      optV2: 10,
                                      optV3: 20,
                                    ),
                                    CustomCard(
                                      title: "Placement Test",
                                      opt1: "0-500",
                                      opt2: "501-1000",
                                      opt3: "801-1600",
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
                                width: 320,
                                height: 130,
                              ),
                            )
                          ],
                        )),
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
          child: Text('Next',
              style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 15,
                  fontWeight: FontWeight.w400)),
          onTap: () {
            widget.value = widget.value + 10;
            widget.pageController.nextPage(
                duration: Duration(milliseconds: 400), curve: Curves.ease);
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
