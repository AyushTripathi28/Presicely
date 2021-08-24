import 'package:flutter/material.dart';
import 'package:precisely/utils/progress_bar.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class MajorSubject extends StatefulWidget {
  const MajorSubject(
      {Key? key, required this.value, required this.pageController})
      : super(key: key);
  final int value;
  final PageController pageController;

  @override
  _MajorSubjectState createState() => _MajorSubjectState();
}

class _MajorSubjectState extends State<MajorSubject>
    with AutomaticKeepAliveClientMixin<MajorSubject> {
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
            ],
          ),
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
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                          ),
                          child: Container(
                            child: SingleChildScrollView(
                              child: Column(
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
                                  Text("Enter Major Subject/Branch",
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.white)),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "Bachelor",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  TextField(
                                    // The validator receives the text that the user has entered.
                                    cursorColor: Colors.white,
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      fillColor: Colors.black,
                                      filled: true,
                                      // hintText: "Enter Bachelor's Major subject",
                                      labelText: "Bachelor's Major Subject",
                                      hintStyle: TextStyle(color: Colors.white),
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.always,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: BorderSide(
                                          color: Colors.red,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: BorderSide(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Text(
                                    "Masters",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  TextField(
                                    // The validator receives the text that the user has entered.
                                    cursorColor: Colors.white,
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      fillColor: Colors.black,
                                      filled: true,
                                      // hintText: "Enter Bachelor's Major subject",
                                      labelText: "Master's Major Subject",
                                      hintStyle: TextStyle(color: Colors.white),
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.always,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: BorderSide(
                                          color: Colors.red,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: BorderSide(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Text(
                                    "Phd",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  TextField(
                                    // The validator receives the text that the user has entered.
                                    cursorColor: Colors.white,
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      fillColor: Colors.black,
                                      filled: true,
                                      // hintText: "Enter Bachelor's Major subject",
                                      labelText: "Phd's Major Subject",
                                      hintStyle: TextStyle(color: Colors.white),
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.always,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: BorderSide(
                                          color: Colors.red,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: BorderSide(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 80,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: -3,
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
                            width: 312,
                            height: 100,
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
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 40, bottom: 30),
        child: OutlineGradientButton(
          child: Text('Next',
              style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 15,
                  fontWeight: FontWeight.w400)),
          onTap: () {
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
