import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:precisely/utils/progress_bar.dart';

import '../HomeScreen.dart';

enum RequireScholarship { Yes, No }

class Scholarship extends StatefulWidget {
  const Scholarship(
      {Key? key, required this.value, required this.pageController})
      : super(key: key);
  final int value;
  final PageController pageController;

  @override
  _ScholarshipState createState() => _ScholarshipState();
}

class _ScholarshipState extends State<Scholarship>
    with AutomaticKeepAliveClientMixin<Scholarship> {
  get pageController => pageController;
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
  double _currentSliderValue = 0;
  RequireScholarship? _requireScholarship = RequireScholarship.No;
  bool isExpanded = false;
  UniqueKey keyTile = UniqueKey();

  void expandTile() {
    setState(() {
      isExpanded = true;
      keyTile = UniqueKey();
    });
  }

  void shrinkTile() {
    setState(() {
      isExpanded = false;
      keyTile = UniqueKey();
    });
  }

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
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Important",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.grey)),
                            SizedBox(
                              height: 50,
                            ),
                            //------------------------------------------------------------------------------------------
                            Text(
                              "Are you interested in getting a scholarship ?",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            ExpansionTile(
                              key: keyTile,
                              initiallyExpanded: isExpanded,
                              title: Text(
                                "Yes",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              subtitle: Text(_currentSliderValue.toString()),
                              children: [
                                Slider(
                                  value: _currentSliderValue,
                                  onChanged: (double value) {
                                    setState(() {
                                      _currentSliderValue = value;
                                    });
                                  },
                                  min: 0,
                                  max: 100,
                                  divisions: 10,
                                  label: _currentSliderValue.round().toString(),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Note : The more scholarship yooou request, the more competitive it get for your application & hence may result in a lesser score at the end of this exercise.",
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                ),
                              ],
                              trailing: Radio(
                                  value: RequireScholarship.Yes,
                                  groupValue: _requireScholarship,
                                  onChanged: (RequireScholarship? value) {
                                    setState(() {
                                      _requireScholarship = value;
                                      isExpanded ? shrinkTile() : expandTile();
                                      print(_requireScholarship);
                                    });
                                  }),
                            ),
                            ListTile(
                              title: Text(
                                "No",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              trailing: Radio(
                                value: RequireScholarship.No,
                                groupValue: _requireScholarship,
                                onChanged: (RequireScholarship? value) {
                                  setState(() {
                                    _requireScholarship = value;
                                    isExpanded ? shrinkTile() : expandTile();
                                    print(_requireScholarship);
                                  });
                                },
                              ),
                            ),

                            //------------------------------------------------------------------------------------------

                            //------------------------------------------------------------------------------------------
                            SizedBox(
                              height: 100,
                            ),
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
