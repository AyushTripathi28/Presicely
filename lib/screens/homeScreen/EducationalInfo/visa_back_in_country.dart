import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:precisely/screens/appbarbottom.dart';
import 'package:precisely/screens/homeScreen/HomeScreen.dart';
import 'package:precisely/utils/progress_bar.dart';

import 'scholarship.dart';

enum RequireVisa { Yes, No }
enum BackIndia { Yes, No }

class VisaBackInCountry extends StatefulWidget {
  const VisaBackInCountry(
      {Key? key, required this.value, required this.pageController})
      : super(key: key);
  final int value;
  final PageController pageController;

  @override
  _VisaBackInCountryState createState() => _VisaBackInCountryState();
}

class _VisaBackInCountryState extends State<VisaBackInCountry>
    with AutomaticKeepAliveClientMixin<VisaBackInCountry> {
  get pageController => pageController;
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
  RequireVisa? _requireVisa = RequireVisa.No;
  BackIndia? _backIndia = BackIndia.No;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    var screensize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
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
              blurRadius: 10.0, // soften the shadow
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
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Important",
                              style:
                              TextStyle(fontSize: 15, color: Colors.grey)),
                          SizedBox(
                            height: 50,
                          ),
                          Text(
                            "Would you require help with visa/housing as well ?",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: ListTile(
                                  leading: Radio(
                                      value: RequireVisa.Yes,
                                      groupValue: _requireVisa,
                                      onChanged: (RequireVisa? value) {
                                        setState(() {
                                          _requireVisa = value;
                                        });
                                      }),
                                  title: Text(
                                    "Yes",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: ListTile(
                                  leading: Radio(
                                      value: RequireVisa.No,
                                      groupValue: _requireVisa,
                                      onChanged: (RequireVisa? value) {
                                        setState(() {
                                          _requireVisa = value;
                                        });
                                      }),
                                  title: Text(
                                    "No",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Text(
                            "Are you willing to come back to your home country after you complete your studies ?",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: ListTile(
                                  leading: Radio(
                                      value: BackIndia.Yes,
                                      groupValue: _backIndia,
                                      onChanged: (BackIndia? value) {
                                        setState(() {
                                          _backIndia = value;
                                        });
                                      }),
                                  title: Text(
                                    "Yes",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: ListTile(
                                  leading: Radio(
                                      value: BackIndia.No,
                                      groupValue: _backIndia,
                                      onChanged: (BackIndia? value) {
                                        setState(() {
                                          _backIndia = value;
                                        });
                                      }),
                                  title: Text(
                                    "No",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          //--------------
                          Align(
                            alignment: Alignment.centerRight,
                            child: OutlineGradientButton(
                              child: Text('Submit',
                                  style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400)),
                              onTap: () {
                                // widget.pageController.nextPage(
                                //     duration: Duration(milliseconds: 400),
                                //     curve: Curves.ease);
                                Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => AppBarBottom(value: 0,),
                                    ),
                                );
                              },
                              gradient: LinearGradient(colors: [
                                Color(0xffFFE2CD),
                                Color(0xffFEC2E7),
                                Color(0xffC9E7FF),
                                Color(0xff86FEF4)
                              ]),
                              strokeWidth: 2,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 12),
                              radius: Radius.circular(8),
                            ),
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
    );
  }
}
